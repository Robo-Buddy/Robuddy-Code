# Install script for directory: /home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/athomaz/vector_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_perception_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/NonPlanarSegClusters.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegClusters.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/SegPlanes.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ClusterIndex.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/BasicFeatures.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ShapeHist.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ColorHist.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OrientedBoundingBox.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/OtherFeatures.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ViewpointHist.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ObjectFeatures.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/PlaneFeatures.msg"
    "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg/ExtractedFeaturesArray.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_perception_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/hlpr_perception/hlpr_perception_msgs/catkin_generated/installspace/hlpr_perception_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/include/hlpr_perception_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/roseus/ros/hlpr_perception_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/common-lisp/ros/hlpr_perception_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/hlpr_perception_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/hlpr_perception_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/athomaz/vector_ws/build/hlpr_perception/hlpr_perception_msgs/catkin_generated/installspace/hlpr_perception_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_perception_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/hlpr_perception/hlpr_perception_msgs/catkin_generated/installspace/hlpr_perception_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_perception_msgs/cmake" TYPE FILE FILES
    "/home/athomaz/vector_ws/build/hlpr_perception/hlpr_perception_msgs/catkin_generated/installspace/hlpr_perception_msgsConfig.cmake"
    "/home/athomaz/vector_ws/build/hlpr_perception/hlpr_perception_msgs/catkin_generated/installspace/hlpr_perception_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hlpr_perception_msgs" TYPE FILE FILES "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

