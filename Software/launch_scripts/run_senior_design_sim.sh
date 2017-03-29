#!/bin/bash

roslaunch hlpr_gazebo vector.launch &
sleep 1
roslaunch vector_viz view_robot.launch function:=map_nav &
sleep 2
roslaunch vector_navigation_apps 2d_map_nav_demo.launch map_file:=robuddy &
