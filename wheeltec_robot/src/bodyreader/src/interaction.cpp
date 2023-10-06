#include <ros/ros.h>
#include <std_msgs/String.h>
#include <bodyreader/bodyposture.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Int8.h>

using namespace std;
 
ros::Publisher cmd_vel_Pub;
ros::Publisher fall_Pub;
int mode = 1;

string if_akm;

void bodyposture_Callback(bodyreader::bodyposture msg)
{
	if (mode == 1)
	{
		std_msgs::Int8 fall_msg;
		geometry_msgs::Twist cmd_vel_msg;
		if(msg.left_foot_up == 1 && msg.right_foot_up == 0)
		{
				cmd_vel_msg.linear.x = -0.15;
		}
		else if(msg.left_foot_up == 0 && msg.right_foot_up == 1)
		{
				cmd_vel_msg.linear.x = 0.15;
		}
		else if(msg.left_hand_raised == 0 && msg.right_hand_raised == 1)
		{
				cmd_vel_msg.angular.z = 0.2;
				if(ros::param::get("if_akm_yes_or_no",if_akm))
				{
					cmd_vel_msg.linear.x = 0.15;
				}
		}
		else if(msg.left_hand_raised == 1 && msg.right_hand_raised == 0)
		{
				cmd_vel_msg.angular.z = -0.2;
				if(ros::param::get("if_akm_yes_or_no",if_akm))
				{
					cmd_vel_msg.linear.x = 0.15;
				}
		}
		else if(msg.left_arm_out == 1 && msg.right_arm_out == 0)
		{
				if(ros::param::get("if_akm_yes_or_no",if_akm))
				{
					cmd_vel_msg.linear.y = 0;
				}
				else
					cmd_vel_msg.linear.y = -0.1;
		}
		else if(msg.left_arm_out == 0 && msg.right_arm_out == 1)
		{
				if(ros::param::get("if_akm_yes_or_no",if_akm))
				{
					cmd_vel_msg.linear.y = 0;
				}
				else
				cmd_vel_msg.linear.y = 0.1;
		}
		else if (msg.fall == 1)
		{
				fall_msg.data = 1;
		}
		
		fall_Pub.publish(fall_msg);
		cmd_vel_Pub.publish(cmd_vel_msg);
		

	}
	
}

void mode_Callback(std_msgs::Int8 msg)
{
	mode = msg.data;
}

int main(int argc, char *argv[])
{

	ros::init(argc, argv, "interaction");    //初始化ROS节点
	ros::NodeHandle nh; 
	
	cmd_vel_Pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
	fall_Pub = nh.advertise<std_msgs::Int8>("/buzzer_flag", 1);
	ros::Subscriber bodyposture_sub = nh.subscribe("/body_posture", 1, bodyposture_Callback);
	ros::Subscriber mode_sub = nh.subscribe("/mode", 1, mode_Callback);


	double rate = 10;    //频率10Hz
	ros::Rate loopRate(rate);
	
	while(ros::ok())
	{
		ros::spinOnce();
		loopRate.sleep();

	}

}
