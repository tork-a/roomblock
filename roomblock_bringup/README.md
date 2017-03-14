# roomblock_bringup

Bringup files for Roomblock.

# How to bringup

## Using real robot interface

Make sure the roomblock and roomba are connected correctly.
Run the launch file on the terminal in the Rapsberry Pi on board.
```
roslaunch roomblock_bringup roomblock.launch
```

## Using fake robot interface

You can visualize the robot in rviz even you don't have the hardware.
Run the launch file on the terminal in arbitrary host.

```
roslaunch roomblock_bringup roomblock.launch simulation:=true launch_rviz:=true launch_rplidar:=false
```

RPLIDAR should begin to spin.

# Control the robot with teleop_twist_keyboard

You can try the teleop control with both of read/fake interface.

```
$ rosrun teleop_twist_keyboard teleop_twist_keyboard.py 
```

Now you can control the robot with the keyboard.
