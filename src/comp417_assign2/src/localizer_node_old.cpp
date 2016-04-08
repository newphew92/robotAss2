#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/transform_listener.h>
#include <algorithm>
#include <cmath>
#include <stdlib.h>
#include "time.h"
// Provided constants
#define METRE_TO_PIXEL_SCALE 50
#define FORWARD_SWIM_SPEED_SCALING 0.1
#define POSITION_GRAPHIC_RADIUS 20.0
#define HEADING_GRAPHIC_LENGTH 50.0
#define SPEED 1
// My constants
#define NUM_PARTICLES 1000
#define RGB_DISTANCE 20

// Class Localizer is a sample stub that you can build upon for your implementation
// (advised but optional: starting from scratch is also fine)
//
class Localizer
{
public:
  struct Particle
  {
    int x; // pixel measurements
    int y;
    double theta;
    double weight;
  };
  std::vector<Particle> particles;
  std::vector<Particle> particles_old;

  ros::NodeHandle nh;
  image_transport::Publisher pub;
  image_transport::Subscriber gt_img_sub;
  image_transport::Subscriber robot_img_sub;

  ros::Subscriber motion_command_sub;
  geometry_msgs::PoseStamped estimated_location;
  int estimatedXPixels;
  int estimatedYPixels;
  bool isKidnapped;
  double decay;
  cv::Mat map_image;
  cv::Mat current_camera_image;
  cv::Mat ground_truth_image;
  cv::Mat localization_result_image;
  cv::Mat localization_line_image; // Used so that we can refresh the particles each frame

std::default_random_engine generator;

  Localizer( int argc, char** argv ){
    //If you want to do the isKidnapped version, set isKidnapped to true
    if (argv[2]=="kidnapped"){
    isKidnapped = true;}
    else if (argv[2]=="kidnapped"){isKidnapped = false;}
    else if (argv[2]==NULL){isKidnapped = false;}
    decay = 300.0;
    image_transport::ImageTransport it(nh);
    pub = it.advertise("/assign2/localization_result_image", 1);
    map_image = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);

    // Initialize images
    localization_result_image = map_image.clone();
    localization_line_image = map_image.clone();
    ground_truth_image = map_image.clone();

    // position
    estimated_location.pose.position.x = 0;
    estimated_location.pose.position.y = 0;

    estimatedXPixels = adjustXMeters(localization_line_image.size().width/2, 0);
    estimatedYPixels = adjustYMeters(localization_line_image.size().height/2, 0);

    // Initialize particles around the origin

    std::normal_distribution<double> distribution(0.0,10.0);
    std::normal_distribution<double> angleDistribution(0.0,0.26); //-15 to +15 degrees
    std::exponential_distribution<double> expDistribution(0.1);
    for(int i = 0; i < NUM_PARTICLES; i++){
      particles.push_back(Particle());
      particles[i].x = estimatedXPixels + std::roundl(distribution(generator));
      particles[i].y = estimatedYPixels + std::roundl(distribution(generator));
      particles[i].theta = angleDistribution(generator);
      particles[i].weight = 1;
    }

    gt_img_sub = it.subscribe("/assign2/ground_truth_image", 1, &Localizer::groundTruthImageCallback, this);
    robot_img_sub = it.subscribe("/aqua/back_down/image_raw", 1, &Localizer::robotImageCallback, this);
    motion_command_sub = nh.subscribe<geometry_msgs::PoseStamped>("/aqua/target_pose", 1, &Localizer::motionCommandCallback, this);

    ROS_INFO("localizer node constructed and subscribed.");
  }

  // mark a point
  void drawPoint(int x, int y){
    double radius = 5.0;
    cv::circle(localization_result_image, cv::Point(x, y), radius, CV_RGB(0,250,0), -1);
  }
  // Returns the x/y pixel coordinate adjusted for the length of the camera according to the provided yaw
  // x_pixels: the x/y location of the camera center, in pixels
  // returns: the x/y location of the center of the robot in pixels
  int adjustXMeters(double x_pixels, double yaw){return x_pixels + std::roundl(METRE_TO_PIXEL_SCALE * cos( yaw ) * -0.32);}
  int adjustYMeters(double y_pixels, double yaw){return y_pixels + std::roundl(METRE_TO_PIXEL_SCALE * sin( -yaw ) * -0.32);}

  bool static compareByWeight(const Particle &a, const Particle &b){return a.weight>b.weight;}

  double comparePixels( const cv::Vec3b A, const cv::Vec3b B )  {
    double ret = pow(A[0]-B[0], 2) + pow(A[1]-B[1], 2) + pow(A[2]-B[2], 2);
    return (1/(sqrt (ret)+1));
  }
  cv::Vec3b getSums(int x, int y) {
    cv::Vec3b sums;
    if (x < 10 || x > 780 || y<10|y>2500){
      sums[0] = 255;
      sums[1] = 255;
      sums[2] = 255;
      return sums;
    }
    cv::Vec3b pixel_4 = map_image.at<cv::Vec3b>(y,x);
    cv::Vec3b pixel_3 = map_image.at<cv::Vec3b>(y-1,x-1);
    cv::Vec3b pixel_2 = map_image.at<cv::Vec3b>(y-1,x);
    cv::Vec3b pixel_1 = map_image.at<cv::Vec3b>(y,x-1);

    sums[0] = pixel_1[0] + pixel_2[0] + pixel_3[0] + pixel_4[0];
    sums[1] = pixel_1[1] + pixel_2[1] + pixel_3[1] + pixel_4[1];
    sums[2] = pixel_1[2] + pixel_2[2] + pixel_3[2] + pixel_4[2];

    return sums;
  }

  void kidnapped(){
    cv::Mat camImage = current_camera_image.clone();

    int rows = camImage.rows;
    int cols = camImage.cols;
    cv::Vec3b centerPixelRobo = camImage.at<cv::Vec3b>(rows/2,cols/2);
    std::normal_distribution<double> angleDistribution(0.0,0.26);
    //new list of particles
    // Find all "close enough" points
    std::vector<Particle> brute (particles);
    int i = 0;
    for(int x = 0; x < map_image.cols; x++)
    {
      for(int y = 0; y < map_image.rows; y++)
      {
        if (i>NUM_PARTICLES){break;}
        cv::Vec3b currentPixelMap = map_image.at<cv::Vec3b>(y,x); // Image matrix -- use y then x
        // if (comparePixels(currentPixelMap, centerPixelRobo)>1){
        if (comparePixels(getSums(x,y),getSums(camImage.cols/2,camImage.rows/2))>1.5){
            // brute.push_back(Particle());
            // brute[i].x = x;
            // brute[i].y = y;
            // brute[i].theta = angleDistribution(generator);
            // brute[i].weight = comparePixels(currentPixelMap, centerPixelRobo);
            particles.push_back(Particle());
            particles[i].x = x;
            particles[i].y = y;
            particles[i].theta = angleDistribution(generator);
            particles[i].weight = comparePixels(currentPixelMap, centerPixelRobo);
            if (isKidnapped){particles[i].weight = comparePixels(getSums(x,y),getSums(camImage.cols/2,camImage.rows/2));}
        }
        i++;
      }
    }
    std::sort(particles.begin(), particles.end(), compareByWeight);
    estimatedXPixels = particles[0].x;
    estimatedYPixels = particles[0].y;

  }

  void robotImageCallback( const sensor_msgs::ImageConstPtr& robot_img )  {current_camera_image = cv_bridge::toCvShare(robot_img, "bgr8")->image;}
  // Called by the motion callback
  // Assigns weights based on the last observed image
  void updateObservation(double guessX, double guessY){
    cv::Mat cam_image = current_camera_image.clone();
    //
    int rows = cam_image.rows;
    int cols = cam_image.cols;
    // ROS_INFO("%d,%d",rows,cols);
    assert(rows >= 0 && rows < 2520 && cols >= 0 && cols <= 800);
    cv::Vec3b centerPixelRobo = cam_image.at<cv::Vec3b>(rows/2,cols/2);
    for(int i = 0; i < NUM_PARTICLES; i++)
    {
      cv::Vec3b currentPixelMap = map_image.at<cv::Vec3b>(particles[i].y, particles[i].x); // Image matrix -- use y then x
      double pixeldiff = comparePixels(currentPixelMap, centerPixelRobo);
      if (isKidnapped){
        pixeldiff = comparePixels(getSums(particles[i].x,particles[i].y), getSums(cols/2,rows/2));
      }
      double posX = 1-1/2*(std::abs(estimatedXPixels - particles[i].x -guessX + 1));
      double posY = 1-1/2*(std::abs(estimatedYPixels - particles[i].y - guessY + 1));

      particles[i].weight = pixeldiff*0.9 +posX + posY;
    }
  }

  void resample(double guessX, double guessY, double range, double pick,double speed){
    // ROS_INFO("Line 223");
    std::normal_distribution<double> distribution(0.0,10.0);
    std::normal_distribution<double> angleDistribution(0.0,0.26); //-15 to +15 degrees
    std::exponential_distribution<double> expDistribution(0.1);
    double kidnapYAdjust = 1; double kidnapXAdjust =1 ;
    std::sort(particles.begin(), particles.end(), compareByWeight);
    if (isKidnapped){kidnapYAdjust = 0.5;kidnapXAdjust = 0.5;}

    std::vector<Particle> testOld (particles);
    int i = 0;
    localization_result_image = localization_line_image.clone();
    for (int i =0;i<NUM_PARTICLES;i++){
      // particles_old[i] = particles [i];
      int index =  std::roundl(expDistribution (generator));
      particles [i] = testOld [index];
      particles[i].weight = 1;
      particles[i].x = testOld [index].x + std::roundl(distribution(generator)) + (SPEED*guessX);
      particles[i].y = testOld [index].y + std::roundl(distribution(generator)) + (SPEED*guessY);
      // double newX = testOld [index].x + std::roundl(distribution(generator)) + (SPEED*guessX);
      // double newY =  testOld [index].y + std::roundl(distribution(generator)) + (SPEED*guessY);
      // if (newX < 0){
      //   particles[i].x = 100;
      //   particles[i].weight = 0;}
      // else if (newX > 800) {
      //   particles[i].x=700;
      //   particles[i].weight = 0;
      // }
      // else{
      //   particles[i].x = newX;
      // }
      // if (newY < 0){
      //   particles[i].x = 100;
      //   particles[i].weight = 0;}
      // else if (newY > 2500) {
      //   particles[i].x=2400;
      //   particles[i].weight=0;
      // }
      // else{
      //   particles[i].y = newY;
      // }
      particles[i].theta = angleDistribution(generator);
      drawPoint(particles[i].x,particles[i].y);
    }
    if (isKidnapped){
      if (decayAdjust(100)<1){
        decay+=5;
      }
      else if (decay>12){
        decay-=1;
      }
    }
  }
  double decayAdjust (int count){
    double inc = particles[0].weight;
    for (size_t i = 0; i < count; i++) {
      inc += particles[i].weight;
    }
    return inc/count;
  }
  void belief(int count){
    int inc = particles[0].x;
    for (size_t i = 1; i < count; i++) {inc +=particles[i].x;}
    estimatedXPixels = inc/(count);
    inc = particles[0].y;
    for (size_t i = 1; i < count; i++) {inc +=particles[i].y;}
    estimatedYPixels = inc/(count);
    double radius = 15.0;
    cv::circle(localization_result_image, cv::Point(estimatedXPixels, estimatedYPixels), radius, CV_RGB(250,0,250), -1);
  }

  // Where the entirety of the particle filter is applied. The following steps are done:
  // 1) Update the observation model
  // 2) Resample the particles based on observations
  // 3) Propagate the particles based on the movement from the command
  // The published image is the end result of the particles after step 3
  void motionCommandCallback(const geometry_msgs::PoseStamped::ConstPtr& motion_command )  {
    geometry_msgs::PoseStamped command = *motion_command;
    double target_roll, target_pitch, target_yaw;
    tf::Quaternion target_orientation;
    tf::quaternionMsgToTF(command.pose.orientation, target_orientation);
    tf::Matrix3x3(target_orientation).getEulerYPR( target_yaw, target_pitch, target_roll );

    // The following three lines implement the basic motion model example
    estimated_location.pose.position.x = estimated_location.pose.position.x + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * cos( -target_yaw );
    estimated_location.pose.position.y = estimated_location.pose.position.y + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * sin( -target_yaw );
    estimated_location.pose.orientation = command.pose.orientation;
    //===============================Do the drawing===========================
    double guessX = FORWARD_SWIM_SPEED_SCALING * cos( -target_yaw )*METRE_TO_PIXEL_SCALE;
    double guessY = FORWARD_SWIM_SPEED_SCALING *  sin( -target_yaw )*METRE_TO_PIXEL_SCALE;
    // ROS_INFO ("GuessX: %f, GessY: %f",guessX, guessY);
    updateObservation(guessX, guessY);
      resample(guessX, guessY,10.0,0.1,1);
      belief(1);
    // if (isKidnapped){
    //   kidnapped();
    //   updateObservation(guessX, guessY);
    //   resample(guessX, guessY,decay,0.1,5);
    //   if (decay>12.0){
    //     belief(1000-1);
    //   decay-=0.05;}
    // }else{
    //   updateObservation(guessX, guessY);
    //   resample(guessX, guessY,10.0,0.1,1);
    //   belief(2);
    // }
    //=========================================================================
    // The remainder of this function is sample drawing code to plot your answer on the map image.

    /*********************************************************/
    // DRAW THE GROUND (BLUE) TRUTH AND OUR ESTIMATED (RED)  //
    /*********************************************************/
    localization_line_image = ground_truth_image.clone(); // you either get a red line or a red point + bluie line. no superimposed paths

    int estimated_robo_image_x = localization_line_image.size().width/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.x;
    int estimated_robo_image_y = localization_line_image.size().height/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.y;

    int estimated_heading_image_x = estimated_robo_image_x + HEADING_GRAPHIC_LENGTH * cos(-target_yaw);
    int estimated_heading_image_y = estimated_robo_image_y + HEADING_GRAPHIC_LENGTH * sin(-target_yaw);

    // ROS_INFO( "Ground truth image point at %d, %d", estimated_robo_image_x, estimated_robo_image_y);
    cv::circle( localization_line_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), POSITION_GRAPHIC_RADIUS, CV_RGB(250,0,0), -1);
    cv::line( localization_line_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), cv::Point(estimated_heading_image_x, estimated_heading_image_y), CV_RGB(250,0,0), 10);
  }

  // This is a provided convenience function that allows you to compare your localization result to a ground truth path
  void groundTruthImageCallback( const sensor_msgs::ImageConstPtr& gt_img ){
    cv_bridge::CvImagePtr cv_ptr;
    try{
      cv_ptr = cv_bridge::toCvCopy(gt_img, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e){
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    ground_truth_image = cv::Mat(cv_ptr->image);
  }

  // This function publishes your localization result image and spins ROS to execute its callbacks
  void spin()  {
    ros::Rate loop_rate(30);
    while (nh.ok()) {
      sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", localization_result_image).toImageMsg();
      pub.publish(msg);

      ros::spinOnce();
      loop_rate.sleep();
    }
  }
};

int main(int argc, char** argv){
  srand(time(0));
  ros::init(argc, argv, "localizer");
  Localizer my_loc(argc, argv);
  my_loc.spin();
}
