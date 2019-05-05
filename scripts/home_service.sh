#!/bin/sh
dir=/home/workspace/home_service_bot/catkin_ws
src_dir=$dir/src

xterm -e " source $dir/devel/setup.bash" &
#Launch turtlebot in the custom world
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$src_dir/map/apartment.world" &
sleep 5

#Launch amcl demo
xterm -e " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$src_dir/map/apt.yaml" &

sleep 2

#Launch navigation pick_objects node
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5

#Launch navigation pick_objects node
xterm -e " rosrun pick_objects pick_objects_node" &
sleep 2

#Launch rviz
xterm -e " rosrun add_markers add_markers_and_pickup_node"


