#include <ros/ros.h>
#include <bodyreader/bodyposture.h>
#include <geometry_msgs/Twist.h>
#include <bodyreader/bodyList.h>
#include <bodyreader/body.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Int8.h>
#include <geometry_msgs/Twist.h>

#define HEAD 0
#define SHOULDER_SPINE 1
#define LEFT_SHOULDER 2
#define LEFT_ELBOW 3
#define LEFT_HAND 4
#define RIGHT_SHOULDER 5
#define RIGHT_ELBOW 6
#define RIGHT_HAND 7
#define MID_SPINE 8
#define BASE_SPINE 9
#define LEFT_HIP 10
#define LEFT_KNEE 11
#define LEFT_FOOT 12
#define RIGHT_HIP 13
#define RIGHT_KNEE 14
#define RIGHT_FOOT 15
#define LEFT_WRIST 16
#define RIGHT_WRIST 17
#define NECK 18
#define UNKNOWN 255
 
 
int lock_body_id = 0;
int lock_status = 0;		//0-nobody  1-no lock    2-locked
int last_lock_status = 0;
//int ii=0  ; 

bool open_switch = false;

ros::Publisher bodyposture_Pub;
bodyreader::bodyposture bodyposture_msg;

ros::Publisher mode_Pub;
std_msgs::Int8 mode_msg;

ros::Publisher cmd_vel_Pub;

void judge_pose(bodyreader::body body)
{	
	if(abs((int)(body.joints[LEFT_SHOULDER].worldPosition.y - body.joints[LEFT_ELBOW].worldPosition.y)) < 100  
		&&  abs((int)(body.joints[LEFT_ELBOW].worldPosition.y - body.joints[LEFT_HAND].worldPosition.y)) < 150 
		&&  (body.joints[LEFT_SHOULDER].worldPosition.x - body.joints[LEFT_ELBOW].worldPosition.x) > 200
		&&  (body.joints[LEFT_ELBOW].worldPosition.x - body.joints[LEFT_HAND].worldPosition.x) > 200
              && body.joints[LEFT_HAND].worldPosition.y > 400)
    {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.left_arm_out = 1;
			printf("Left Arm out !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}

	if(abs((int)(body.joints[RIGHT_SHOULDER].worldPosition.y - body.joints[RIGHT_ELBOW].worldPosition.y)) < 100  
		&&  abs((int)(body.joints[RIGHT_ELBOW].worldPosition.y - body.joints[RIGHT_HAND].worldPosition.y)) < 150 
		&&  (body.joints[RIGHT_ELBOW].worldPosition.x - body.joints[RIGHT_SHOULDER].worldPosition.x) > 200
		&&  (body.joints[RIGHT_HAND].worldPosition.x - body.joints[RIGHT_ELBOW].worldPosition.x) > 200
              && body.joints[RIGHT_HAND].worldPosition.y > 400)
    {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.right_arm_out = 1;
			printf("Right Arm out !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}

	if((body.joints[LEFT_HAND].worldPosition.y - body.joints[LEFT_ELBOW].worldPosition.y) > 180
         && (body.joints[LEFT_SHOULDER].worldPosition.y - body.joints[LEFT_ELBOW].worldPosition.y) > 150 
         && body.joints[LEFT_HAND].worldPosition.y > 400)
    {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.left_hand_raised = 1;
			printf("Left hand raised !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}

	if((body.joints[RIGHT_HAND].worldPosition.y - body.joints[RIGHT_ELBOW].worldPosition.y) > 180
         && (body.joints[RIGHT_SHOULDER].worldPosition.y - body.joints[RIGHT_ELBOW].worldPosition.y) > 150 
         && body.joints[RIGHT_HAND].worldPosition.y > 400)
    {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.right_hand_raised = 1;
			printf("Right hand raised !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}

	if((body.joints[LEFT_HAND].worldPosition.y - body.joints[BASE_SPINE].worldPosition.y) > 30  
		&& (body.joints[RIGHT_HAND].worldPosition.y - body.joints[BASE_SPINE].worldPosition.y) > 30
		&& (body.joints[LEFT_SHOULDER].worldPosition.x - body.joints[LEFT_ELBOW].worldPosition.x) > 100
		&& (body.joints[LEFT_HAND].worldPosition.x - body.joints[LEFT_ELBOW].worldPosition.x) > 100
		&& (body.joints[RIGHT_SHOULDER].worldPosition.x - body.joints[RIGHT_ELBOW].worldPosition.x) < -100
		&& (body.joints[RIGHT_HAND].worldPosition.x - body.joints[RIGHT_ELBOW].worldPosition.x) < -100
		&& (body.joints[RIGHT_ELBOW].worldPosition.y - body.joints[RIGHT_HAND].worldPosition.y) > 50
		&& (body.joints[LEFT_ELBOW].worldPosition.y - body.joints[LEFT_HAND].worldPosition.y) > 50
              && body.joints[BASE_SPINE].worldPosition.y > 100)
    {
		printf("Akimibo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		lock_body_id = body.bodyid;
		bodyposture_msg.akimibo = 1;
	}

	if((body.joints[LEFT_FOOT].worldPosition.y - body.joints[RIGHT_FOOT].worldPosition.y) > 120  
              && (body.joints[BASE_SPINE].worldPosition.y - body.joints[LEFT_FOOT].worldPosition.y) > 200
              && (body.joints[BASE_SPINE].worldPosition.y - body.joints[RIGHT_FOOT].worldPosition.y) > 500
              && body.joints[LEFT_FOOT].worldPosition.y > -800
              && body.joints[RIGHT_FOOT].worldPosition.y > -800)
      {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.left_foot_up = 1;
			printf("Left foot up !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}

	if((body.joints[RIGHT_FOOT].worldPosition.y - body.joints[LEFT_FOOT].worldPosition.y) > 120  
              && (body.joints[BASE_SPINE].worldPosition.y - body.joints[LEFT_FOOT].worldPosition.y) > 500
              && (body.joints[BASE_SPINE].worldPosition.y - body.joints[RIGHT_FOOT].worldPosition.y) > 200
              && body.joints[LEFT_FOOT].worldPosition.y > -800
              && body.joints[RIGHT_FOOT].worldPosition.y > -800)
    {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.right_foot_up = 1;
			printf("Right foot up !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}


	if((body.joints[LEFT_KNEE].worldPosition.y - body.joints[BASE_SPINE].worldPosition.y) > -10 
		&& (body.joints[RIGHT_KNEE].worldPosition.y - body.joints[BASE_SPINE].worldPosition.y) > -10
              && body.joints[BASE_SPINE].worldPosition.y < 0)
    {
		if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.fall = 1;
			printf("Fall !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
		}
	}


	if (open_switch){
		if((body.joints[LEFT_HAND].worldPosition.x - body.joints[BASE_SPINE].worldPosition.x) > 0 
			&& (body.joints[BASE_SPINE].worldPosition.x - body.joints[RIGHT_HAND].worldPosition.x) > 0
	              && body.joints[BASE_SPINE].worldPosition.y > 0
	              && body.joints[LEFT_HAND].depthPosition.x > 140
	              && body.joints[LEFT_HAND].depthPosition.x < 500 
	              && body.joints[RIGHT_HAND].depthPosition.x > 140
	              && body.joints[RIGHT_HAND].depthPosition.x < 500) 
	    {
			if(body.bodyid == lock_body_id)
			{
				
				printf("Switch mode !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");

				if (mode_msg.data == 1) mode_msg.data = 2;
				else if (mode_msg.data == 2) mode_msg.data = 1;
				mode_Pub.publish(mode_msg);
				system("aplay -D plughw:CARD=Device,DEV=0 ~/wheeltec_robot/src/bodyreader/audio/mode_switch.wav");
			}
		}
	}



}

void bodylist_Callback(bodyreader::bodyList body_list)
{
	bodyposture_msg.bodyid = 0;
	bodyposture_msg.CenterOfMass_X = 0;
    bodyposture_msg.CenterOfMass_Y = 0;
    bodyposture_msg.CenterOfMass_Z = 0;
    bodyposture_msg.left_arm_out = 0;
    bodyposture_msg.right_arm_out = 0;
    bodyposture_msg.left_hand_raised = 0;
    bodyposture_msg.right_hand_raised = 0;
    bodyposture_msg.akimibo = 0;
    bodyposture_msg.left_foot_up = 0;
    bodyposture_msg.right_foot_up = 0;
    bodyposture_msg.fall = 0;
    bodyposture_msg.tips =0;
    bodyposture_msg.lock_status =0;

	if(body_list.count !=0) lock_status=1;
    else lock_status=0;

	for(int i = 0; i < body_list.count; ++i)
    {
    	bodyreader::body body = body_list.bodies[i];

    	judge_pose(body);

    	if(body.bodyid == lock_body_id)
		{
			bodyposture_msg.CenterOfMass_X = body.centerOfMass.x;
			bodyposture_msg.CenterOfMass_Y = body.centerOfMass.y;
			bodyposture_msg.CenterOfMass_Z = body.centerOfMass.z;

			lock_status = 2;
			bodyposture_msg.bodyid = lock_body_id;
		}
		
    }
    if(lock_status == 1 && last_lock_status != lock_status) bodyposture_msg.tips = 1;
    last_lock_status = lock_status ;


    if(lock_status == 2) 
    {
       if((bodyposture_msg.CenterOfMass_X / bodyposture_msg.CenterOfMass_Z > 0.35)
           ||(bodyposture_msg.CenterOfMass_X / bodyposture_msg.CenterOfMass_Z < -0.35)
           ||(bodyposture_msg.CenterOfMass_Z < 1400))
       {
              bodyposture_msg.left_arm_out = 0;
              bodyposture_msg.right_arm_out = 0;
              bodyposture_msg.left_hand_raised = 0;
              bodyposture_msg.right_hand_raised = 0;
              bodyposture_msg.akimibo = 0;
              bodyposture_msg.left_foot_up = 0;
              bodyposture_msg.right_foot_up = 0;
              bodyposture_msg.fall = 0;
       }
    }
    else 
    {
    	cmd_vel_Pub.publish(geometry_msgs::Twist());
    }
	bodyposture_msg.lock_status = lock_status;
    bodyposture_Pub.publish(bodyposture_msg);

}

void recoveryid_Callback(std_msgs::Int16 recoveryid)
{
	lock_body_id = recoveryid.data;
	bodyposture_msg.tips = 2;
}

int main(int argc, char *argv[])
{

	ros::init(argc, argv, "body_process");    //初始化ROS节点
	ros::NodeHandle nh("~"); 
	
	bodyposture_Pub = nh.advertise<bodyreader::bodyposture>("/body_posture", 1);
	ros::Subscriber bodylist_sub = nh.subscribe("/bodylist", 1, bodylist_Callback);
	ros::Subscriber recoveryid_sub = nh.subscribe("/recoveryid", 1, recoveryid_Callback);

	mode_Pub = nh.advertise<std_msgs::Int8>("/mode", 1);
	mode_msg.data = 1;

	cmd_vel_Pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	nh.param<bool>("open_switch", open_switch, false);


	ros::spin();
}