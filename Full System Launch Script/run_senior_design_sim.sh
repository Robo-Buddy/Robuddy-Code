#!/bin/bash

roslaunch hlpr_gazebo vector.launch &
sleep 5 

roslaunch vector_viz view_robot.launch function:=map_nav &
sleep 5

roslaunch vector_navigation_apps 2d_map_nav_demo.launch map_file:=robuddy
wait

trap 'echo Demo is shutting down. Killing child processes...; kill $(jobs -p); rosnode kill --all; killall -9 roscore; killall -9 rosmaster; exit' SIGHUP SIGINT SIGQUIT SIGTERM EXIT

#EXIT
