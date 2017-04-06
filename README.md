# Roomblock

Roomblock is a robot platform consists of a Roomba, a Raspberry Pi 2,
a RPLIDAR A2 and a mobile battery. It is good for the learning of the
ROS navigation system.

![Overview of Roomblock system](doc/img/roomblock.jpg)

## Hardware

### Roomba

Roomba 500, 600 and 700 series are available.

### Raspberry Pi

Raspberry Pi 2 Model B is required.

Raspberry Pi 3 has not beconfirmed yet.

### Wifi dongle

- [Wifi dongle](https://www.amazon.co.jp/gp/product/B00ESA34GA)
- [Wifi dongle with antena](https://www.amazon.co.jp/gp/product/B00JWFCDGI)

http://denshikousaku.net/fix-sluggish-response-of-raspberry-pi-wifi-adaptor
https://ubuntuforums.org/showthread.php?t=2282336
http://l-w-i.net/t/ubuntu/wifi_001.txt

### USB serial cable

This cable should be very handy.

http://akizukidenshi.com/catalog/g/gM-05841/

### Frame

3D printable data are available in [doc/stl](doc/stl) directory.

# Install

Download the image file from https://wiki.ubuntu.com/ARM/RaspberryPi#Raspberry_Pi
```
$ unxz ubuntu-16.04.2-preinstalled-server-armhf+raspi2.img.xz
$ dd bs=4M if=ubuntu-16.04.2-preinstalled-server-armhf+raspi2.img of=<dev file of SD card>
```

Clone roomblock source code:
```
$ git clone https://github.com/tork-a/roomblock.git
$ cd ~/catkin_ws
$ rosdep install --from-paths src --ignore-src -r -y
$ catkin_make
```

Rasberry PI camera setup

```
$ apt download libraspberrypi-dev
$ sudo dpkg -i --force-overwrite libraspberrypi-dev.deb
$ git clone https://github.com/UbiquityRobotics/raspicam_node.git
$ catkin_make
```
