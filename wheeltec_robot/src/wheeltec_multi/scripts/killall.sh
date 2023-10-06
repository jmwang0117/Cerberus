#! /bin/bash

### BEGIN INIT
gnome-terminal -- bash -c "killall -2 roslaunch"
sleep 2

wait
exit 0
