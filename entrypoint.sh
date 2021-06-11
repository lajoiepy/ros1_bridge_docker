#!/bin/bash

export ROS_MASTER_URI=http://$1:11311;
export ROS_IP=$1;

source /opt/ros/melodic/setup.bash
source /opt/ros/dashing/setup.bash

rosparam load /params.yaml
ros2 run ros1_bridge parameter_bridge
