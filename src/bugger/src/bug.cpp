#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>
#include <kobuki_msgs/MotorPower.h>
#include <gazebo_msgs/ModelStates.h>
#include <geometry_msgs/Pose.h>
// #include <cmath>
#include <math.h>
// Global vars
const double PI = 3.1416;
double goalX = 0;
double goalY = 0;
ros::Publisher motorPublisher;
ros::Publisher velocityPublisher;
ros::Publisher positionPublisher;

ros::Publisher posePublisher;

geometry_msgs::Twist cmd;
geometry_msgs::Pose robotPose;
gazebo_msgs::ModelStates modeller;
kobuki_msgs::MotorPower msgMotor;


void getPos(const gazebo_msgs::ModelStates& modelStates);
void forward(float dist);

int main(int argc, char **argv)
{
  //initialize the node and name it
  ros::init(argc, argv, "bugAlg");

  ros::NodeHandle n;
  n.getParam("goal_x", goalX);
  n.getParam("goal_y", goalY);
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
  // ROS_INFO("Pos x hand hue", modelStates.pose[0].position.x);
  float posX = modelStates.pose[2].position.x;
  float posY = modelStates.pose[2].position.y;
  float posZ = modelStates.pose[2].position.z;

  double quatX = modelStates.pose[2].orientation.x;
  double quatY = modelStates.pose[2].orientation.y;
  double quatZ = modelStates.pose[2].orientation.z;
  double quatW = modelStates.pose[2].orientation.w;

  printf("Position: %f, %f, %f and Orientation: %f, %f, %f, %f\n", posX, posY, posZ);

  forward(0.5);
}
void forward(float dist)
{
  cmd.linear.x = dist;
  cmd.linear.y = 0;cmd.linear.z = 0;cmd.angular.x = 0;cmd.angular.y = 0;cmd.angular.z = 0;
  velocityPublisher.publish(cmd);
}

bool isonMLine(float destX, float destY, float orgX, float orgY){
  if (orgX >= (destX-0.1) && orgX <= (destX+0.1) && orgY >= (destY-0.1) && orgY <= (destY+0.1) ){
    return true;
  }
  else{
    return false;
  }
}

void quaternionToEuler(double x, double y, double z, double w){
    double sqw = w*w;
    double sqx = x*x;
    double sqy = y*y;
    double sqz = z*z;
    double eulerZ;
    double eulerX;
    double eulerY;

    eulerZ = (atan2(2.0 * (x*y + z*w),(sqx - sqy - sqz + sqw)) * (180.0f/PI));
    eulerX = (atan2(2.0 * (y*z + x*w),(-sqx - sqy + sqz + sqw)) * (180.0f/PI));
    eulerY = (asin(-2.0 * (x*z - y*w)) * (180.0f/PI));
}
// void goToTarget(float destX, float destY){
//
//   cmd.linear.x
// }
