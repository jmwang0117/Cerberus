# 脚本名称: astar_with_global_pcl
# 脚本描述: 单个无人机的astar算法测试(全局点云)

gnome-terminal --window -e 'bash -c "roscore; exec bash"' \
--tab -e 'bash -c "sleep 5; roslaunch prometheus_simulator_utils map_generator.launch; exec bash"' \
--tab -e 'bash -c "sleep 6; roslaunch prometheus_simulator_utils fake_odom.launch; exec bash"' \
--tab -e 'bash -c "sleep 7; roslaunch prometheus_uav_control uav_control_main_fake_odom.launch; exec bash"' \
--tab -e 'bash -c "sleep 8; roslaunch prometheus_global_planner sitl_global_planner_with_global_point.launch; exec bash"' \