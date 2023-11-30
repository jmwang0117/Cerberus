#ifndef UAV_BASIC_TOPIC_HPP
#define UAV_BASIC_TOPIC_HPP

#include <ros/ros.h>
#include "communication.hpp"
#include "prometheus_msgs/UAVState.h"
#include "prometheus_msgs/TextInfo.h"
#include "prometheus_msgs/OffsetPose.h"
#include "prometheus_msgs/UAVCommand.h"
#include "prometheus_msgs/UAVSetup.h"
#include "prometheus_msgs/UAVControlState.h"
#include "prometheus_msgs/Control.h"

class UAVBasic
{
public:
    UAVBasic();

    UAVBasic(ros::NodeHandle &nh,int id,Communication *communication);

    ~UAVBasic();

    inline int getRobotId(){return robot_id;};

    void stateCb(const prometheus_msgs::UAVState::ConstPtr &msg);

    //【回调】uav反馈信息
    void textInfoCb(const prometheus_msgs::TextInfo::ConstPtr &msg);

    void controlStateCb(const prometheus_msgs::UAVControlState::ConstPtr &msg);

    struct UAVState getUAVState();

    void uavCmdPub(struct UAVCommand uav_cmd);

    void uavCmdCb(const prometheus_msgs::UAVCommand::ConstPtr &msg);

    void uavSetupPub(struct UAVSetup uav_setup);

    void setTimeStamp(uint time);

    uint getTimeStamp();

    void uavTargetPub(struct WindowPosition window_position);

private:
    ros::Subscriber uav_state_sub_;

    //反馈信息
    ros::Subscriber text_info_sub_;
    //控制状态
    ros::Subscriber uav_control_state_sub_;

    ros::Publisher uav_cmd_pub_;

    ros::Publisher uav_setup_pub_;

    ros::Subscriber uav_cmd_sub_;

    ros::Publisher uav_target_pub_;

    int current_mode_;

    int robot_id;

    struct UAVState uav_state_;
    struct TextInfo text_info_;
    struct UAVControlState uav_control_state_;

    prometheus_msgs::OffsetPose offset_pose_;

    Communication *communication_ = NULL;

    std::string multicast_udp_ip;

    uint time_stamp_ = 0;
};

#endif