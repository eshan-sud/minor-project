

echo ""
echo "-----------------Starting installation of Pangolin...----------------------------"
echo ""


cd Pangolin
./scripts/install_prerequisites.sh recommended
mkdir -p build && cd build
cmake .. -D CMAKE_BUILD_TYPE=Release && make -j $(nproc - 1)
sudo make install

cd ./examples/HelloPangolin/HelloPangolin # Verify Pangolin Installation
# Verify Pangolin dependencies
#glxinfo | grep "OpenGL version" # OpenGL 
#dpkg -l | grep glew # GLEW
ls /usr/include/eigen3/Eigen # eigen3


echo ""
echo "-----------------Pangolin installed----------------------------------------------"
echo ""


