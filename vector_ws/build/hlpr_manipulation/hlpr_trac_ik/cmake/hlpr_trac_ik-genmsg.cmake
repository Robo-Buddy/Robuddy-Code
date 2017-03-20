# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hlpr_trac_ik: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/indigo/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hlpr_trac_ik_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv" NAME_WE)
add_custom_target(_hlpr_trac_ik_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_trac_ik" "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv" "geometry_msgs/Quaternion:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Point:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(hlpr_trac_ik
  "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_trac_ik
)

### Generating Module File
_generate_module_cpp(hlpr_trac_ik
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_trac_ik
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hlpr_trac_ik_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hlpr_trac_ik_generate_messages hlpr_trac_ik_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv" NAME_WE)
add_dependencies(hlpr_trac_ik_generate_messages_cpp _hlpr_trac_ik_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_trac_ik_gencpp)
add_dependencies(hlpr_trac_ik_gencpp hlpr_trac_ik_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_trac_ik_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(hlpr_trac_ik
  "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_trac_ik
)

### Generating Module File
_generate_module_eus(hlpr_trac_ik
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_trac_ik
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hlpr_trac_ik_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hlpr_trac_ik_generate_messages hlpr_trac_ik_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv" NAME_WE)
add_dependencies(hlpr_trac_ik_generate_messages_eus _hlpr_trac_ik_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_trac_ik_geneus)
add_dependencies(hlpr_trac_ik_geneus hlpr_trac_ik_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_trac_ik_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(hlpr_trac_ik
  "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_trac_ik
)

### Generating Module File
_generate_module_lisp(hlpr_trac_ik
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_trac_ik
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hlpr_trac_ik_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hlpr_trac_ik_generate_messages hlpr_trac_ik_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv" NAME_WE)
add_dependencies(hlpr_trac_ik_generate_messages_lisp _hlpr_trac_ik_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_trac_ik_genlisp)
add_dependencies(hlpr_trac_ik_genlisp hlpr_trac_ik_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_trac_ik_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(hlpr_trac_ik
  "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_trac_ik
)

### Generating Module File
_generate_module_py(hlpr_trac_ik
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_trac_ik
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hlpr_trac_ik_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hlpr_trac_ik_generate_messages hlpr_trac_ik_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_manipulation/hlpr_trac_ik/srv/IKHandler.srv" NAME_WE)
add_dependencies(hlpr_trac_ik_generate_messages_py _hlpr_trac_ik_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_trac_ik_genpy)
add_dependencies(hlpr_trac_ik_genpy hlpr_trac_ik_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_trac_ik_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_trac_ik)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_trac_ik
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_trac_ik_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(hlpr_trac_ik_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(hlpr_trac_ik_generate_messages_cpp trajectory_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_trac_ik)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_trac_ik
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_trac_ik_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(hlpr_trac_ik_generate_messages_eus geometry_msgs_generate_messages_eus)
add_dependencies(hlpr_trac_ik_generate_messages_eus trajectory_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_trac_ik)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_trac_ik
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_trac_ik_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(hlpr_trac_ik_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(hlpr_trac_ik_generate_messages_lisp trajectory_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_trac_ik)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_trac_ik\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_trac_ik
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_trac_ik_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(hlpr_trac_ik_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(hlpr_trac_ik_generate_messages_py trajectory_msgs_generate_messages_py)
