# Install script for directory: /home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vector_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/ConfigCmd.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Battery.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Status.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Propulsion.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Dynamics.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Configuration.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/CtlParams.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/Faultlog.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoJointCmd.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoStatus.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperCmd.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/GripperStat.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/LinearActuatorCmd.msg"
    "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/msg/JacoCartesianVelocityCmd.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vector_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/vector_v1/vector_common/vector_msgs/catkin_generated/installspace/vector_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/include/vector_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/roseus/ros/vector_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/common-lisp/ros/vector_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/vector_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/vector_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/athomaz/vector_ws/build/vector_v1/vector_common/vector_msgs/catkin_generated/installspace/vector_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vector_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/vector_v1/vector_common/vector_msgs/catkin_generated/installspace/vector_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vector_msgs/cmake" TYPE FILE FILES
    "/home/athomaz/vector_ws/build/vector_v1/vector_common/vector_msgs/catkin_generated/installspace/vector_msgsConfig.cmake"
    "/home/athomaz/vector_ws/build/vector_v1/vector_common/vector_msgs/catkin_generated/installspace/vector_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vector_msgs" TYPE FILE FILES "/home/athomaz/vector_ws/src/vector_v1/vector_common/vector_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

