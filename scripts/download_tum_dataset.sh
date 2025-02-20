

echo ""
echo "-----------------Starting installation of TUM Dataset...-------------------------"
echo ""


# TUM
cd ~/minor-project
mkdir -p Datasets/TUM/ && cd Datasets/TUM/
wget http://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk.tgz
tar -xvzf rgbd_dataset_freiburg1_desk.tgz
# EuRoC
mkdir -p Datasets/EuRoC/ && cd Dataseys/EuRoC/
wget http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/machine_hall/MH_01_easy/MH_01_easy.zip
mkdir MH01
unzip MH_01_easy.zip -d MH01/


# Download Vocabulary
cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/Vocabulary/
wget https://github.com/UZ-SLAMLab/ORB_SLAM3/raw/master/Vocabulary/ORBvoc.txt.tar.gz # Download the Vocabulary
tar -xvzf ORBvoc.txt.tar.gz # Extract Vocabulary


echo ""
echo "-----------------TUM Dataset & its Vocabulary installed--------------------------"
echo ""


