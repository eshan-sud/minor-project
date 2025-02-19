

echo ""
echo "-----------------Starting downgradation of GCC version to 11...-----------------"
echo ""


sudo apt-get update
sudo apt-get install -y gcc-11 g++-11
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 60 --slave /usr/bin/g++ g++ /usr/bin/g++-11
sudo update-alternatives --config gcc # Choose auto mode (0) to set /usr/bin/gcc-11

gcc --version # Verify gcc Version

echo ""
echo "-----------------GCC version downgraded to 11-----------------------------------"
echo ""

