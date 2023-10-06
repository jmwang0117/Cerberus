# CMake generated Testfile for 
# Source directory: /root/wheeltec_robot/src/unique_identifier/unique_id/tests
# Build directory: /root/wheeltec_robot/build/unique_identifier/unique_id/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_unique_id_gtest_test_unique_id "/root/wheeltec_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/root/wheeltec_robot/build/test_results/unique_id/gtest-test_unique_id.xml" "--return-code" "/root/wheeltec_robot/devel/lib/unique_id/test_unique_id --gtest_output=xml:/root/wheeltec_robot/build/test_results/unique_id/gtest-test_unique_id.xml")
add_test(_ctest_unique_id_nosetests_test_unique_id.py "/root/wheeltec_robot/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/root/wheeltec_robot/build/test_results/unique_id/nosetests-test_unique_id.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /root/wheeltec_robot/build/test_results/unique_id" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /root/wheeltec_robot/src/unique_identifier/unique_id/tests/test_unique_id.py --with-xunit --xunit-file=/root/wheeltec_robot/build/test_results/unique_id/nosetests-test_unique_id.py.xml")
