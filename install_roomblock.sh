#!/bin/sh -ex

# It is safe for qemu install
apt-mark hold linux-headers-raspi2 linux-image-raspi2 linux-raspi2

# add raspi ppa
add-apt-repository -y ppa:ubuntu-raspi2/ppa

# ROS kinetic install
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# For healthy network setting by network-manager
apt -y purge cloud-init
rm -f /etc/network/interfaces.d/*
rm -rf /etc/cloud

apt update
apt -y install network-manager
apt -y install ros-kinetic-desktop ros-kinetic-navigation ros-kinetic-perception
apt -y install libraspberrypi0 libraspberrypi-bin libraspberrypi-bin-nonfree
# some files in libraspberrypi-dev conflict a system package :-(
apt -y download libraspberrypi-dev
dpkg -i --force-overwrite libraspberrypi-dev*.deb 
apt -y clean

# Add config for USB current and camera (USB current setting may not be needed)
sh -c "echo 'max_usb_current=1' >> /boot/config.txt"
sh -c "echo 'start_x=1' >> /boot/config.txt"
sh -c "echo 'gpu_mem=128' >> /boot/config.txt"

# fix buggy rtl8192cu driver
apt -y install dkms
cd /tmp
git clone https://github.com/pvaret/rtl8192cu-fixes.git
dkms add rtl8192cu-fixes
dkms install 8192cu/1.10
depmod -a
cp -p rtl8192cu-fixes/blacklist-native-rtl8192.conf /etc/modprobe.d/
cp -p rtl8192cu-fixes/8192cu-disable-power-management.conf /etc/modprobe.d/

echo "Roomblock install finished. Please reboot!"
