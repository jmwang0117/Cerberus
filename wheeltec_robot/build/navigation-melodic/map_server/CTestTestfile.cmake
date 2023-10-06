# CMake generated Testfile for 
# Source directory: /root/wheeltec_robot/src/navigation-melodic/map_server
# Build directory: /root/wheeltec_robot/build/navigation-melodic/map_server
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_map_server_gtest_map_server_utest "/root/wheeltec_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/root/wheeltec_robot/build/test_results/map_server/gtest-map_server_utest.xml" "--return-code" "/root/wheeltec_robot/devel/lib/map_server/map_server_utest --gtest_output=xml:/root/wheeltec_robot/build/test_results/map_server/gtest-map_server_utest.xml")
add_test(_ctest_map_server_rostest_test_rtest.xml "/root/wheeltec_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/root/wheeltec_robot/build/test_results/map_server/rostest-test_rtest.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/root/wheeltec_robot/src/navigation-melodic/map_server --package=map_server --results-filename test_rtest.xml --results-base-dir \"/root/wheeltec_robot/build/test_results\" /root/wheeltec_robot/src/navigation-melodic/map_server/test/rtest.xml ")
