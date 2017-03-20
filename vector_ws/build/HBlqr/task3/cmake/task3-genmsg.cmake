# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "task3: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(task3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv" NAME_WE)
add_custom_target(_task3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "task3" "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv" "geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(task3
  "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task3
)

### Generating Module File
_generate_module_cpp(task3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(task3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(task3_generate_messages task3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv" NAME_WE)
add_dependencies(task3_generate_messages_cpp _task3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task3_gencpp)
add_dependencies(task3_gencpp task3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(task3
  "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task3
)

### Generating Module File
_generate_module_eus(task3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(task3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(task3_generate_messages task3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv" NAME_WE)
add_dependencies(task3_generate_messages_eus _task3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task3_geneus)
add_dependencies(task3_geneus task3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(task3
  "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task3
)

### Generating Module File
_generate_module_lisp(task3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(task3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(task3_generate_messages task3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv" NAME_WE)
add_dependencies(task3_generate_messages_lisp _task3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task3_genlisp)
add_dependencies(task3_genlisp task3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task3_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(task3
  "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3
)

### Generating Module File
_generate_module_py(task3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(task3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(task3_generate_messages task3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/HBlqr/task3/srv/object_frame_data.srv" NAME_WE)
add_dependencies(task3_generate_messages_py _task3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(task3_genpy)
add_dependencies(task3_genpy task3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS task3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/task3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(task3_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(task3_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/task3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(task3_generate_messages_eus geometry_msgs_generate_messages_eus)
add_dependencies(task3_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/task3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(task3_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(task3_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/task3/.+/__init__.pyc?$"
  )
endif()
add_dependencies(task3_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(task3_generate_messages_py std_msgs_generate_messages_py)
