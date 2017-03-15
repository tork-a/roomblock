# roomblock_mapping package

This package contains launch and config files for mapping on Roomblock
system. This can be used to evaluate various mapping packages, such as
gmapping, karto, hector and cartographer.

# How to try

The default bag file is in bags/ directory.

## gmapping package

```
$ roslaunch roomblock_mapping gmapping.launch
```

## slam_karto package

```
$ roslaunch roomblock_mapping karto.launch
```

## hector_mapping package

```
$ roslaunch roomblock_mapping hector.launch
```

## cartographer_ros package

```
$ roslaunch roomblock_mapping cartographer.launch
```

## Results

![gmapping](maps/living_room/gmapping/map.pgm)

![karto_slam](maps/living_room/karto/map.pgm)

![hector_mapping](maps/living_room/hector/map.pgm)

![Google Cartographer](maps/living_room/cartographer/map.pgm)
