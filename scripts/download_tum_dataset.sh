

echo ""
echo "-----------------Starting installation of TUM Dataset...-------------------------"
echo ""


cd ~/minor-project
mkdir -p Datasets/TUM/ && cd Datasets/TUM/
wget http://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk.tgz
tar -xvzf rgbd_dataset_freiburg1_desk.tgz
cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04/Vocabulary/
wget https://github.com/UZ-SLAMLab/ORB_SLAM3/raw/master/Vocabulary/ORBvoc.txt.tar.gz # Download the Vocabulary
tar -xvzf ORBvoc.txt.tar.gz # Extract Vocabulary

echo ""
echo "-----------------TUM Dataset & its Vocabulary installed--------------------------"
echo ""


