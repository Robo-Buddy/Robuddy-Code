# Install script for directory: /home/athomaz/vector_ws/src/wpi_jaco_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/msg/AngularCommand.msg"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/msg/CartesianCommand.msg"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/msg/JacoFingerVel.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/srv" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/EStop.srv"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/GetAngularPosition.srv"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/JacoFK.srv"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
    "/home/athomaz/vector_ws/src/wpi_jaco_msgs/srv/GravComp.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/action" TYPE FILE FILES "/home/athomaz/vector_ws/src/wpi_jaco_msgs/action/HomeArm.action")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
    "/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/include/wpi_jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/roseus/ros/wpi_jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/common-lisp/ros/wpi_jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/wpi_jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/wpi_jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/athomaz/vector_ws/build/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/cmake" TYPE FILE FILES
    "/home/athomaz/vector_ws/build/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgsConfig.cmake"
    "/home/athomaz/vector_ws/build/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs" TYPE FILE FILES "/home/athomaz/vector_ws/src/wpi_jaco_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

