
# Clone required repositories

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
git clone https://github.com/ozandmrz/ros2_raspberry_pi_5
git clone --recursive https://github.com/stevenlovegrove/Pangolin.git
mkdir -p ~/minor-project/src
git clone https://github.com/egdw/ORB_SLAM3_Ubuntu20.04 ~/minor-project/ORB_SLAM3
git clone https://github.com/ozandmrz/orb_slam3_ros2_mono_publisher.git ~/minor-project/ORB_SLAM3/src


# Install dependencies
sudo apt-get update
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y build-essential cmake git libgtk2.0-dev pkg-config \
libavcodec-dev libavformat-dev libswscale-dev libtbb2 libtbb-dev libjpeg-dev \
libpng-dev libtiff-dev libdc1394-22-dev libxvidcore-dev libx264-dev libatlas-base-dev \
gfortran python3-dev libeigen3-dev libboost-all-dev libsuitesparse-dev libopencv-dev \
libglew-dev libpython2.7-dev python2.7 libboost-python-dev libsdl2-dev mesa-utils \
glew-utils libepoxy-dev software-properties-common



# Downgrade GCC Version to 11
sudo apt-get update
sudo apt-get install gcc-11 g++-11
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 60 --slave /usr/bin/g++ g++ /usr/bin/g++-11
sudo update-alternatives --config gcc
0 # Choose auto mode (0) to set /usr/bin/gcc-11

gcc --version # Verify gcc Version



# Install OpenCV

cd ~/minor-project/opencv_contrib
git checkout master
cd ~/minor-project/opencv
git checkout master
cd build
cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=~/minor-project/opencv_contrib/modules \
      -D ENABLE_CXX11=ON ..
make -j2
sudo make install

pkg-config --modversion opencv4 # Check OpenCV version

cd ~/minor-project


# Install Pangolin


cd Pangolin
./scripts/install_prerequisites.sh recommended
cd build && cmake .. -D CMAKE_BUILD_TYPE=Release
make -j2
sudo make install

cd ./Pangolin/build/examples/HelloPangolin/HelloPangolin # Verify Pangolin Installation

# Verify Pangolin dependencies

# glxinfo | grep "OpenGL version"  # OpenGL 
# dpkg -l | grep glew  && glewinfo | grep "GLEW_VERSION" # GLEW
# ls /usr/include/eigen3/Eigen # eigen3




# Install ORB_SLAM3
cd ~/minor-project/ORB_SLAM3/
cd ORB_SLAM3_Ubuntu20.04
chmod +x build.sh
./build.sh
cmake ..
make -j2
rosdep install --from-paths src --ignore-src -r -y



# Downloading the TUM Dataset

# (Download the vocabulary)
cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/Vocabulary/
wget https://github.com/UZ-SLAMLab/ORB_SLAM3/raw/master/Vocabulary/ORBvoc.txt.tar.gz

tar -xvf ORBvoc.tar.gz
cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/Examples/Monocular
./mono_tum ../../Vocabulary/ORBvoc.txt TUM1.yaml ~/minor-project/Dataset/TUM/rgbd_dataset_freiburg1_desk

