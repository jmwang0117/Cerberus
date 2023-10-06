#include <ros/ros.h>
#include <std_msgs/String.h>
#include <bodyreader/bodyposture.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Int8.h>

using namespace std;

ros::Publisher cmd_vel_Pub;

float target_x_angle = 0;
float target_distance = 2000;
float x_p = 0;
float x_d = 0;
float z_p = 0;
float z_d = 0;
int mode  = 2;   //1:sleep  2:follow

void bodyposture_Callback(bodyreader::bodyposture msg)
{
	if (mode == 2)
	{
		geometry_msgs::Twist cmd_vel_msg;
		static float last_x_angle = 0;
		static float last_distance = 0;
		float x_angle;
		float distance;

		if(msg.CenterOfMass_X == 0 && msg.CenterOfMass_Y == 0 && msg.CenterOfMass_Z == 0)
		{
			x_angle = target_x_angle;
			distance = target_distance;
		}
		else{
		x_angle = msg.CenterOfMass_X / msg.CenterOfMass_Z;
		distance = msg.CenterOfMass_Z;
		}
		//printf("x_angle=%f\n",x_angle);
		//printf("distance=%f\n",distance);
		
		float error_x_angle = x_angle - target_x_angle;
		float error_distance = distance - target_distance;
		if(error_x_angle > -0.01 && error_x_angle < 0.01)  error_x_angle = 0;
		if(error_distance > -80 && error_distance < 80) error_distance = 0;

		cmd_vel_msg.linear.x = error_distance*x_p/1000 + (error_distance - last_distance)*x_d/1000;
		if(cmd_vel_msg.linear.x < -0.5)  cmd_vel_msg.linear.x = -0.5;
		else if(cmd_vel_msg.linear.x > 0.5) cmd_vel_msg.linear.x = 0.5;
		
		cmd_vel_msg.angular.z = error_x_angle*z_p + (error_x_angle - last_x_angle)*z_d;
		if(cmd_vel_msg.angular.z < -1)  cmd_vel_msg.angular.z = -1;
		else if(cmd_vel_msg.angular.z > 1) cmd_vel_msg.angular.z = 1;
		
		cmd_vel_Pub.publish(cmd_vel_msg);

		last_x_angle = error_x_angle;
		last_distance = error_distance;
	}
	
}


void mode_Callback(std_msgs::Int8 msg)
{
	mode = msg.data;
}


int main(int argc, char *argv[])
{

	ros::init(argc, argv, "follower");    //初始化ROS节点
	ros::NodeHandle nh("~"); 

	cmd_vel_Pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
	ros::Subscriber bodyposture_sub = nh.subscribe("/body_posture", 1, bodyposture_Callback);
	ros::Subscriber mode_sub = nh.subscribe("/mode", 1, mode_Callback);

	nh.param<float>("bodyfollow_x_p", x_p, 0.01);
	nh.param<float>("bodyfollow_x_d", x_d, 0.01);
	nh.param<float>("bodyfollow_z_p", z_p, 0.01);
	nh.param<float>("bodyfollow_z_d", z_d, 0.01);
	nh.param<int>("mode", mode, 2);

	double rate = 10;    //频率10Hz
	ros::Rate loopRate(rate);

/*	printf("bodyfollow_x_p = %f\n", x_p);
	printf("bodyfollow_x_d = %f\n", x_d);
	printf("bodyfollow_z_p = %f\n", z_p);
	printf("bodyfollow_z_d = %f\n", z_d);*/
	
	while(ros::ok())
	{

		ros::spinOnce();
		loopRate.sleep();

	}

}
