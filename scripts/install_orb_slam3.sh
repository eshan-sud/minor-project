

echo ""
echo "-----------------Starting installation of ORB_SLAM3...---------------------------"
echo ""


cd ~/minor-project/ORB_SLAM3/ORB_SLAM3_Ubuntu20.04
echo ""
echo "-----------------Configuring and building Thirdparty/DBoW2...--------------------"
echo ""
cd Thirdparty/DBoW2
mkdir -p build && cd build
cmake .. && make -j $(nproc - 1)
cd ../../g2o
echo ""
echo "-----------------Configuring and building Thirdparty/g2o...----------------------"
echo ""
mkdir -p build && cd build
cmake .. && make -j $(nproc - 1)
cd ../../../
echo ""
echo "-----------------Uncompress vocabulary...----------------------------------------"
echo ""
cd Vocabulary && tar -xf ORBvoc.txt.tar.gz
cd ../
echo "Uncompressed..."
echo ""
echo "-----------------Configuring and building ORB-SLAM3...---------------------------"
echo ""
mkdir -p build && cd build
cmake .. && make -j $(nproc - 1)
cd ..
rosdep install --from-paths src --ignore-src -r -y


echo ""
echo "-----------------ORB_SLAM3 installed---------------------------------------------"
echo ""


