# 3D Mapping using SLAM

A repository of my learning of Visual &amp; RGB-D SLAM used for 3D mapping of indoor environments with a \
Raspberry Pi 5 &amp; an External camera

## Aim:

Mapping of indoor environments using RGB-D SLAM algorithm on a Raspberry Pi 5 with a Microsoft Kinect v1 \
as a camera module and using the RGB camera data along with its depth data to create and visualise a 3D structure of the environment.


## References (Repos I have used / taken reference from):


	(OpenCV4): https://github.com/opencv/opencv

	(OpenCV4 Contrib): https://github.com/opencv/opencv_contrib

	(ROS2 Image Common): https://github.com/ros-perception/image_common

	(ROS2 OpenCV): https://github.com/ros-perception/vision_opencv

	(Pangolin): https://github.com/stevenlovegrove/Pangolin

	(ORB_SLAM3): https://github.com/egdw/ORB_SLAM3_Ubuntu20.04

	(ORBS_SLAM3 ROS2 Wrapper): https://github.com/ozandmrz/orb_slam3_ros2_mono_publisher	[Forked]



	(Installation of ROS2): https://github.com/ozandmrz/ros2_raspberry_pi_5


## Software Required

1. ROS2 (Humble Hawksbill)
2. Ubuntu (20.04 - Focal)
3. Eigen3 (3.3.7)
4. G2O ()
5. Sophus ()
6. Pangolin (4.5.0)
7. OpenGL (3.1)
8. OpenCV (4.12.0-dev)
9. CMAKE (3.25.1)
10. ORB-SLAM3
11. Raspian OS (12 (bookworm))
12. Mesa (23.2.1-1~bpo12+rpt3)


## Hardware Used

1. Raspberry Pi 5 ()
2. Raspberry Pi Fan & Heatsink
3. Raspberry Pi Power Adaptor (minimum 27 Watts)
4. 256 GB Mircro SD Card
5. Microsoft Kinect V1
6. External Web Camera


## Build the Project

"The build commands in the file build.sh installs all the required software, \
frameworks and any additional dependencies required by the user automatically"

- Clone the project:

	git clone https://github.com/eshan-sud/minor-project


- Run these conmmands on the shell

	cd ~/minor-project/

	chmod +x build.sh
 
	./build.sh

 		
- Additonal Instructions:

	-When prompted to choose mode when changin GCC version to 11 ; Enter the value '0'


## Contact the author

- <email to="mailto:eshansud22@gmail.com">eshansud22@gmail.com</email>


