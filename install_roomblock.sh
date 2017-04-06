#!/bin/sh -ex

# add raspi ppa
sudo add-apt-repository -y ppa:ubuntu-raspi2/ppa

# ROS kinetic install
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt update
sudo apt -y dist-upgrade
sudo apt -y purge cloud-init
sudo apt -y install ros-kinetic-desktop-full
sudo apt -y clean
