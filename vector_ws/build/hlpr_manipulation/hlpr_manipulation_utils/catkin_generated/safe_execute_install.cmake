execute_process(COMMAND "/home/kristopher/vector_ws/build/hlpr_manipulation/hlpr_manipulation_utils/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kristopher/vector_ws/build/hlpr_manipulation/hlpr_manipulation_utils/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
