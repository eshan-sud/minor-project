

echo ""
echo "-----------------Starting installation of dependencies...-----------------------"
echo ""


sudo apt-get update
sudo apt update && sudo apt upgrade -y

sudo apt install -y build-essential cmake git libgtk2.0-dev \
pkg-config libavcodec-dev libavformat-dev libswscale-dev \
libtbbmalloc2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev \
libxvidcore-dev libx264-dev libatlas-base-dev gfortran \
python3-dev libeigen3-dev libboost-all-dev libsuitesparse-dev \
libopencv-dev libglew-dev python3-dev libboost-python-dev \
libsdl2-dev mesa-utils glew-utils libepoxy-dev \
software-properties-common libboost-serialization-dev \
libsuitesparse-dev libboost-all-dev cmake g++ libssl-dev \
libgl1-mesa-glx

sudo apt install -y git colcon python3-rosdep2 vcstool wget \
python3-flake8-docstrings python3-pip python3-pytest-cov \
python3-flake8-blind-except python3-flake8-builtins \
python3-flake8-class-newline python3-flake8-comprehensions \
python3-flake8-deprecated python3-flake8-import-order \
python3-flake8-quotes python3-pytest-repeat python3-pytest-rerunfailures \
python3-vcstools libx11-dev libxrandr-dev libasio-dev \
libtinyxml2-dev python3-colcon-common-extensions



# ROS2 additional dependencies
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-keys F42ED6FBAB17C654
echo "deb http://repo.ros2.org/ubuntu/main bookworm main" | sudo tee /etc/apt/sources.list.d/ros2.list
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip python3-setuptools python3-colour python3-rosdep python3-ament-package \
python3-rospkg-modules python3-rosdistro-modules python3-catkin-pkg-modules
# In case of errors
sudo dpkg --remove --force-remove-reinstreq python3-rospkg python3-rosdistro python3-catkin-pkg python3-rosdep-modules
sudo dpkg --remove --force-all python3-catkin-pkg python3-rosdep-modules
sudo dpkg --remove --force-all python3-colcon-ros
sudo apt --fix-broken install
sudo apt install -y python3-pip python3-setuptools python3-colour python3-rosdep python3-ament-package \
python3-rospkg-modules python3-rosdistro-modules python3-catkin-pkg-modules

sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo tee /etc/apt/trusted.gpg.d/ros.asc
sudo apt autoremove -y


echo ""
echo "-----------------Dependencies installed-----------------------------------------"
echo ""
