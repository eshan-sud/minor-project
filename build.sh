

cd ~/minor-project # Change this to location of the minor-project repository

echo ""
echo "-----------------Starting Installation of SLAM for 3D Mapping...----------------"
echo ""


cd scripts/
chmod u+x+rw *.sh
./clone_repos.sh # Clone required repositories
./install_deps.sh # Clone required repositories
./downgrade_gcc.sh # Downgrade GCC version to 11
./install_opencv.sh # Install OpenCV4
cd ../../../scripts/
./install_pangolin.sh # Install Pangolin
cd ../../../scripts/
./install_ros2.sh # Install ROS2 (Humble Hawksbill)
./install_ # Install CV_Bridge
./install_orb_slam3.sh # Install ORB_SLAM3
./download_tum_dataset.sh # Downloading the TUM Dataset

# ./execute_orb_slam3_monocular.sh # Execute Monocular ORB-SLAM3 on TUM Dataset

# IN PROGRESS # Publishing ORB_SLAM3 in ROS2:


echo ""
echo "-----------------SLAM installed---------------------------------------------------"
echo ""


