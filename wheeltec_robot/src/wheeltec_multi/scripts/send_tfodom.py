#!/usr/bin/env python
# coding=utf-8
# 主车发送主车坐标以及主车速度给从车

import math
import rospy
import socket
import sys
import struct
import tf
from numpy import array

from geometry_msgs.msg import TransformStamped
from nav_msgs.msg import Odometry  

odom_vx = 0
odom_vy = 0
odom_az = 0

def odom_callback(msg):
	global odom_vx,odom_vy,odom_az
	odom_vx = msg.twist.twist.linear.x
	odom_vy = msg.twist.twist.linear.y
	odom_az = msg.twist.twist.angular.z
	print(odom_vx,odom_vy,odom_az)

def publishOdom():
	global odom_vx,odom_vy,odom_az
	rospy.init_node('send_tfodom')
	rospy.Subscriber('odom',Odometry,odom_callback)
	listener = tf.TransformListener()
	soc=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
	soc.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)#udp 广播
	network = '<broadcast>'
	rate = rospy.Rate(15.0)
	while not rospy.is_shutdown():
		try:
			(trans,rot) = listener.lookupTransform("map","base_link",rospy.Time(0))
		except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
			#print("i cannt reciver")
			rospy.Duration(1.0)
			continue
		(roll,pitch,yaw) = tf.transformations.euler_from_quaternion(rot)
		send_data = struct.pack("ffffff",trans[0],trans[1],yaw,odom_vx,odom_vy,odom_az)
		soc.sendto(send_data, (network,10000))
		print(trans[0],trans[1],yaw,odom_vx,odom_vy,odom_az)
		rate.sleep()

if __name__ == '__main__':
    try:
        publishOdom()
    except rospy.ROSInterruptException:
        soc.close()
        pass
