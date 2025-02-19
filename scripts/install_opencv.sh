

echo ""
echo "-----------------Starting installation of OpenCV...-----------------------------"
echo ""


cd OpenCV/opencv_contrib && git checkout master
cd ../opencv/ && git checkout master
mkdir -p build
cd build
cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=~/minor-project/OpenCV/opencv_contrib/modules \
      -D ENABLE_CXX11=ON .. \
      -D ENABLE_PKG_CONFIG=ON ..
make -j 3
sudo make install

opencv_version # Check OpenCV version

echo ""
echo "-----------------OpenCV installed------------------------------------------------"
echo ""
