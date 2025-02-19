



echo ""
echo "-----------------Starting installations of ROS2 (Humble Hawksbill)...------------"
echo ""


cd ~/ros2_humble
sudo apt purge 'ros-*' -y
sudo apt autoremove -y
sudo apt clean
sudo rm /etc/ros/rosdep/sources.list.d/20-default.list
vcs import --input https://raw.githubusercontent.com/ros2/ros2/humble/ros2.repos src
sudo apt upgrade -y
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro humble -y --skip-keys "fastcdr rti-connext-dds-6.0.1 urdfdom_headers python3-vcstool"
colcon build --symlink-install
echo "source ~/ros2_humble/install/local_setup.bash" >> ~/.bashrc
source ~/.bashrc

# ROS2 additional dependencies
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-keys F42ED6FBAB17C654
echo "deb http://repo.ros2.org/ubuntu/main bookworm main" | sudo tee /etc/apt/sources.list.d/ros2.list
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip python3-setuptools python3-colour python3-rosdep python3-ament-package\
python3-rospkg-modules python3-rosdistro-modules python3-catkin-pkg-modules

# In case of errors
sudo dpkg --remove --force-remove-reinstreq python3-rospkg python3-rosdistro python3-catkin-pkg python3-rosdep-modules
sudo dpkg --remove --force-all python3-catkin-pkg python3-rosdep-modules
sudo dpkg --remove --force-all python3-colcon-ros
sudo apt --fix-broken install
sudo apt install -y python3-pip python3-setuptools python3-colour python3-rosdep python3-ament-package\
python3-rospkg-modules python3-rosdistro-modules python3-catkin-pkg-modules


echo ""
echo "-----------------ROS2 (Humble Hawksbill) installed-------------------------------"
echo ""
