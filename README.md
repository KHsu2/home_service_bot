# home_service_bot
Final Project for Udacity's Robotics Nanodegree that simulates a robot operating on ROS to find an object and deliver it to a goal. The following ROS packages were used: turtlebot, turtlebot_interactions, turtlebot_simulations, and slam_gmapping. 

The pipeline followed by the robot was to use the Gmapping package to create a local map of its environment, then the Adaptive Monte Carlo Localization package to localize in the map. The Move Base Package is then used which creates a costmap of the local map from which the optimal path is calculated and used to move the robot to its goal.
