#include "fake_uav.h"
#include "fake_ugv.h"
#include <random>

#define MAX_NUM 40
int swarm_num_uav,swarm_num_ugv;
bool manual_init_pos;
bool pub_gazebo_model_state;
gazebo_msgs::ModelState model_state;

Fake_UAV uav_agent[MAX_NUM];
Eigen::Vector3d init_pos_uav[MAX_NUM];
double init_yaw_uav[MAX_NUM];

Fake_UGV ugv_agent[MAX_NUM];
Eigen::Vector3d init_pos_ugv[MAX_NUM];
double init_yaw_ugv[MAX_NUM];

random_device rd;
default_random_engine eng(rd()); 
uniform_real_distribution<double> rand_x;
uniform_real_distribution<double> rand_y;

ros::Publisher gazebo_model_state_pub;
void set_uav_init_pos(int i);
void set_ugv_init_pos(int i);
void gazebo_pub_cb(const ros::TimerEvent &e);
int main(int argc, char **argv)
{
    ros::init(argc, argv, "fake_odom_node");
    ros::NodeHandle nh("~");
    // fake_odom 主要是取代 PX4 SITL,跳过PX4内部执行的环节，直接使用数值计算的方式模拟无人机模型的运动状态
    // 输入: uav_control的底层控制指令,即/mavros/setpoint_raw/local 或 /mavros/setpoint_raw/attitude
    // 输出: 模拟得到的无人机里程计,即/prometheus/fake_odom
    // 输出: 发布model_state 直接将结果显示在Gazebo中，实现实景仿真

    // fake_odom 仿真数据流:
    // 仿真器中包含了地图生成器，可以模拟传感器发布全局地图和局部地图信息，用于规划模块的输入
    // 用于规划算法仿真：地图模拟 ---> 规划模块(如A*) --- (规划指令,/prometheus/command) ---> 控制模块(即uav_cotrol) --- (底层控制指令,即mavros指令) ---> fake_odom 
    // 同时控制算法仿真：控制模块(即uav_cotrol) --- (底层控制指令,即mavros指令) ---> fake_odom 

    nh.param("fake_odom/swarm_num_uav", swarm_num_uav, 8);                          // 无人机数量
    nh.param("fake_odom/swarm_num_ugv", swarm_num_ugv, 8);                          // 无人车数量
    nh.param("fake_odom/manual_init_pos", manual_init_pos, false);                  // 是否手动设定初始点
    nh.param("fake_odom/pub_gazebo_model_state", pub_gazebo_model_state, false);    // 是否发布gazebo位置

    unsigned int seed = rd();
    eng.seed(seed);

    for(int i = 0; i<swarm_num_uav;i++)
    {
        if(manual_init_pos)
        {
            // 根据外部参数设置无人机的初始位置
            nh.param("fake_odom/uav" + to_string(i+1) + "_init_x", init_pos_uav[i][0], 0.0);
            nh.param("fake_odom/uav" + to_string(i+1) + "_init_y", init_pos_uav[i][1], 0.0);
            nh.param("fake_odom/uav" + to_string(i+1) + "_init_z", init_pos_uav[i][2], 0.0);
            nh.param("fake_odom/uav" + to_string(i+1) + "_init_yaw", init_yaw_uav[i], 0.0);    
        }else
        {
            // 随机设置无人机的初始位置
            set_uav_init_pos(i);
        }
        uav_agent[i].init(nh, i+1, init_pos_uav[i], init_yaw_uav[i]);
    }

    for(int i = 0; i<swarm_num_ugv;i++)
    {
        if(manual_init_pos)
        {
            // 根据外部参数设置无人车的初始位置
            nh.param("fake_odom/ugv" + to_string(i+1) + "_init_x", init_pos_ugv[i][0], 0.0);
            nh.param("fake_odom/ugv" + to_string(i+1) + "_init_y", init_pos_ugv[i][1], 0.0);
            nh.param("fake_odom/ugv" + to_string(i+1) + "_init_z", init_pos_ugv[i][2], 0.08);
            nh.param("fake_odom/ugv" + to_string(i+1) + "_init_yaw", init_yaw_ugv[i], 0.0);    
        }else
        {
            // 随机设置无人车的初始位置
            set_ugv_init_pos(i);
        }
        ugv_agent[i].init(nh, i+1, init_pos_ugv[i], init_yaw_ugv[i]);
    }

    sleep(0.5);

    gazebo_model_state_pub = nh.advertise<gazebo_msgs::ModelState>("/gazebo/set_model_state", 1);
    ros::Timer gazebo_pub_timer = nh.createTimer(ros::Duration(0.1), gazebo_pub_cb);

    cout << GREEN << "[fake_odom_node] init! "<< TAIL << endl;

    ros::spin();

    return 0;
}

void gazebo_pub_cb(const ros::TimerEvent &e)
{
    if(!pub_gazebo_model_state)
    {
        return;
    }

    for(int i = 0; i<swarm_num_uav; i++)
    {
        model_state = uav_agent[i].get_model_state();
        gazebo_model_state_pub.publish(model_state);
        sleep(0.001);
    }

    for(int i = 0; i<swarm_num_ugv; i++)
    {
        model_state = ugv_agent[i].get_model_state();
        gazebo_model_state_pub.publish(model_state);
        sleep(0.001);
    }
}

void set_ugv_init_pos(int i)
{
    // 无人车x轴固定,y轴取值范围为:[-10,10]
    rand_y = uniform_real_distribution<double>(-10 , 10);
    init_pos_ugv[i][0] = -11.0;
    init_pos_ugv[i][1] = rand_y(eng);
    init_pos_ugv[i][2] = 0.0;
    init_yaw_ugv[i] = 0.0;
}

void set_uav_init_pos(int i)
{
    // 无人机x轴固定,y轴取值范围为:[-10,10]
    rand_y = uniform_real_distribution<double>(-10 , 10);
    init_pos_uav[i][0] = -10.0;
    init_pos_uav[i][1] = rand_y(eng);
    init_pos_uav[i][2] = 0.0;
    init_yaw_uav[i] = 0.0;
}