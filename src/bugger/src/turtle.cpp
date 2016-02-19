#include "ros/ros.h"
#include "std_msgs/String.h"
#include <tr1/tuple>
#include <sstream>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <kobuki_msgs/MotorPower.h>

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


ros::Publisher motorPublisher;
ros::Publisher velocityPublisher;
geometry_msgs::Twist cmd;
kobuki_msgs::MotorPower Msg_motor;

const float MOVEMENTSPEED = 0.05;
const float TURNSPEED  = 0.15;
const float SAFEBOUND = 1.5;
const float BUFFERSPACE = 1;
const float CORNERBUFFER = 0.75;
const float PAUSETIME = 0.5;

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

int main(int argc, char **argv){
  ros::init(argc, argv, "waller");
  ros::NodeHandle n;
	motorPublisher = n.advertise<kobuki_msgs::MotorPower>("/mobile_base/commands/motor_power", 1);
  velocityPublisher = n.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity", 1);
  Msg_motor.state = 1;
  motorPublisher.publish(Msg_motor);

  // State initialization
  state = MLINE;
  sideWithWall = UNDEFINED;
  wallDistBuffer = 9999;

  // All systems ready. BEGIN.
  ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan", 1, processLaser);
  ros::spin();
}



// Return <dist, side>
std::tr1::tuple<float, int> getNearestPointAndDirection(){
  float smallest = 9999; int side = UNDEFINED;
  if(simplifiedScan[0] < smallest && simplifiedScan[0] != 0){simplifiedScan[0];}
  if(simplifiedScan[1] < smallest && simplifiedScan[1] != 0){smallest = simplifiedScan[1];side = MIDDLE;}
  if(simplifiedScan[2] < smallest && simplifiedScan[2] != 0){smallest = simplifiedScan[2];side = RIGHT;}
  return std::tr1::make_tuple(smallest, side);
}

float getClosestPoint(int start, int end){
  float smallest = 9999;
  for(int i = start; i < end; i++){
    if(scanInput[i] == scanInput[i] && smallest > scanInput[i]){
      smallest = scanInput[i];
    }
  }
  return smallest;
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

void pathPlanner(){
  switch(state){
    case MLINE:
      mLineStateManage();
      break;

    case CORNER:
      cornerStateManage();
      break;

    case WALL:
    default:
      wallStateManage();
      break;
  }
  wallDistBuffer = simplifiedScan[sideWithWall];
}

void mLineStateManage()
{
  std::tr1::tuple<float, int> point = getNearestPointAndDirection();
  float smallest = std::tr1::get<0>(point);
  int side = std::tr1::get<1>(point);
  if(smallest > SAFEBOUND || smallest == 0) {
    forward(MOVEMENTSPEED);
    //the proper function will be inserted here for the next part
  }
  else if(smallest > BUFFERSPACE) {
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
    forward(-1 * MOVEMENTSPEED);
  }
}

void wallStateManage(){
  if(simplifiedScan[MIDDLE] < BUFFERSPACE){
    turnAway(TURNSPEED * 2);
  }
  else {
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
      ros::Duration(PAUSETIME).sleep();
      forward(MOVEMENTSPEED/2);
    }
    else{
      forward(MOVEMENTSPEED);
    }
  }
}

void cornerStateManage(){
  if(cornerState == MOVE){
    float boost_into_doorway_speed = 1.10;
    turnAway(TURNSPEED * 2);
    ros::Duration(PAUSETIME).sleep();
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
void smoothen(){
  const int rightIndexStop = 0;  // Which indices determine the vision for left, right and center parts of vision
  const int rightIndexEnd = 150;
  const int leftIndexStart = 450;
  const int leftIndexEnd = 610;
  simplifiedScan[0] = getClosestPoint(leftIndexStart, leftIndexEnd);
  simplifiedScan[1] = getClosestPoint(rightIndexEnd, leftIndexStart);
  simplifiedScan[2] = getClosestPoint(rightIndexStop, rightIndexEnd);
}
void turnAway(float rad){
  int turnModifier = 1;
  if(sideWithWall == LEFT)
  {
    turnModifier = -1;
  }
  turn(turnModifier * rad);
}
void forward(float dist){
  cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = 0;cmd.linear.x = dist;
  velocityPublisher.publish(cmd);
}
void turn(float rad)
{
  cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
  cmd.angular.z = rad;
  velocityPublisher.publish(cmd);
}
