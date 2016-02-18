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
// #include <cmath>
#include <math.h>
#include <time.h>
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
double goalX;
double goalY;
bool haveStart = false;
double startX;
double startY;
double posX;
double posY;
double absAngle;
double* eulerized;
double turning = false; //delete this later
enum PlanningPhase { MLINE, WALL, CORNER };
char* phaseString[] = { "MLINE", "WALL", "CORNER" };
enum CornerSubPhase { MOVE, TURN, ADJUST };
char* CornerString[] = {"MOVE", "TURN", "ADJUST"};
enum Direction { LEFT, MIDDLE, RIGHT, UNDEFINED };
char* DirectionString[] = {"LEFT", "MIDDLE", "RIGHT", "UNDEFINED" };

int state;         // What planning phase the robot is in
int cornerState;   // How far we are in our process of turning corners
int numPoints;           // The number of points in the raw scan
float scanInput[700];     // The raw readings by the scanner
float simplifiedScan[3];   // Left, Right, Middle averages
int scanIteration;       // Current repetition of the scan
int sideWithWall;       // Tells use which side the wall we're following is on/should be
float wallDistBuffer;

const float MOVEMENT_SPEED = 0.05;
const float TURN_RATE  = 0.15;

const float FOLLOW_DISTANCE = 1.5;
const float BUFFERSPACE = 1;


const float CORNER_DROPOFF_DELTA = 1; // Used to detect how far of a difference in readings consists of a corner
const float TURN_WAIT_TIME_SECONDS = 0.5;
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
void wallPhase();
void mLinePhase();
void cornerPhase();
void turn (float rad);
void forward(float dist);
void turnAway(float dist);
std::tr1::tuple<float, int> getNearestPointAndDirection();
void smoothen();

// ================================================================================================
int main(int argc, char **argv)
{
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

  // ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan",1000,processLaserScan);
  // const sensor_msgs::LaserScan::ConstPtr& scan;
  motorPublisher.publish(msgMotor); //enable engine!
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
  }
  // planPath(goalX, goalY, posX, posY, absAngle, toRad(eulerized[2]));
  // printf("Position: %f, %f Start: %f, %f Goal: %f, %f\n", posX, posY, startX, startY, goalX, goalY);
  // printf("Goal is at %f degrees and self is oriented at %f degrees\n", absAngle, toRad(eulerized[2]));
  // printf("Position: %f, %f, %f \n Orientation: %f, %f, %f, %f\n Euler: %f, %f, %f\n",posX, posY, posZ,quatX, quatY, quatZ, quatW, eulerized[0], eulerized[1], eulerized[2]);
}


//###############################################################################

void pathPlanner()
{
  // TODO: implement for phase 2 of bug algo under WALL case:
  // IF robot is on MLINE
    // IF robot is facing the goal AND there is a wall in front
      // Follow the wall -- potential bug would be that this gets stuck within tolerances
    // ELSE
      // Change phase to MLINE phase
        // The SLine phase will then turn towards the goal and either
          // Follow the new wall right in front of it
          // Move towards the goal
  // ELSE
    // Follow Wall
  switch(state)
  {
    case MLINE:
      mLinePhase();
      break;

    case CORNER:
      cornerPhase();
      break;

    case WALL:
    default:
      wallPhase();
      break;
  }
  wallDistBuffer = simplifiedScan[sideWithWall];
}
  // planPath(goalX, goalY, posX, posY, absAngle, toRad(eulerized[2]));
// void planPath(float destX, float destY, float orgX, float orgY,double goalAngle, double orgAngle){
//   if (isOnMLine(orgX, orgY)){
//     printf("On M line\n");
//     if (abs(goalAngle-orgAngle)<0.01){
//       faceTarget(goalAngle, orgAngle);
//       goToGoal(destX, destY, orgX, orgY);
//       printf("going\n" );
//     }
//     else {
//       // turn(0.5);
//       printf("looking\n" );
//       faceTarget(goalAngle, orgAngle);
//     }
//     // faceTarget(goalAngle, orgAngle);
//     // temp check, change this
//   //   if (!turning){
//     // goToGoal(destX, destY, orgX, orgY);
//   // }
//   //    (closestPoint<=0.5) ? wallRun() :goToGoal(destX, destY, orgX, orgY);
//   }
//   // else{
//     // wallRun();
//     // forward(0.5);
//   // }
// }

//#######################################################################################
void mLinePhase(){
  std::tr1::tuple<float, int> point = getNearestPointAndDirection();
  float smallest = std::tr1::get<0>(point);
  int side = std::tr1::get<1>(point);
  if(smallest > FOLLOW_DISTANCE || smallest == 0) // safe and not following wall
  {
    faceTarget(absAngle, toRad(eulerized[2]));
    if (isOnMLine(posX, posY)){
      printf("On M line\n");
      if (abs(absAngle-toRad(eulerized[2]))<0.01){
        goToGoal(goalX, goalY, startX, startY);
        printf("going\n" );
      }
      else {
        // turn(0.5);
        printf("looking\n" );
        faceTarget(absAngle, toRad(eulerized[2]));
      }
    }
    else{
      printf("Not on M line\n" );
      faceTarget(absAngle, toRad(eulerized[2]));
      forward(1);
    }
  }
  else if(smallest > BUFFERSPACE) // safe < smallest < follow, start following that wall
  {
    state = WALL;

    // Pick a side to put the wall and change the phase
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
    forward(-1 * MOVEMENT_SPEED);
  }
}
void cornerPhase(){
  if(cornerState == MOVE){
    float boost_into_doorway_speed = 1.10;
    turnAway(TURN_RATE * 2);
    ros::Duration(TURN_WAIT_TIME_SECONDS).sleep();
    forward(boost_into_doorway_speed); // Get a good ways into the doorway
    cornerState = TURN;
  }
  else if(cornerState == TURN){
    // Turn towards the wall until we can see the wall again and then move to adjust phase
    if(simplifiedScan[sideWithWall] < FOLLOW_DISTANCE){
      cornerState = ADJUST;
    }
    else{
      turnAway(-1 * TURN_RATE);
    }
  }
  else {
    state = WALL;
    cornerState = 0;
  }
}
void wallPhase()
{
  // Turn away if there is a wall in front
  if(simplifiedScan[MIDDLE] < BUFFERSPACE)
  {
    turnAway(TURN_RATE * 2);
  }
  else // No wall in front of us
  {
    float wallDist = simplifiedScan[sideWithWall];

    if( abs(wallDistBuffer - wallDist) > CORNER_DROPOFF_DELTA) // Dropoff was too big, we just saw a corner (or similar)
    {
      state = CORNER;
      cornerState = MOVE;
    }
    // Turn away if the wall we're following is too close
    else if(wallDist < BUFFERSPACE)
    {
      turnAway(TURN_RATE);
    }
    else if(wallDist > FOLLOW_DISTANCE) // Wall too far but not corner, turn towards it
    {
      turnAway(-1*TURN_RATE);
      ros::Duration(TURN_WAIT_TIME_SECONDS).sleep();
      forward(MOVEMENT_SPEED/2);
    }
    // Distance is just right
    else
    {
      forward(MOVEMENT_SPEED);
    }
  }
}
void faceTarget(double goalAngle, double orgAngle){
  double angleToTurn = goalAngle-orgAngle;
  int slice =1;
    cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
    cmd.angular.z = (angleToTurn/slice);
    printf("%f\n", goalAngle-orgAngle);
    velocityPublisher.publish(cmd);
    // angleToTurn-=(angleToTurn/slice);
}
void processLaser(const sensor_msgs::LaserScan::ConstPtr& scan){
  const int scanRep = 5;
  numPoints =  (int)(scan->angle_max - scan->angle_min) / scan->angle_increment;

  // Copy everything from the first scan into the local scan array
  // After that only copy non non-NaN values.
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
  else // 5 scans complete
  {
    // Move
    smoothen();
    pathPlanner();

    // Reset the scan counter
    scanIteration = 0;
  }
}
// Return <dist, side>
std::tr1::tuple<float, int> getNearestPointAndDirection(){
  float smallest = 9999;
  int side = UNDEFINED;

  if(simplifiedScan[0] < smallest && simplifiedScan[0] != 0){
    simplifiedScan[0];
  }

  if(simplifiedScan[1] < smallest && simplifiedScan[1] != 0){
    smallest = simplifiedScan[1];
    side = MIDDLE;
  }
  if(simplifiedScan[2] < smallest && simplifiedScan[2] != 0){
    smallest = simplifiedScan[2];
    side = RIGHT;
  }
  return std::tr1::make_tuple(smallest, side);
}

float getClosestPoint(int start, int end){
  float min = 9999;
  for(int i = start; i < end; i++){
    if(scanInput[i] == scanInput[i] && min > scanInput[i]){
      min = scanInput[i];
    }
  }
  return min;
}
void smoothen(){
  const int rightIndexStop = 0;  // Which indices determine the vision for left, right and center parts of vision
  const int rightIndexEnd = 150;
  const int leftIndexStart = 450;
  const int leftIndexEnd = 610;
  simplifiedScan[0] = getClosestPoint(leftIndexStart, leftIndexEnd);
  simplifiedScan[1] = getClosestPoint(rightIndexEnd, leftIndexStart);
  simplifiedScan[2] = getClosestPoint(rightIndexStop, rightIndexEnd);
}
//go towards the goal. It's not relative to the bot but since it's only called when you're on the M line, it doesn't matter
void goToGoal(float destX, float destY, float orgX, float orgY){
  cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = 0;
  cmd.linear.y = (destY-orgY)/10;
  cmd.linear.x = (destX-orgX)/10;
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
  if(sideWithWall == LEFT)
  {
    turnModifier = -1;
  }
  turn(turnModifier * rad);
}
void turn(float rad)
{
  cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
  cmd.angular.z = rad;
  velocityPublisher.publish(cmd);
}
double toRad (double x){
  return 2*PI * (x / 360);
}
