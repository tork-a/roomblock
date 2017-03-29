#!/bin/bash

echo "delete remap the device serial port(ttyUSBX) to roomba"
echo "sudo rm /etc/udev/rules.d/roomba.rules"
sudo rm /etc/udev/rules.d/roomba.rules
echo "delete remap the device serial port(ttyUSBX) to  rplidar"
echo "sudo rm   /etc/udev/rules.d/rplidar.rules"
sudo rm   /etc/udev/rules.d/rplidar.rules
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish  delete"
