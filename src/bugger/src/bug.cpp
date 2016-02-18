#include "ros/ros.h"
#include "std_msgs/String.h"
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
double turning = false; //delete this later
enum PlanningPhase { SLINE, WALL };
float closestPoint;//temp value
// ===================================function declarations =======================================
void getPos(const gazebo_msgs::ModelStates& modelStates);
void forward(float dist);
double* quaternionToEuler(double x, double y, double z, double w);
double getAbsoluteTargetAngle (double orgX, double orgY, double goalX, double goalY);
bool isOnMLine( float orgX, float orgY);
void faceTarget(double goalAngle, double orgAngle);
void goToGoal(float destX, float destY, float orgX, float orgY);
void pathPlanner(float destX, float destY, float orgX, float orgY, double goalAngle, double orgAngle);
double toRad (double x);
void wallRun();
void turn (float rad);
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

  // ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan",1000,processLaserScan);
  // const sensor_msgs::LaserScan::ConstPtr& scan;
  motorPublisher.publish(msgMotor); //enable engine!
  ros::spin();
}
void getPos(const gazebo_msgs::ModelStates& modelStates){
  //get bot coords and orientation
  float posX = modelStates.pose[2].position.x;float posY = modelStates.pose[2].position.y;float posZ = modelStates.pose[2].position.z;
  double quatX = modelStates.pose[2].orientation.x;double quatY = modelStates.pose[2].orientation.y;double quatZ = modelStates.pose[2].orientation.z;double quatW = modelStates.pose[2].orientation.w;
  double absAngle = getAbsoluteTargetAngle(posX, posY, goalX, goalY);
  double* eulerized = quaternionToEuler(quatX, quatY, quatZ, quatW);//get angle of self relative to world
  //save the starting point
  if (!haveStart){
    startX = posX; startY = posY; haveStart=true;
  }
  pathPlanner(goalX, goalY, posX, posY, absAngle, toRad(eulerized[2]));
  // printf("Position: %f, %f Start: %f, %f Goal: %f, %f\n", posX, posY, startX, startY, goalX, goalY);
  // printf("Goal is at %f degrees and self is oriented at %f degrees\n", absAngle, toRad(eulerized[2]));
  // printf("Position: %f, %f, %f \n Orientation: %f, %f, %f, %f\n Euler: %f, %f, %f\n",posX, posY, posZ,quatX, quatY, quatZ, quatW, eulerized[0], eulerized[1], eulerized[2]);
}





void faceTarget(double goalAngle, double orgAngle){
  double angleToTurn = goalAngle-orgAngle;
  int slice =1;
  // while(angleToTurn > 0.1){
    cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
    cmd.angular.z = (angleToTurn/slice);
    // printf("%f\n", goalAngle-orgAngle);
    velocityPublisher.publish(cmd);
    // angleToTurn-=(angleToTurn/slice);
  // }
}



void pathPlanner(float destX, float destY, float orgX, float orgY,double goalAngle, double orgAngle){
  if (isOnMLine(orgX, orgY)){
    printf("On M line\n");
    if (abs(goalAngle-orgAngle)<0.01){
      faceTarget(goalAngle, orgAngle);
      goToGoal(destX, destY, orgX, orgY);
      printf("going\n" );
    }
    else {
      // turn(0.5);
      printf("looking\n" );
      faceTarget(goalAngle, orgAngle);
    }
    // faceTarget(goalAngle, orgAngle);
    // temp check, change this
  //   if (!turning){
    // goToGoal(destX, destY, orgX, orgY);
  // }
  //    (closestPoint<=0.5) ? wallRun() :goToGoal(destX, destY, orgX, orgY);
  }
  // else{
    // wallRun();
    // forward(0.5);
  // }
}

void wallRun(){//TODO
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
void turn(float rad)
{
  cmd.linear.x = 0;cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;
  cmd.angular.z = rad;
  velocityPublisher.publish(cmd);
}
double toRad (double x){
  return 2*PI * (x / 360);
}
