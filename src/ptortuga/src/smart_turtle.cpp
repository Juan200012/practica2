#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdlib.h>
#include <turtlesim/Pose.h>
#include <iomanip> 

float X =0.0;
float Y = 0.0;

void poseMessageReceived(const turtlesim::Pose& msg) {
  X = msg.x;
  Y = msg.y;
}

int main(int argc, char **argv) {
  // Initialize the ROS system and become a node.
  ros::init(argc, argv, "smart_turtle");
  ros::NodeHandle nh;

  // Create a publisher object.
  ros::Publisher pub = nh.advertise<geometry_msgs::Twist>(
    "turtle1/cmd_vel", 1000);
  //creamos un subscriptor
  ros::Subscriber sub = nh.subscribe("turtle1/pose", 1000,
    &poseMessageReceived);

  // Seed the random number generator.
  srand(time(0));

  // Loop at 2Hz until the node is shut down.
  ros::Rate rate(4);
  while(ros::ok()) {
    // Create and fill in the message.  The other four
    // fields, which are ignored by turtlesim, default to 0.
    geometry_msgs::Twist msg;
    ros::spinOnce();
    if((X<1)||(Y<1)||(X>10)||(Y>10))
    {
        msg.linear.x = 2;
        msg.angular.z = 2.0;
    }
    else
    {
        msg.linear.x = 1.0;
        msg.angular.z = 0.0;
    }

    // Publish the message.
    pub.publish(msg);

    // Send a message to rosout with the details.
    ROS_INFO_STREAM("Sending random velocity command:"
      << " linear=" << msg.linear.x
      << " angular=" << msg.angular.z);

    // Wait until it's time for another iteration.
    rate.sleep();
  }
}