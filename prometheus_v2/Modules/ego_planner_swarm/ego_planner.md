## EGO_planner_swarm

## octomap

sudo apt-get install ros-melodic-octomap-rviz-plugins
sudo apt-get install ros-melodic-octomap-*


octomap_server:https://mp.weixin.qq.com/s?__biz=MzUzNjA3ODI1Mw==&mid=2247486171&idx=1&sn=27312d4b333a266d6a991d0c61817f50&chksm=fafaf819cd8d710fd8d67fb8fea47e4aa51fac6ca6ece627ee895f0892655f14371521144443&scene=27

## 运行

cd Prometheus/Scripts/simulation/ego_planner/
单机版本
./ego_planner_1uav.sh
单机版本 - scan
./ego_planner_1uav_scan.sh
四机版本
./ego_planner_4uav.sh
四机版本 - scan
./ego_planner_4uav_scan.sh

飞机加载完毕后，检查报错，然后解锁-切换至COMMAND_CONTROL模式(多机模式时，单个遥控器控制所有)，无人机自动起飞，然后，给定目标点即可

## 如何发布目标点

 - 使用RVIZ的插件
 - 使用rosrun ego_planner pub_goal 发布任意目标点
    - x和y都等于99.99时为特殊指令，无人机原地悬停，等待下一个目标点
 - 使用roslaunch ego_planner pub_preset_goal.launch 发布预设的目标点（默认的目标点可以在launch文件中修改，目前默认是四架飞机）


## 注意事项

 - roslaunch prometheus_simulator_utils map_generator.launch 可以在这个launch 文件中定义新的场景
 - 在规划过程中（没有抵达目标点的时候），可以切换至RC_POS_CONTROL，但如果切换回COMMAND_CONTROL模式，可能会发生碰撞。正确的做法是发布一个悬停目标点（99.99）
 - 真机实验中如果要想更安全和稳定，将ego的限速调小，并且可以设置规划范围，特别是z轴的范围
 - 真机如果使用scan的话，一定要设置z轴范围，使得其稳定在一定高度飞行（z轴膨胀范围要大于无人机的飞行高度范围）
 - 目前scan和点云是同时订阅的，因此只能发布一个使用，不能同时发布，会有bug
 - 真实情况的时候，scan数据可能要做一个滤波，去掉检测到自身的点，不然会认为自己的位置有障碍
 - ego_planner_4uav_scan还有点小bug，没法做到100%。原因见上条，也可能时仿真中scan数据不稳定，不清楚实际中情况如何