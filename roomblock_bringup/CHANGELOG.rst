^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package roomblock_bringup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.0.1 (2017-04-13)
------------------
* Add remote operation setting for gmapping launch
* Change operation mode from full to safe
* cleanup package.xml/CMakeLists.txt, update run_depends with roslaunch_add_file_check
* Add launch_rviz to teleop_joy launch
* Add raspi camera module launch
* Modify device install scripts
* Append package dependencies
* Add xbox joypad config and make it default
* Add scripts for udev.rules
* Add joypad teleop launch file and config file
  - We need config file for joypads we usually use
* Add doc/ and README.md
* Insert robot_pose_ekf to publish odom frame
* Fix rviz launch arg
* Fix rviz launch arg
* Organize roomblock_bringup launch files
  - change controller from "roomblock" to "roomba"
* delete unused launch file
* Merge branch 'master' of https://github.com/longjie/roomblock
* Change the way to launch rplidar_ros
* Merge branch 'master' of https://github.com/longjie/roomblock
  Conflicts:
  roomblock_description/urdf/roomba500.urdf.xacro
* Change to run amcl
* Change device name to use symlink
* Add roomblock_bringup
* Contributors: Ryosuke Tajima, Tokyo Opensource Robotics Developer 534
