#! /bin/bash

### BEGIN INIT
gnome-terminal -- bash -c "source /opt/ros/melodic/setup.bash;source /home/wheeltec/wheeltec_robot/devel/setup.bash;roslaunch wheeltec_multi navigation.launch"
sleep 10

wait
exit 0
