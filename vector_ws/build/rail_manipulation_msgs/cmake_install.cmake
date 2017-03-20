# Install script for directory: /home/athomaz/vector_ws/src/rail_manipulation_msgs

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/msg/Grasp.msg"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/msg/GraspingState.msg"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/msg/SegmentedObject.msg"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/msg/SegmentedObjectList.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/srv" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/srv/CallIK.srv"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/srv/CartesianPath.srv"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/srv/PrepareGrasp.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/action" TYPE FILE FILES
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/Arm.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/Gripper.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/Lift.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/MoveToJointPose.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/MoveToPose.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/Pickup.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/Primitive.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/RecognizeObject.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/Store.action"
    "/home/athomaz/vector_ws/src/rail_manipulation_msgs/action/VerifyGrasp.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/ArmFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/GripperFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/LiftFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/MoveToPoseFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PickupFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/PrimitiveFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/RecognizeObjectFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/StoreFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspAction.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspActionGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspActionResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspActionFeedback.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspGoal.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspResult.msg"
    "/home/athomaz/vector_ws/devel/share/rail_manipulation_msgs/msg/VerifyGraspFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/include/rail_manipulation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/roseus/ros/rail_manipulation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/share/common-lisp/ros/rail_manipulation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/rail_manipulation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/athomaz/vector_ws/devel/lib/python2.7/dist-packages/rail_manipulation_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/athomaz/vector_ws/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/cmake" TYPE FILE FILES "/home/athomaz/vector_ws/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/cmake" TYPE FILE FILES
    "/home/athomaz/vector_ws/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgsConfig.cmake"
    "/home/athomaz/vector_ws/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs" TYPE FILE FILES "/home/athomaz/vector_ws/src/rail_manipulation_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

