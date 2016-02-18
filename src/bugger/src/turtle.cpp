#include "ros/ros.h"
#include "std_msgs/String.h"

#include <tr1/tuple>
#include <sstream>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <kobuki_msgs/MotorPower.h>

enum PlanningPhase { MLINE, WALL, CORNER };
char* phaseString[] = { "MLINE", "WALL", "CORNER" }; // TODO: remove once debugging is complete
enum CornerSubPhase { MOVE, TURN, ADJUST };
char* CornerString[] = {"MOVE", "TURN", "ADJUST"};
enum Direction { LEFT, MIDDLE, RIGHT, NONE };
char* DirectionString[] = {"LEFT", "MIDDLE", "RIGHT", "NONE" }; // TODO: remove once debugging is complete


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

const float MOVEMENT_SPEED = 0.05;
const float TURN_RATE  = 0.15;

const float FOLLOW_DISTANCE = 1.5;
const float BUFFERSPACE = 1;


const float CORNER_DROPOFF_DELTA = 0.75; // Used to detect how far of a difference in readings consists of a corner
const float TURN_WAIT_TIME_SECONDS = 0.5;


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

int main(int argc, char **argv)
{
  ros::init(argc, argv, "waller");

  // Ros turn on overhead
  ros::NodeHandle n;
	motorPublisher = n.advertise<kobuki_msgs::MotorPower>("/mobile_base/commands/motor_power", 1);
  velocityPublisher = n.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity", 1);
  Msg_motor.state = 1;
  motorPublisher.publish(Msg_motor);

  // State initialization
  state = MLINE;
  sideWithWall = NONE;
  wallDistBuffer = 9999;

  // All systems ready. BEGIN.
  ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan", 1, processLaser);
  ros::spin();
}



// Return <dist, side>
std::tr1::tuple<float, int> getNearestPointAndDirection()
{
  float smallest = 9999;
  int side = NONE;

  if(simplifiedScan[0] < smallest && simplifiedScan[0] != 0)  {
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

// Finds the closest point in the Raw Scan reading from start (inclusive) to end (exclusive).
// Called by smoothen()
float getClosestPoint(int start, int end)
{
  float min = 9999;
  for(int i = start; i < end; i++)
  {
    if(scanInput[i] == scanInput[i] && min > scanInput[i])
    {
      min = scanInput[i];
    }
  }
  return min;
}

// Calculates the closest points of the left, right and center points
// for smoothed vision (average of the left right and center points)


// Scan the number of times specified by maxScanRep before moving. This is to prevent magical NaN misreads.
// Then take the smallest non-NaN reading or use NaN if that was all that was read to plan the next move.
void processLaser(const sensor_msgs::LaserScan::ConstPtr& scan)
{
  // Length of scan array
  numPoints =  (int)(scan->angle_max - scan->angle_min) / scan->angle_increment;
  const int scanRep = 5;
  // Copy everything from the first scan into the local scan array
  // After that only copy non non-NaN values.
  if(scanIteration < scanRep)
  {
    for(int i = 0; i < numPoints; i++)
    {
      if(scanIteration == 0)
      {
        scanInput[i] = scan->ranges[i];
      }
      else if(scanInput[i] == scanInput[i])
      {
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

// In the wall runner code, this moves forward only until a wall comes within following distance.
// In the full bug algorithm, it will follow the SLine.
// Then it will check for a wall in front.
void mLinePhase()
{
  std::tr1::tuple<float, int> point = getNearestPointAndDirection();
  float smallest = std::tr1::get<0>(point);
  int side = std::tr1::get<1>(point);
  if(smallest > FOLLOW_DISTANCE || smallest == 0) // safe and not following wall
  {
    forward(MOVEMENT_SPEED);
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

// TODO
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
void smoothen()
{
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
