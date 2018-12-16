#!/bin/bash
apt update
apt install libpcap-dev

mkdir -p ~/catkin_ws/src/
cd ~/catkin_ws/src/

git clone https://github.com/ankitdhall/lidar_camera_calibration.git
git clone https://github.com/pal-robotics/aruco_ros.git
git clone https://github.com/SmartRoboticSystems/aruco_mapping.git
git clone https://github.com/ros-drivers/velodyne.git
git clone https://github.com/ros/diagnostics.git

cd ~
git config --global http.sslVerify false
git clone https://192.168.1.220/SOS_YUKI_N/opencv.git
git branch -b 3.4.4 3.4.4
mkdir -p opencv/build
cd opencv/build
cmake ..
make all -j8
make install

cd ~/catkin_ws
catkin_make
