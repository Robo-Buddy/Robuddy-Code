execute_process(COMMAND "/home/kristopher/vector_ws/build/vector_v1/vector_common/vector_third_party/dynamixel_motor/dynamixel_controllers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kristopher/vector_ws/build/vector_v1/vector_common/vector_third_party/dynamixel_motor/dynamixel_controllers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()