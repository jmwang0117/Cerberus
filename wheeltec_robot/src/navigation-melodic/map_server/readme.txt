只修改了一个类。
在map_saver.cpp中添加了YamlEndPose类

然后在turn_on_wheeltec_robot->launch->include下，在amcl.launch中添加<rosparam command="load" file="$(find turn_on_wheeltec_robot)/map/WHEELTEC_end.yaml" />读取位姿。（建议默认将其注释
