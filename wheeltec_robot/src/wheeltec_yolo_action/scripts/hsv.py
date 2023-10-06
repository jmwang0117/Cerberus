#!/usr/bin/env python
# coding=utf-8

import rospy
from sensor_msgs.msg import Image
import cv2, cv_bridge
import numpy

from dynamic_reconfigure.server import Server
from wheeltec_yolo_action.cfg import hsvConfig


def nothing(s):
    pass
col_black = (0,0,0,180,255,46)# black
col_red = (0,50,60,14,255,255)# red
col_blue = (100,43,46,124,255,255)# blue
col_green= (35,43,46,77,255,255)# green
col_yellow = (26,43,46,34,255,255)# yellow



class Follower:
    def __init__(self):
        self.hsv_params = Server(hsvConfig, self.hsvconfig)
        self.HSV_H_min=col_red[0]
        self.HSV_S_min=col_red[1]
        self.HSV_V_min=col_red[2]
        self.HSV_H_max=col_red[3]
        self.HSV_S_max=col_red[4]
        self.HSV_V_max=col_red[5]
        self.bridge = cv_bridge.CvBridge()
        self.image_sub = rospy.Subscriber("/camera/rgb/image_raw", Image, self.image_callback)
        self.drive_line_pub = rospy.Publisher("/drive_line", Image, queue_size=1)

    def image_callback(self, msg):
		
        image1 = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')
        image = cv2.resize(image1, (320,240), interpolation=cv2.INTER_AREA)
        hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)


        mask1=cv2.inRange(hsv,(self.HSV_H_min,self.HSV_S_min,self.HSV_V_min),(self.HSV_H_max,self.HSV_S_max,self.HSV_V_max))
        mask2=cv2.inRange(hsv,(self.HSV_H_min+165,self.HSV_S_min,self.HSV_V_min),(self.HSV_H_max+170,self.HSV_S_max,self.HSV_V_max))
        mask = cv2.bitwise_or(mask1, mask2)
        kernel = numpy.ones((3,3),numpy.uint8)
        hsv_erode = cv2.erode(mask,kernel,iterations=1)
        mask = cv2.dilate(hsv_erode,kernel,iterations=1)

        # cv2.imshow("Adjust_hsv", mask)
        # cv2.waitKey(1)
        self.drive_line_pub.publish(self.bridge.cv2_to_imgmsg(mask,'mono8'))


    def hsvconfig(self,config,level):
        self.HSV_H_min = config.HSV_H_min
        self.HSV_S_min = config.HSV_S_min
        self.HSV_V_min = config.HSV_V_min
        self.HSV_H_max = config.HSV_H_max
        self.HSV_S_max = config.HSV_S_max
        self.HSV_V_max = config.HSV_V_max
        return config



rospy.init_node("hsv")
follower = Follower()
rospy.spin()



