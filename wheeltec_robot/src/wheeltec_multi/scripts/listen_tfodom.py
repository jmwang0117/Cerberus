#!/usr/bin/env python
# coding=utf-8
# 从车接收主车坐标以及主车速度，并通过话题multfodom发布出来

import math
import rospy
import socket
import struct
from std_msgs.msg import Float32MultiArray


def FrameListener():
	rospy.init_node('listen_tfodom')
	pub = rospy.Publisher('multfodom', Float32MultiArray, queue_size=10)
	soc=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
	soc.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 30)
	soc.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)#udp 广播
	soc.bind(('',10000))
	rate = rospy.Rate(15.0)
	while not rospy.is_shutdown():
		data, address = soc.recvfrom(30)
		(posx,posy,posaz,odomvx,odomvy,odomaz) = struct.unpack("ffffff",data)
		print(posx,posy,posaz,odomvx,odomvy,odomaz)
		msg = Float32MultiArray()
		msg.data.append(posx)
		msg.data.append(posy)
		msg.data.append(posaz)
		msg.data.append(odomvx)
		msg.data.append(odomvy)
		msg.data.append(odomaz)
		pub.publish(msg)
		rate.sleep()

if __name__ == '__main__':
    try:
        FrameListener()
    except rospy.ROSInterruptException:
        pass

