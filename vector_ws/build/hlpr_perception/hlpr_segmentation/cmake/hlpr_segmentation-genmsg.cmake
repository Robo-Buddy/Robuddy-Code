# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hlpr_segmentation: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ihlpr_segmentation:/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hlpr_segmentation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg" NAME_WE)
add_custom_target(_hlpr_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_segmentation" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg" "std_msgs/Int32"
)

get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg" NAME_WE)
add_custom_target(_hlpr_segmentation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hlpr_segmentation" "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg" "sensor_msgs/PointField:std_msgs/Int32:std_msgs/MultiArrayLayout:hlpr_segmentation/ClusterIndex:sensor_msgs/PointCloud2:std_msgs/Header:std_msgs/Float32MultiArray:std_msgs/MultiArrayDimension"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_segmentation
)
_generate_msg_cpp(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_segmentation
)

### Generating Services

### Generating Module File
_generate_module_cpp(hlpr_segmentation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_segmentation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hlpr_segmentation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hlpr_segmentation_generate_messages hlpr_segmentation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_cpp _hlpr_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_cpp _hlpr_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_segmentation_gencpp)
add_dependencies(hlpr_segmentation_gencpp hlpr_segmentation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_segmentation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_segmentation
)
_generate_msg_eus(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_segmentation
)

### Generating Services

### Generating Module File
_generate_module_eus(hlpr_segmentation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_segmentation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hlpr_segmentation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hlpr_segmentation_generate_messages hlpr_segmentation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_eus _hlpr_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_eus _hlpr_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_segmentation_geneus)
add_dependencies(hlpr_segmentation_geneus hlpr_segmentation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_segmentation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_segmentation
)
_generate_msg_lisp(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_segmentation
)

### Generating Services

### Generating Module File
_generate_module_lisp(hlpr_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_segmentation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hlpr_segmentation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hlpr_segmentation_generate_messages hlpr_segmentation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_lisp _hlpr_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_lisp _hlpr_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_segmentation_genlisp)
add_dependencies(hlpr_segmentation_genlisp hlpr_segmentation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_segmentation_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_segmentation
)
_generate_msg_py(hlpr_segmentation
  "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_segmentation
)

### Generating Services

### Generating Module File
_generate_module_py(hlpr_segmentation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_segmentation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hlpr_segmentation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hlpr_segmentation_generate_messages hlpr_segmentation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/ClusterIndex.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_py _hlpr_segmentation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/athomaz/vector_ws/src/hlpr_perception/hlpr_segmentation/msg/SegmentedClusters.msg" NAME_WE)
add_dependencies(hlpr_segmentation_generate_messages_py _hlpr_segmentation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hlpr_segmentation_genpy)
add_dependencies(hlpr_segmentation_genpy hlpr_segmentation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hlpr_segmentation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hlpr_segmentation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_segmentation_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(hlpr_segmentation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(hlpr_segmentation_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hlpr_segmentation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_segmentation_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(hlpr_segmentation_generate_messages_eus geometry_msgs_generate_messages_eus)
add_dependencies(hlpr_segmentation_generate_messages_eus sensor_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_segmentation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hlpr_segmentation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_segmentation_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(hlpr_segmentation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(hlpr_segmentation_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_segmentation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_segmentation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hlpr_segmentation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hlpr_segmentation_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(hlpr_segmentation_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(hlpr_segmentation_generate_messages_py sensor_msgs_generate_messages_py)
