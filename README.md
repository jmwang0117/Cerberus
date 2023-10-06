# Cerberus
Cerberus is a development framework compatible with a variety of robots (such as wheeled robots, drones, land and air robots)


1. Ground Robot

sudo apt-get install libsdl-image1.2-dev
sudo apt-get install libsdl-dev
sudo apt-get install ros-melodic-serial

git clone https://github.com/ktossell/libuvc
cd libuvc
mkdir build
cd build
cmake ..
make && sudo make install

sudo apt-get install ros-melodic-bfl
sudo apt-get install ros-melodic-tf2-sensor-msgs

https://github.com/IntelRealSense/librealsense
