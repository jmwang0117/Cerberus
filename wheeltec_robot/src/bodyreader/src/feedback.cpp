#include <ros/ros.h>
#include <signal.h>
#include <stdlib.h>
#include <ctime>
#include <std_msgs/Int8.h>
#include <std_msgs/String.h>
#include <stdio.h>
#include <bodyreader/bodyposture.h>

using namespace std;
int temp1 = 0;
int temp2 = 0;
int interaction = 0;
bool voice_feedback ;

string if_akm;

void bodyposture_Callback(bodyreader::bodyposture msg)
{
	if (voice_feedback)
	{
		if(msg.akimibo)
		{
			system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/cal_finish.wav");
			//sleep(1);
		}

		if(msg.tips == 1)
		{
			system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/akimbo_cal.wav");
		}
		else if (msg.tips == 2)
		{
			system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/recovery.wav");
		}

		if(interaction==1){

			if(msg.left_foot_up == 1 && msg.right_foot_up == 0)
			{
				temp1++;
				temp2 = 0;
				if(temp1 > 5)
					{system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/backward.wav");
					temp1 = 0;}
			}
			else if(msg.left_foot_up == 0 && msg.right_foot_up == 1)
			{
				temp1++;
				temp2 = 0;
				if(temp1 > 5)
					{system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/forward.wav");
					temp1 = 0;}
			}
			else if(msg.left_hand_raised == 0 && msg.right_hand_raised == 1)
			{
				temp2++;
				temp1 = 0;
				if(temp2 > 5)
					{system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/turn_right.wav");
					temp2 = 0;}
			}
			else if(msg.left_hand_raised == 1 && msg.right_hand_raised == 0)
			{
				temp2++;
				temp1 = 0;
				if(temp2 > 5)
					{system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/turn_left.wav");
					temp2 = 0;}
			}
			else if(msg.left_arm_out == 1 && msg.right_arm_out == 0)
			{
					if(ros::param::get("if_akm_yes_or_no",if_akm))
						return;
					else
						system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/left_translation.wav");
					temp1 = 0;
					temp2 = 0;
			}
			else if(msg.left_arm_out == 0 && msg.right_arm_out == 1)
			{
					if(ros::param::get("if_akm_yes_or_no",if_akm))
						return;
					else
						system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/right_translation.wav");
					temp1 = 0;
					temp2 = 0;
			}
			else if (msg.fall == 1)
			{
					system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/fall.wav");
					temp1 = 0;
					temp2 = 0;
			}

		}
	}
	
}


void mode_Callback(std_msgs::Int8 msg)
{
	interaction = msg.data;
}



int main(int argc, char** argv)
{

	ros::init(argc, argv, "bodyreader_feedback");  //初始化节点  

	ros::NodeHandle nd("~"); //初始化句柄
	
	//ros::Subscriber laser_follow_flag_sub = nd.subscribe("laser_follow_flag", 1, laser_follow_flagCallback);//雷达跟随开启标志位订阅

	nd.param<bool>("voice_feedback", voice_feedback, true);

	nd.param<int>("interaction", interaction, 0);

	//printf("interaction = %d\n",interaction);

	ros::Subscriber bodyposture_sub = nd.subscribe("/body_posture", 1, bodyposture_Callback);

	ros::Subscriber mode_sub = nd.subscribe("/mode", 1, mode_Callback);

	ros::spin();



}
