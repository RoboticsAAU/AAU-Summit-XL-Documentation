#!/bin/bash
source ~/catkin_ws/devel/setup.bash && roscd robot_bringup
# Robot params
cp -r env/ ~/robot_params

# Boot scripts
cp scripts/bringup.sh ~/
cp scripts/ros_config.sh ~/

# Boot service
sudo cp scripts/bringup-ros.service /etc/systemd/system/
sudo systemctl enable bringup-ros.service
sudo systemctl start bringup-ros.service

echo "source ~/ros_config.sh" >> ~/.bashrc

