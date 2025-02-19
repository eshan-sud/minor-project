

echo ""
echo "-----------------Cloning required repositories...-------------------------------"

echo ""
mkdir -p ~/minor-project/OpenCV
mkdir -p ~/ros2_humble/src
mkdir -p ~/minor-project/ORB_SLAM3/
# OpenCV
git clone https://github.com/opencv/opencv.git ~/minor-project/OpenCV/opencv
git clone https://github.com/opencv/opencv_contrib.git ~/minor-project/OpenCV/opencv_contrib
# ROS2 Additional Dependencies
git clone https://github.com/ros-perception/vision_opencv.git ~/ros2_humble/src/vision_opencv
# Pangolin
git clone --recursive https://github.com/stevenlovegrove/Pangolin.git
# ORB SLAM3
git clone https://github.com/egdw/ORB_SLAM3_Ubuntu20.04 ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04
# ORB SLAM3 ROS2 Publisher
#git clone https://github.com/ozandmrz/orb_slam3_ros2_mono_publisher.git \
#~/minor-project/ORB_SLAM3/src/orb_slam3_ros2_mono_publisher


echo ""
echo "-----------------Required repositories cloned-----------------------------------"
echo ""
