#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <kobuki_msgs/MotorPower.h>
#include <cmath>

// Global vars
float ranges[1000];
typedef enum direction { left, center, right };
char* directionString[] = {"left", "center", "right"};
bool spatialCompass[8]; //gives the robot a minimum amount of spatial awareness
int rayThatHit; //the ray number that actually crosses the threshold
float closestPoint;
int scanRep;
const int maxScanRep = 5;
float minLength;
int running;
const double PI = 3.1416;
ros::Publisher motorPublisher;
ros::Publisher velocityPublisher;

geometry_msgs::Twist cmd;
kobuki_msgs::MotorPower msgMotor;

// Method declarations
void forward(float dist);
void turn(float rad);
void processLaserScan(const sensor_msgs::LaserScan::ConstPtr& scan);
void planPath();
direction getObstacleDirection(int pointNo);
// Code
int main(int argc, char **argv)
{
  //initialize the node and name it
  ros::init(argc, argv, "bug");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.

  */
  ros::NodeHandle n;
	motorPublisher = n.advertise<kobuki_msgs::MotorPower>("/mobile_base/commands/motor_power", 1);
  velocityPublisher = n.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity", 1);
  msgMotor.state = 1;
  motorPublisher.publish(msgMotor); //enable engine!
	//Chat Conversation End
  //forward(2.0);
  ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan",1000,processLaserScan);
  ros::spin();
}

void forward(float dist)
{
  cmd.linear.x = dist;
  cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = 0;
  velocityPublisher.publish(cmd);
}

void turn(float rad)
{
  cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
  cmd.angular.z = rad;
  velocityPublisher.publish(cmd);
}

// Scan the number of times specified by maxScanRep before moving. This is to prevent magical NaN misreads.
// Then take the smallest non-NaN reading or use NaN if that was all that was read to plan the next move.
void processLaserScan(const sensor_msgs::LaserScan::ConstPtr& scan)
{
  // lenght of array of floats resulting from dicretization of the lazer scan
  int noPoints =  (int)(scan->angle_max - scan->angle_min) / scan->angle_increment;
  // iterate over ranges (the float[]), get the smallest array, because occasional random NaN
  if(scanRep < maxScanRep)
  {
    int onlyNaN = 1;
    for(int i = 0; i < noPoints; i++)
    {
      // copy the scanned array into a local array
      ranges[i] = scan->ranges[i];
      float current = ranges[i];
      // only want the smallest one, if the current point is the smallest, store it in minLength
      if(minLength > current && current == current){
        minLength = current;
        rayThatHit = i;
      }
      // If only NaN, accept it.
      if(current == current){
        onlyNaN = 0;
      }
      //printf("ranges %f\n", ranges[i]);
    }
    if(onlyNaN == 1)
    {
      printf("ONLY NANN\n");
      minLength = ranges[0];
    }

    scanRep++;
    printf("Scan %d: {length :%f, obstacle is to the: %s}\n", scanRep, minLength, directionString[getObstacleDirection(rayThatHit)]);
    printf("Number of points %d\n", noPoints );
  }
  else
  {
    printf("\n");
    planPath();
    minLength = 9999;
    scanRep = 0;
  }
}

float getBeamAngle(int beamNumber, float angleStart, float angleIncrement ){
  return beamNumber*angleIncrement+angleStart;
}
direction getObstacleDirection(int pointNo){
  printf("%d\n", pointNo);
  if (pointNo >=295 && pointNo <315){
    return center;
  }
  else if (pointNo >=315){
    return left;
  }
  else{
    return right;
  }
}

void planPath()
{
  printf("%f\n", minLength);
  if(0.75 < minLength)
    forward(0.5);
  else
    turn(0.5);
}
