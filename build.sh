
#echo ""
#echo "-----------------Starting Installation of SLAM for 3D Mapping...----------------"
#echo ""

# Clone required repositories
#echo ""
#echo "-----------------Cloning required repositories...-------------------------------"
#echo ""
#mkdir -p ~/minor-project/OpenCV
#mkdir -p ~/ros2_humble/src
#mkdir -p ~/minor-project/ORB_SLAM3/src
# OpenCV
#git clone https://github.com/opencv/opencv.git ~/minor-project/OpenCV/opencv
#git clone https://github.com/opencv/opencv_contrib.git ~/minor-project/OpenCV/opencv_contrib
# ROS2 Additional Dependencies
#git clone https://github.com/ros-perception/image_common.git ~/ros2_humble/src/image_common
#git clone https://github.com/ros-perception/vision_opencv.git ~/ros2_humble/src/vision_opencv
# Pangolin
#git clone --recursive https://github.com/stevenlovegrove/Pangolin.git
# ORB SLAM3
#git clone https://github.com/egdw/ORB_SLAM3_Ubuntu20.04 ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04
# ORB SLAM3 ROS2 Publisher
#git clone https://github.com/ozandmrz/orb_slam3_ros2_mono_publisher.git \
#~/minor-project/ORB_SLAM3/src/orb_slam3_ros2_mono_publisher
#echo ""
#echo "-----------------Required repositories cloned-----------------------------------"
#echo ""


# Install dependencies
#echo ""
#echo "-----------------Starting installation of dependencies...-----------------------"
#echo ""
#sudo apt-get update
#sudo apt update && sudo apt upgrade -y
#sudo apt-get install -y build-essential cmake git libgtk2.0-dev pkg-config \
#libavcodec-dev libavformat-dev libswscale-dev libtbbmalloc2 libtbb-dev libjpeg-dev \
#libpng-dev libtiff-dev libxvidcore-dev libx264-dev libatlas-base-dev \
#gfortran python3-dev libeigen3-dev libboost-all-dev libsuitesparse-dev libopencv-dev \
#libglew-dev python3-dev  libboost-python-dev libsdl2-dev mesa-utils glew-utils \
#libepoxy-dev software-properties-common libboost-serialization-dev libeigen3-dev \
#libsuitesparse-dev libboost-all-dev cmake g++ libssl-dev
#sudo apt install -y git colcon python3-rosdep2 vcstool wget \
#python3-flake8-docstrings python3-pip python3-pytest-cov \
#python3-flake8-blind-except python3-flake8-builtins \
#python3-flake8-class-newline python3-flake8-comprehensions \
#python3-flake8-deprecated python3-flake8-import-order \
#python3-flake8-quotes python3-pytest-repeat python3-pytest-rerunfailures \
#python3-vcstools libx11-dev libxrandr-dev libasio-dev libtinyxml2-dev
#echo ""
#echo "-----------------Dependencies installed-----------------------------------------"
#echo ""


# Downgrade GCC Version to 11
#echo ""
#echo "-----------------Starting downgradation of GCC version to 11...-----------------"
#echo ""
#sudo apt-get update
#sudo apt-get install -y gcc-11 g++-11
#sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 60 --slave /usr/bin/g++ g++ /usr/bin/g++-11
#sudo update-alternatives --config gcc # Choose auto mode (0) to set /usr/bin/gcc-11
#gcc --version # Verify gcc Version
#echo ""
#echo "-----------------GCC version downgraded to 11-----------------------------------"
#echo ""


# Install OpenCV4
#echo ""
#echo "-----------------Starting installation of OpenCV...-----------------------------"
#echo ""
#cd OpenCV/opencv_contrib && git checkout master
#cd ../opencv/ && git checkout master
#mkdir -p build
#cd build
#cmake -D CMAKE_BUILD_TYPE=Release \
#      -D CMAKE_INSTALL_PREFIX=/usr/local \
#      -D OPENCV_EXTRA_MODULES_PATH=~/minor-project/OpenCV/opencv_contrib/modules \
#      -D ENABLE_CXX11=ON .. \
#      -D ENABLE_PKG_CONFIG=ON ..
#make -j 2
#sudo make install
#opencv_version # Check OpenCV version
#cd ../../../
#echo ""
#echo "-----------------OpenCV installed------------------------------------------------"
#echo ""


# Install Pangolin
#echo ""
#echo "-----------------Starting installation of Pangolin...----------------------------"
#echo ""
#cd Pangolin
#./scripts/install_prerequisites.sh recommended
#mkdir -p build && cd build
#cmake .. -D CMAKE_BUILD_TYPE=Release && make -j 2
#sudo make install
#cd ./examples/HelloPangolin/HelloPangolin # Verify Pangolin Installation
# Verify Pangolin dependencies
#glxinfo | grep "OpenGL version" # OpenGL 
#dpkg -l | grep glew # GLEW
#ls /usr/include/eigen3/Eigen # eigen3
#cd ../../../
#echo ""
#echo "-----------------Pangolin installed----------------------------------------------"
#echo ""


# Install ROS2 (Humble Hawksbill)
#echo ""
#echo "-----------------Starting installations of ROS2 (Humble Hawksbill)...------------"
#echo ""
#cd ~/ros2_humble
#sudo apt purge 'ros-*' -y
#sudo apt autoremove -y
#sudo apt clean
#sudo rm /etc/ros/rosdep/sources.list.d/20-default.list
#vcs import --input https://raw.githubusercontent.com/ros2/ros2/humble/ros2.repos src
#sudo apt upgrade -y
#sudo rosdep init
#rosdep update
#rosdep install --from-paths src --ignore-src --rosdistro humble -y --skip-keys "fastcdr rti-connext-dds-6.0.1 urdfdom_headers python3-vcstool"
#colcon build --symlink-install
#echo "source ~/ros2_humble/install/local_setup.bash" >> ~/.bashrc
#source ~/.bashrc
# Additional Dependencies
#sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-keys F42ED6FBAB17C654
#echo "deb http://repo.ros2.org/ubuntu/main bookworm main" | sudo tee /etc/apt/sources.list.d/ros2.list
#sudo apt update
#sudo apt upgrade
#sudo apt install -y python3-pip python3-setuptools python3-colour python3-rosdep python3-ament-package\
#python3-rospkg-modules python3-rosdistro-modules python3-catkin-pkg-modules
# For errors
#sudo dpkg --remove --force-remove-reinstreq python3-rospkg python3-rosdistro python3-catkin-pkg python3-rosdep-modules
#sudo dpkg --remove --force-all python3-catkin-pkg python3-rosdep-modules
#sudo dpkg --remove --force-all python3-colcon-ros
#sudo apt --fix-broken install
#sudo apt install -y python3-pip python3-setuptools python3-colour python3-rosdep python3-ament-package\
#python3-rospkg-modules python3-rosdistro-modules python3-catkin-pkg-modules
#echo ""
#echo "-----------------ROS2 (Humble Hawksbill) installed-------------------------------"
#echo ""

# Install Image Transport & CV_Bridge
#echo ""
#echo "-----------------Starting installations of Image Transport & CV_Bridge...--------"
#echo ""
#cd ~/ros2_humble/src
#sudo apt update
#sudo apt install curl gnupg2 lsb-release
#curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2.list'
#sudo apt update
#sudo apt upgrade -y
#sudo apt install -y python3-opencv python3-rospkg libboost-python1.81.0
#cd image_common
#git checkout humble
#cd ..
#cd vision_opencv/cv_bridge
#git checkout humble
#cd ../..
#colcon build --symlink-install
#source install/setup.bash
#echo ""
#echo "-----------------Image Transport & CV_Bridge installed---------------------------"
#echo ""


# Install ORB_SLAM3
#echo ""
#echo "-----------------Starting installation of ORB_SLAM3...---------------------------"
#echo ""
#cd ~/minor-project/ORB_SLAM3/
#cd ORB_SLAM3_Ubuntu20.04
#echo ""
#echo "-----------------Configuring and building Thirdparty/DBoW2...--------------------"
#echo ""
#cd Thirdparty/DBoW2
#mkdir -p build && cd build
#cmake .. && make -j 2
#cd ../../g2o
#echo ""
#echo "-----------------Configuring and building Thirdparty/g2o...----------------------"
#echo ""
#mkdir -p build && cd build
#cmake .. && make -j 2
#cd ../../../
#echo ""
#echo "-----------------Uncompress vocabulary...----------------------------------------"
#echo ""
#cd Vocabulary && tar -xf ORBvoc.txt.tar.gz
#cd ../
#echo ""
#echo "-----------------Configuring and building ORB-SLAM3...---------------------------"
#echo ""
#mkdir -p build && cd build
#cmake .. && make -j 2
#rosdep install --from-paths src --ignore-src -r -y
#echo ""
#echo "-----------------ORB_SLAM3 installed---------------------------------------------"
#echo ""


# Downloading the TUM Dataset
#echo ""
#echo "-----------------Starting installation of TUM Dataset...-------------------------"
#echo ""
#cd ~/minor-project
#mkdir -p Datasets/TUM/ && cd Datasets/TUM/
#wget http://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk.tgz
#tar -xvzf rgbd_dataset_freiburg1_desk.tgz
#cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/Vocabulary/
#wget https://github.com/UZ-SLAMLab/ORB_SLAM3/raw/master/Vocabulary/ORBvoc.txt.tar.gz # Download the Vocabulary
#tar -xvzf ORBvoc.txt.tar.gz # Extract Vocabulary
#cd ../Examples/Monocular
#./mono_tum ../../Vocabulary/ORBvoc.txt TUM1.yaml ~/minor-project/Dataset/TUM/rgbd_dataset_freiburg1_desk # Execute the mapping process
#echo ""
#echo "-----------------TUM Dataset & its Vocabulary installed--------------------------"
#echo ""


# Publishing ORB_SLAM3 in ROS2:
#echo ""
#echo "-----------------Publishing ORB_SLAM3 in ROS2...----------------------------------"
#echo ""


#echo ""
#echo "-----------------Published ORB_SLAM3 in ROS2--------------------------------------"
#echo ""





#echo ""
echo "-----------------SLAM installed---------------------------------------------------"
#echo ""


