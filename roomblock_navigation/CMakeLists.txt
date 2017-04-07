cmake_minimum_required(VERSION 2.8.3)
project(roomblock_navigation)

find_package(catkin REQUIRED)

###################################
## catkin specific configuration ##
###################################
catkin_package()

#############
## Install ##
#############

install(DIRECTORY launch config map
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

#############
## Testing ##
#############

if(CATKIN_ENABLE_TESTING)
  find_package(catkin REQUIRED COMPONENTS rostest roslaunch)
  file(GLOB LAUNCH_FILES launch/*.launch)
  foreach(LAUNCH_FILE ${LAUNCH_FILES})
    message(status "Testing ${LAUNCH_FILE}")
    roslaunch_add_file_check(${LAUNCH_FILE})
  endforeach()
endif()
