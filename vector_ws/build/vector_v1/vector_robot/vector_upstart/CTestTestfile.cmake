# CMake generated Testfile for 
# Source directory: /home/kristopher/vector_ws/src/vector_v1/vector_robot/vector_upstart
# Build directory: /home/kristopher/vector_ws/build/vector_v1/vector_robot/vector_upstart
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_vector_upstart_roslint_package "/home/kristopher/vector_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/kristopher/vector_ws/build/test_results/vector_upstart/roslint-vector_upstart.xml" "--working-dir" "/home/kristopher/vector_ws/build/vector_v1/vector_robot/vector_upstart" "--return-code" "/opt/ros/indigo/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/kristopher/vector_ws/build/test_results/vector_upstart/roslint-vector_upstart.xml make roslint_vector_upstart")
ADD_TEST(_ctest_vector_upstart_nosetests_test "/home/kristopher/vector_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/kristopher/vector_ws/build/test_results/vector_upstart/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/kristopher/vector_ws/build/test_results/vector_upstart" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/kristopher/vector_ws/src/vector_v1/vector_robot/vector_upstart/test --with-xunit --xunit-file=/home/kristopher/vector_ws/build/test_results/vector_upstart/nosetests-test.xml")
