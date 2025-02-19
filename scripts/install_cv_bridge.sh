

echo ""
echo "-----------------Starting installations of CV_Bridge...--------------------------"
echo ""


cd ~/ros2_humble/src
sudo apt update
sudo apt install curl gnupg2 lsb-release
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2.list'
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-opencv python3-rospkg libboost-python1.81.0
cd vision_opencv/cv_bridge
git checkout humble
cd ../../..
colcon build --symlink-install


echo ""
echo "-----------------Image Transport & CV_Bridge installed---------------------------"
echo ""


