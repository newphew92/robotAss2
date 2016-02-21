#include "ros/ros.h"
#include "std_msgs/String.h"
#include <tr1/tuple>
#include <ros/console.h>
#include <sstream>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <kobuki_msgs/MotorPower.h>
#include <gazebo_msgs/ModelStates.h>
#include <geometry_msgs/Pose.h>
#include <math.h>
// ==================================Global vars===================================================
const double PI = 3.1416;
ros::Publisher motorPublisher;
ros::Publisher velocityPublisher;
ros::Publisher positionPublisher;
ros::Publisher posePublisher;
geometry_msgs::Twist cmd;
geometry_msgs::Pose robotPose;
gazebo_msgs::ModelStates modeller;
kobuki_msgs::MotorPower msgMotor;
double goalX;double goalY;
bool haveStart = false;
double startX;double startY;
double posX;double posY;
double absAngle;
double* eulerized;
enum generalStates { MLINE, WALL, CORNER };
char* phaseString[] = { "MLINE", "WALL", "CORNER" };
enum turnStates { MOVE, TURN, ADJUST };
char* CornerString[] = {"MOVE", "TURN", "ADJUST"};
enum directions { LEFT, MIDDLE, RIGHT, UNDEFINED };
char* directionString[] = {"LEFT", "MIDDLE", "RIGHT", "UNDEFINED" };

int state;
int cornerState;
int numPoints;
float scanInput[700];
float simplifiedScan[3];
int scanIteration;
int sideWithWall;
float wallDistBuffer;
const float MOVESPEED = 0.05;
const float TURNSPEED  = 0.15;
const float SAFEBOUND = 1.5;
const float BUFFERSPACE = 0.75;
const float CORNERBUFFER = 0.75;
const float TURNBUFFER = 0.5;
// ===================================function declarations =======================================
void getPos(const gazebo_msgs::ModelStates& modelStates);
void forward(float dist);
double* quaternionToEuler(double x, double y, double z, double w);
double getAbsoluteTargetAngle (double orgX, double orgY, double goalX, double goalY);
bool isOnMLine( float orgX, float orgY);
void faceTarget(double goalAngle, double orgAngle);
void goToGoal(float destX, float destY, float orgX, float orgY);
void planPath(float destX, float destY, float orgX, float orgY, double goalAngle, double orgAngle);
double toRad (double x);
void wallRun();
void turn (float rad);
void processLaser(const sensor_msgs::LaserScan::ConstPtr& scan);
void pathPlanner();
void turn (float rad);
void forward(float dist);
void turnAway(float dist);
void wallStateManage();
void mLineStateManage();
void cornerStateManage();
std::tr1::tuple<float, int> getNearestPointAndDirection();
void smoothen();
double lastX; double lastY;//hue
// ================================================================================================
int main(int argc, char **argv){
  //initialize the node and name it
  ros::init(argc, argv, "bugAlg");
  ros::NodeHandle n;
  n.getParam("bugAlg/goal_x", goalX);
  n.getParam("bugAlg/goal_y", goalY);

	motorPublisher = n.advertise<kobuki_msgs::MotorPower>("/mobile_base/commands/motor_power", 1);
  velocityPublisher = n.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity", 1);
  msgMotor.state = 1;

  ros::Subscriber posSub = n.subscribe("/gazebo/model_states", 1,getPos);

  // State initialization
  state = MLINE;
  sideWithWall = UNDEFINED;
  wallDistBuffer = 9999;

  motorPublisher.publish(msgMotor);
  ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan", 1, processLaser);
  ros::spin();
}
void getPos(const gazebo_msgs::ModelStates& modelStates){
  //get bot coords and orientation
  posX = modelStates.pose[2].position.x; posY = modelStates.pose[2].position.y;
  double quatX = modelStates.pose[2].orientation.x;double quatY = modelStates.pose[2].orientation.y; double quatZ = modelStates.pose[2].orientation.z;double quatW = modelStates.pose[2].orientation.w;
  absAngle = getAbsoluteTargetAngle(posX, posY, goalX, goalY);
  eulerized = quaternionToEuler(quatX, quatY, quatZ, quatW);//get angle of self relative to world
  //save the starting point
  if (!haveStart){
    startX = posX; startY = posY; haveStart=true;
    faceTarget(absAngle, toRad(eulerized[2]));
  }
  // planPath(goalX, goalY, posX, posY, absAngle, toRad(eulerized[2]));
  // printf("Position: %f, %f Start: %f, %f Goal: %f, %f\n", posX, posY, startX, startY, goalX, goalY);
  // printf("Goal is at %f degrees and self is oriented at %f degrees\n", absAngle, toRad(eulerized[2]));
  // printf("Position: %f, %f, %f \n Orientation: %f, %f, %f, %f\n Euler: %f, %f, %f\n",posX, posY, posZ,quatX, quatY, quatZ, quatW, eulerized[0], eulerized[1], eulerized[2]);
}


void pathPlanner(){
  switch(state){
    case MLINE:
    printf("MLINE\n");
      mLineStateManage();
      break;

    case CORNER:
    printf("CORNER\n");
      cornerStateManage();
      break;

    case WALL:
    default:
    printf("WALL\n");
      wallStateManage();
      break;
  }
  wallDistBuffer = simplifiedScan[sideWithWall];
}

void mLineStateManage(){
  std::tr1::tuple<float, int> point = getNearestPointAndDirection();
  float smallest = std::tr1::get<0>(point);
  int side = std::tr1::get<1>(point);

  if(smallest > SAFEBOUND || smallest == 0) {
    faceTarget(absAngle, toRad(eulerized[2]));
    ros::Duration(1).sleep();
    if (isOnMLine(posX, posY)){

      printf("On M line\n");
      if (abs(absAngle-toRad(eulerized[2]))<0.01){
        forward(1);//hue turns out gotogoal is totally useless
        // goToGoal(goalX, goalY, startX, startY);
        printf("going\n" );
      }
      else {
        printf("looking\n" );
        faceTarget(absAngle, toRad(eulerized[2]));
        ros::Duration(1).sleep();
      }
    }
    else{
      printf("Not on M line\n" );
      faceTarget(absAngle, toRad(eulerized[2]));
      ros::Duration(1).sleep();
      forward(1);
    }
  }
  else if(smallest > BUFFERSPACE) {
    printf("switch to wall");
    lastX = posX; lastY = posY;//store into lastX and lastY until we leave hue
    state = WALL;
    if(side == MIDDLE) {
      if(simplifiedScan[LEFT] < simplifiedScan[RIGHT]){
        sideWithWall = LEFT;
      }
      else {
        sideWithWall = RIGHT;
      }
    }
    else if(side == RIGHT){
      sideWithWall = RIGHT;
    }
    else{
      sideWithWall = LEFT;
    }
    wallDistBuffer = simplifiedScan[sideWithWall];
  }
  else {
    forward(-1 * MOVESPEED);
  }
}
void cornerStateManage(){
    forward(0.4);
    ros::Duration(1).sleep();
  if(cornerState == MOVE){
    float boost_into_doorway_speed = 0.5;
    turnAway(TURNSPEED * 2);
    ros::Duration(TURNBUFFER).sleep();
    forward(boost_into_doorway_speed);
    cornerState = TURN;
  }
  else if(cornerState == TURN){
    if(simplifiedScan[sideWithWall] < SAFEBOUND){
      cornerState = ADJUST;
    }
    else{
      turnAway(-1 * TURNSPEED);
    }
  }
  else {
    state = WALL;
    cornerState = 0;
  }
}


void wallStateManage(){
  if (isOnMLine(posX, posY) && !(abs(lastX-posX)< 0.05 && abs(lastY-posY)<0.05) //on line and not the same position as the last time was on mline
  && !(abs(posX-startX)< 0.05 && abs(posY-startY)<0.05)  && //not at start
  (sqrt((posX-goalX)*(posX-goalX)+(posY-goalY)*(posY-goalY)) < sqrt((lastX-goalX)*(lastX-goalX)+(lastY-goalY)*(lastY-goalY)))){ //if we are closer to goal than last time we were on line
    printf("get MLINE instead");
    state = MLINE; //hue
    return;
  }
  if(simplifiedScan[MIDDLE] < BUFFERSPACE){
    turnAway(TURNSPEED * 2);
  }
  else{
    float wallDist = simplifiedScan[sideWithWall];

    if( abs(wallDistBuffer - wallDist) > CORNERBUFFER){
      state = CORNER;
      cornerState = MOVE;
    }
    else if(wallDist < BUFFERSPACE){
      turnAway(TURNSPEED);
    }
    else if(wallDist > SAFEBOUND) {
      turnAway(-1*TURNSPEED);
      ros::Duration(TURNBUFFER).sleep();
      forward(MOVESPEED/2);
    }
    else{
      forward(MOVESPEED);
    }
  }
}
void faceTarget(double goalAngle, double orgAngle){
  double angleToTurn = goalAngle-orgAngle;
  int slice =1;
    cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
    cmd.angular.z = (angleToTurn/slice);
    printf("Angle to turn %f\n", goalAngle-orgAngle);
    velocityPublisher.publish(cmd);
}
void processLaser(const sensor_msgs::LaserScan::ConstPtr& scan){
  int scanRep = 6;
  numPoints =  (int)(scan->angle_max - scan->angle_min) / scan->angle_increment;

  if(scanIteration < scanRep){
    for(int i = 0; i < numPoints; i++){
      if(scanIteration == 0){
        scanInput[i] = scan->ranges[i];
      }
      else if(scanInput[i] == scanInput[i]){
        scanInput[i] = scan->ranges[i];
      }
    }
    scanIteration++;
  }
  else  {
    smoothen();
    pathPlanner();
    scanIteration = 0;
  }
}
// Return <dist, side>
std::tr1::tuple<float, int> getNearestPointAndDirection(){
  float smallest = 99999;int side = UNDEFINED;
  if(simplifiedScan[0] < smallest && simplifiedScan[0] != 0){simplifiedScan[0];}
  if(simplifiedScan[1] < smallest && simplifiedScan[1] != 0){smallest = simplifiedScan[1];side = MIDDLE;}
  if(simplifiedScan[2] < smallest && simplifiedScan[2] != 0){smallest = simplifiedScan[2];side = RIGHT;}
  return std::tr1::make_tuple(smallest, side);
}

float getClosestPoint(int start, int end){
  float smallest = 99999;
  for(int i = start; i < end; i++){
    if(scanInput[i] == scanInput[i] && smallest > scanInput[i]){
      smallest = scanInput[i];
    }
  }
  return smallest;
}
void smoothen(){
  int rightIndexStop = 0;
  int rightIndexEnd = 150;
  int leftIndexStart = 450;
  int leftIndexEnd = 610;
  simplifiedScan[0] = getClosestPoint(leftIndexStart, leftIndexEnd);
  simplifiedScan[1] = getClosestPoint(rightIndexEnd, leftIndexStart);
  simplifiedScan[2] = getClosestPoint(rightIndexStop, rightIndexEnd);
}
//go towards the goal. It's not relative to the bot but since it's only called when you're on the M line, it doesn't matter
void goToGoal(float destX, float destY, float orgX, float orgY){
  cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = 0;
  cmd.linear.y = abs((destY-posY)/sqrt((destY-posY)*(destY-posY)+(destX-posX)*(destX-posX))*1.2);
  cmd.linear.x = abs((destX-posX)/sqrt((destY-posY)*(destY-posY)+(destX-posX)*(destX-posX))*1.2);//hue
  printf("Velocity is x:%f y:%f \n", cmd.linear.x ,cmd.linear.y );
  velocityPublisher.publish(cmd);
}
// get target's angle from turtlebot based on world axis
double getAbsoluteTargetAngle (double orgX, double orgY, double destX, double destY){
  return (atan2(destY-orgY, destX-orgX));
}
//check if on M line
bool isOnMLine(float orgX, float orgY){
  double a = (goalY-startY)/(goalX-startX);
  double b = goalY - a*goalX;
  return ((orgY >=  (a*orgX-1+b)&& orgY <= (a*orgX+1+b)) ? true: false);
}
double* quaternionToEuler(double x, double y, double z, double w){
    double sqw = w*w;
    double sqx = x*x;
    double sqy = y*y;
    double sqz = z*z;
    double* pointer;
    pointer = new double [3];
    pointer[2] = (atan2(2.0 * (x*y + z*w),(sqx - sqy - sqz + sqw)) * (180.0f/PI));
    pointer[0] = (atan2(2.0 * (y*z + x*w),(-sqx - sqy + sqz + sqw)) * (180.0f/PI));
    pointer[1] = (asin(-2.0 * (x*z - y*w)) * (180.0f/PI));
    return pointer;
}
void forward(float dist){
  cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = 0;cmd.linear.x = dist;
  velocityPublisher.publish(cmd);
}
void turnAway(float rad){
  int turnModifier = 1;
  if(sideWithWall == LEFT){
    turnModifier = -1;
  }
  turn(turnModifier * rad);
}
void turn(float rad){
  cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = rad;
  velocityPublisher.publish(cmd);
}
double toRad (double x){
  return 2*PI * (x / 360);
}
