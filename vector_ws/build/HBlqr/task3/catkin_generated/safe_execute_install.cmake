execute_process(COMMAND "/home/athomaz/vector_ws/build/HBlqr/task3/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/athomaz/vector_ws/build/HBlqr/task3/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
