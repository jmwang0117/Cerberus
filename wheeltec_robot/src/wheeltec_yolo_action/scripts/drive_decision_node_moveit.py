#!/usr/bin/env python 
# coding=utf-8

import rospy
from std_msgs.msg import Int8
from std_msgs.msg import String 
from sensor_msgs.msg import Image
import cv2, cv_bridge
import numpy
from simple_follower.msg import position
from wheeltec_yolo_action.msg import CtrlData
import threading
import time
from darknet_ros_msgs.msg import BoundingBoxes
from geometry_msgs.msg import Twist

from dynamic_reconfigure.server import Server
from wheeltec_yolo_action.cfg import paramsConfig


out_l_mask_x_left = 0
out_l_mask_x_right = 0.5
out_l_mask_y_top = 0.5
out_l_mask_y_bot = 1
out_l_center_target = 0.20
out_l_vel_x = 0.15
out_l_vel_y_P = 0
out_l_vel_y_D = 0
out_l_vel_z_P = 0.01
out_l_vel_z_D = 0.001

out_r_mask_x_left = 0.5
out_r_mask_x_right = 1
out_r_mask_y_top = 0.5
out_r_mask_y_bot = 1
out_r_center_target = 0.75
out_r_vel_x = 0.15
out_r_vel_y_P = 0
out_r_vel_y_D = 0
out_r_vel_z_P = 0.01
out_r_vel_z_D = 0.001

col_red = (0,70,60,10,255,255)# red
col_blue = (100,43,46,124,255,255)# blue
col_green= (50,55,65,85,255,255)# green

side_flag = 0
pos_angleX = 0.0000
stop_flag = 0
stop_x = 0
stop_y = 0
last_erro_x = 0
last_erro_y = 0
control_flag = 0
last_currentState = 0
last_side = 0

block_a_flag = 0 
block_b_flag = 0
block_c_flag = 0
block_d_flag = 0
sign_a_flag = 0
sign_b_flag = 0
sign_c_flag = 0
sign_d_flag = 0

move_flag = 0

picka_flag = 0
pickb_flag = 0
pickc_flag = 0
pickd_flag = 0

erro_x=0
erro_y=0

blocka_x = 0
blocka_y = 0
blockb_x = 0
blockb_y = 0
blockc_x = 0
blockc_y = 0
blockd_x = 0
blockd_y = 0


ctrl_pub = rospy.Publisher("/ctrl_data", CtrlData, queue_size=1)

def thread_job():
	rospy.spin()
		

def control_flag_callback(msg):
	global control_flag
	control_flag = msg.data


def side_flag_callback(msg):
	global side_flag
	global stop_flag
	global block_a_flag
	global block_b_flag
	global block_c_flag
	global block_d_flag
	global sign_a_flag
	global sign_b_flag
	global sign_c_flag
	global sign_d_flag
	global stop_x
	global stop_y

	global blocka_x
	global blocka_y
	global blockb_x
	global blockb_y
	global blockc_x
	global blockc_y
	global blockd_x
	global blockd_y

	global signa_x
	global signa_y
	global signb_x
	global signb_y
	global signc_x
	global signc_y
	global signd_x
	global signd_y
	
	for boxes in msg.bounding_boxes:
		if boxes.id == 0 and boxes.probability > 0.6:
			if boxes.ymin > 250 and boxes.xmax < 400 and boxes.xmin > 240 :
				block_a_flag = 1 
				blocka_x = (boxes.xmin + boxes.xmax)/2
				blocka_y = (boxes.ymin + boxes.ymax)/2
		elif boxes.id == 1 and boxes.probability > 0.6:
			if boxes.ymin > 250 and boxes.xmax < 400 and boxes.xmin > 240 :
				block_b_flag = 1 
				blockb_x = (boxes.xmin + boxes.xmax)/2
				blockb_y = (boxes.ymin + boxes.ymax)/2
		elif boxes.id == 2 and boxes.probability > 0.6:
			if boxes.ymin > 250 and boxes.xmax < 400 and boxes.xmin > 240 :
				block_c_flag = 1 
				blockc_x = (boxes.xmin + boxes.xmax)/2
				blockc_y = (boxes.ymin + boxes.ymax)/2
		elif boxes.id == 3 and boxes.probability > 0.6:
			if boxes.ymin > 250 and boxes.xmax < 400 and boxes.xmin > 240 :
				block_d_flag = 1 
				blockd_x = (boxes.xmin + boxes.xmax)/2
				blockd_y = (boxes.ymin + boxes.ymax)/2

		elif boxes.id == 4 and boxes.probability > 0.8:
			if boxes.ymin > 200 and boxes.ymax < 450:
				sign_a_flag = 1
				if boxes.xmax < 320:
					side_flag = 1
				elif boxes.xmin > 320:
					side_flag = 2
				signa_x = (boxes.xmin + boxes.xmax)/2
				signa_y = (boxes.ymin + boxes.ymax)/2
		elif boxes.id == 5 and boxes.probability > 0.8:
			if boxes.ymin > 200 and boxes.ymax < 450:
				sign_b_flag = 1
				if boxes.xmax < 320:
					side_flag = 1
				elif boxes.xmin > 320:
					side_flag = 2
				signb_x = (boxes.xmin + boxes.xmax)/2
				signb_y = (boxes.ymin + boxes.ymax)/2
		elif boxes.id == 6 and boxes.probability > 0.8:
			if boxes.ymin > 200 and boxes.ymax < 450:
				sign_c_flag = 1
				if boxes.xmax < 320:
					side_flag = 1
				elif boxes.xmin > 320:
					side_flag = 2
				signc_x = (boxes.xmin + boxes.xmax)/2
				signc_y = (boxes.ymin + boxes.ymax)/2
		elif boxes.id == 7 and boxes.probability > 0.8:
			if boxes.ymin > 200 and boxes.ymax < 450:
				sign_d_flag = 1
				if boxes.xmax < 320:
					side_flag = 1
				elif boxes.xmin > 320:
					side_flag = 2
				signd_x = (boxes.xmin + boxes.xmax)/2
				signd_y = (boxes.ymin + boxes.ymax)/2

		elif boxes.id == 8 and boxes.probability > 0.8:
			stop_flag = 1
			stop_x = (boxes.xmin + boxes.xmax)/2
			stop_y = (boxes.ymin + boxes.ymax)/2


	# print(side_flag)
	# print("_____________")


def ctrl_data(currentState, side):
	global out_l_mask_x_left
	global out_l_mask_x_right
	global out_l_mask_y_top
	global out_l_mask_y_bot
	global out_l_center_target
	global out_l_vel_x
	global out_l_vel_y_P
	global out_l_vel_y_D
	global out_l_vel_z_P
	global out_l_vel_z_D

	global out_r_mask_x_left
	global out_r_mask_x_right
	global out_r_mask_y_top
	global out_r_mask_y_bot
	global out_r_center_target
	global out_r_vel_x
	global out_r_vel_y_P
	global out_r_vel_y_D
	global out_r_vel_z_P
	global out_r_vel_z_D


	ctrldata = CtrlData()
	if currentState == 1:
		if side == 1:	#out_le
			ctrldata.mask_x_left = out_l_mask_x_left
			ctrldata.mask_x_right = out_l_mask_x_right
			ctrldata.mask_y_top = out_l_mask_y_top
			ctrldata.mask_y_bot = out_l_mask_y_bot
			ctrldata.center_target = out_l_center_target
			ctrldata.vel_x = out_l_vel_x
			ctrldata.vel_y_P = out_l_vel_y_P
			ctrldata.vel_y_D = out_l_vel_y_D
			ctrldata.vel_z_P = out_l_vel_z_P
			ctrldata.vel_z_D = out_l_vel_z_D
			ctrldata.en = 1
		elif side == 2:	#out_ri
			ctrldata.mask_x_left = out_r_mask_x_left
			ctrldata.mask_x_right = out_r_mask_x_right
			ctrldata.mask_y_top = out_r_mask_y_top
			ctrldata.mask_y_bot = out_r_mask_y_bot
			ctrldata.center_target = out_r_center_target
			ctrldata.vel_x = out_r_vel_x
			ctrldata.vel_y_P = out_r_vel_y_P
			ctrldata.vel_y_D = out_r_vel_y_D
			ctrldata.vel_z_P = out_r_vel_z_P
			ctrldata.vel_z_D = out_r_vel_z_D
			ctrldata.en = 2
	
	return ctrldata
	
def line_judgment():
	image = rospy.wait_for_message("/camera/rgb/image_raw", Image, timeout = None)	
	bridge = cv_bridge.CvBridge()
	image = bridge.imgmsg_to_cv2(image, desired_encoding='bgr8')
	image = cv2.resize(image, (320,240), interpolation=cv2.INTER_AREA)
	hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
	
	lowerbH=col_red[0]
	lowerbS=col_red[1]
	lowerbV=col_red[2]
	upperbH=col_red[3]
	upperbS=col_red[4]
	upperbV=col_red[5]
	mask1=cv2.inRange(hsv,(lowerbH,lowerbS,lowerbV),(upperbH,upperbS,upperbV))
	mask2=cv2.inRange(hsv,(lowerbH+165,lowerbS,lowerbV),(upperbH+170,upperbS,upperbV))
	mask = cv2.bitwise_or(mask1, mask2)
	
	h, w, d = image.shape
	mask[0:h/2, 0:w] = 0
	#cv2.imshow("Adjust_hsv", mask)
	#cv2.waitKey(1)
	#mask[h:h, 0:w] = 0
	M = cv2.moments(mask)
	cx = w/2
	cy = 0
	if M['m00'] > 0:
		cx = int(M['m10']/M['m00'])
		cy = int(M['m01']/M['m00'])
	a = cx - w/2
	
	return a

def reconfigCB(config,level):

	global last_currentState
	global last_side

	global out_l_center_target
	global out_l_vel_z_P
	global out_l_vel_z_D

	global out_r_center_target
	global out_r_vel_z_P
	global out_r_vel_z_D

	
	out_l_center_target = config.out_l_center_target
	out_l_vel_z_P = config.out_l_vel_z_P
	out_l_vel_z_D = config.out_l_vel_z_D

	out_r_center_target = config.out_r_center_target
	out_r_vel_z_P = config.out_r_vel_z_P
	out_r_vel_z_D = config.out_r_vel_z_D


	if last_currentState != 0:
		ctrldata_pub = ctrl_data(last_currentState, last_side)
		ctrl_pub.publish(ctrldata_pub)

	return config

def control_drive():
	global last_currentState	#1=outside	2=inside
	global last_side			#1=left		2=right
	currentState = 0  #1=outside	2=inside
	side = 0  #1=left  2=right
	i = 0
	temp1 = 0
	temp2 = 0
	temp3 = 0
	count1 = -1
	count2 = -1
	#stop_count = 0
	global side_flag  #1=left  2=right
	global pos_angleX
	global stop_flag
	global stop_x
	global stop_y
	global last_erro_x
	global last_erro_y
	global control_flag
	global move_flag  #0=movable  1=immovable

	global out_l_center_target
	global out_l_vel_z_P
	global out_l_vel_z_D
	global out_r_center_target
	global out_r_vel_z_P
	global out_r_vel_z_D
	
	global block_a_flag ##
	global block_b_flag
	global block_c_flag 
	global block_d_flag 
	global sign_a_flag
	global sign_b_flag 
	global sign_c_flag 
	global sign_d_flag 

	global picka_flag
	global pickb_flag
	global pickc_flag
	global pickd_flag

	global erro_x
	global erro_y

	
	ctrldata_pub = CtrlData()
	decelerate = Int8()
	msg = Int8()

	rospy.init_node("control_drive")
	
	add_thread = threading.Thread(target = thread_job)
	add_thread.start
	
	line_pub = rospy.Publisher("/line_judgment", Int8, queue_size=1)
	cmdvel_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
	side_flag_sub = rospy.Subscriber("/darknet_ros/bounding_boxes", BoundingBoxes, side_flag_callback)
	control_flag_sub = rospy.Subscriber("/control_flag", Int8, control_flag_callback)
	arm_pick_or_put_pub = rospy.Publisher("/arm_state",String ,queue_size=10 ) ##
	
	dynamic_reconfigure_server = Server(paramsConfig, reconfigCB)

	out_l_center_target = rospy.get_param('~out_l_center_target', 0.26)
	out_l_vel_z_P = rospy.get_param('~out_l_vel_z_P', 0.01) 
	out_l_vel_z_D = rospy.get_param('~out_l_vel_z_D', 0.001) 
	out_r_center_target = rospy.get_param('~out_r_center_target', 0.75) 
	out_r_vel_z_P = rospy.get_param('~out_r_vel_z_P', 0.01) 
	out_r_vel_z_D = rospy.get_param('~out_r_vel_z_D', 0.001) 

	block_xmin = rospy.get_param('~block_xmin', 470)
	block_ymin = rospy.get_param('~block_ymin', 282)
	block_xmax = rospy.get_param('~block_xmax', 556)
	block_ymax = rospy.get_param('~block_ymax', 336)

	left_sign_xmin = rospy.get_param('~left_sign_xmin', 111)
	left_sign_ymin = rospy.get_param('~left_sign_ymin', 278)
	left_sign_xmax = rospy.get_param('~left_sign_xmax', 193)
	left_sign_ymax = rospy.get_param('~left_sign_ymax', 333)
	right_sign_xmin = rospy.get_param('~right_sign_xmin', 470)
	right_sign_ymin = rospy.get_param('~right_sign_ymin', 282)
	right_sign_xmax = rospy.get_param('~right_sign_xmax', 556)
	right_sign_ymax = rospy.get_param('~right_sign_ymax', 336)


	rate = rospy.Rate(100)
	
	while not rospy.is_shutdown():
		#print(out_l_center_target)
		if control_flag == 1:
			if currentState == 0:		#init    
				a = line_judgment()
				msg = a
				line_pub.publish(msg)
				#print(a)
				if a > 0:
					temp1 = temp1 +1
					temp2 = 0
					if temp1 > 50:
						side = 2
						currentState = 1
						last_currentState = currentState
						last_side = side
						#pub  out_ri
						ctrldata_pub = ctrl_data(currentState, side)
						ctrl_pub.publish(ctrldata_pub)
						print("out_ri")
						temp1 = 0
						side = 0
				elif a < 0:
					temp2 = temp2 +1
					temp1 = 0
					if temp2 > 50:
						side = 1
						currentState = 1
						last_currentState = currentState
						last_side = side
						#pub  out_le
						ctrldata_pub = ctrl_data(currentState, side)
						ctrl_pub.publish(ctrldata_pub)
						print("out_le")
						temp2 = 0
						side = 0
				else:
					temp1 = 0
					temp2 = 0
					side = 0
					currentState = 0
					print("No line init!!")
			
			elif currentState == 1:		#outside
				if i % 150 == 0:
					print("outside")
				
				#-----blockA-----
				if block_a_flag == 0 and move_flag == 0 and count2 != -1 :#after picked blockA and movable
					#print("pick over to move")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)#go on
						count2 = -1


				elif block_a_flag == 1 and picka_flag == 0 :#recognize blockA and not picking state
					print("pick preparation")

					car_stop = CtrlData()#stop to adjust robot position 
					ctrl_pub.publish(car_stop)
					erro_x = blocka_x - ((block_xmin +block_xmax)/2)
					erro_y = blocka_y - ((block_ymin +block_ymax)/2)
					#rospy.loginfo(erro_x)
					#rospy.loginfo(erro_y)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0005 - float(d_erro_y)*0.0005
					carmove.linear.y = -float(erro_x)*0.0005 - float(d_erro_x)*0.0005
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.00005:
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.00005:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					block_a_flag = 0
					count2 = i
					
					
					if d_erro_x == 0 and d_erro_y == 0 and -15<erro_x<15 and -15<erro_y<15:#judge twice to improve accuracy
						time.sleep(3)
						erro_x = blocka_x - ((block_xmin +block_xmax)/2)
						erro_y = blocka_y - ((block_ymin +block_ymax)/2)
						if -15<erro_x<15 and -15<erro_y<15:#pick after adjustment
							move_flag = 1
							#print("ready to stop")
							carmove.linear.x = 0.0
							carmove.linear.y = 0.0
							cmdvel_pub.publish(carmove)

							print("stop to pick")
							arm_state = "pick"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)												
							time.sleep(30)

							block_a_flag = 0
							move_flag = 0
							print("pick over")
							picka_flag = 1#pick blockA
							#rospy.loginfo(picka_flag)

				#-----signA-----	
				if sign_a_flag == 0 and move_flag == 0 and count2 != -1:#after put blockA and movable
					#print("stop_flag == 0")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1
						#stop_count = 0

				elif sign_a_flag == 1 and picka_flag == 1:#recognize signA and in picking state
					print("put preparation")
					#rospy.loginfo(side_flag)
					car_stop = CtrlData()
					ctrl_pub.publish(car_stop)#stop to adjust robot position
					if signa_x > 320 :
						erro_x = signa_x - ((right_sign_xmin +right_sign_xmax)/2)
						erro_y = signa_y - ((right_sign_ymin +right_sign_ymax)/2)
					else :
						erro_x = signa_x - ((left_sign_xmin +left_sign_xmax)/2)
						erro_y = signa_y - ((left_sign_ymin +left_sign_ymax)/2)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0003 - float(d_erro_y)*0.0
					carmove.linear.y = -float(erro_x)*0.0006 - float(d_erro_x)*0.0
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.0015 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.0015:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					sign_a_flag = 0
					count2 = i
				

					if d_erro_x == 0 and d_erro_y == 0:#put after adjustment
						move_flag = 1
						#print("ready to stop")
						carmove.linear.x = 0.0
						carmove.linear.y = 0.0

						if side_flag == 1:#if signA on left

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							
							move_flag = 0
							print("put over")
							time.sleep(3)
							picka_flag = 0


						elif side_flag == 2:#if signA on right

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							move_flag = 0
							print("put over")
							time.sleep(3)
							picka_flag = 0

				#-----blockB-----
				if block_b_flag == 0 and move_flag == 0 and count2 != -1 :
					#print("pick over to move")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1


				elif block_b_flag == 1 and pickb_flag == 0 :
					print("pick preparation")

					car_stop = CtrlData()
					ctrl_pub.publish(car_stop)
					erro_x = blockb_x - ((block_xmin +block_xmax)/2)
					erro_y = blockb_y - ((block_ymin +block_ymax)/2)
					#rospy.loginfo(erro_x)
					#rospy.loginfo(erro_y)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0005 - float(d_erro_y)*0.0005
					carmove.linear.y = -float(erro_x)*0.0005 - float(d_erro_x)*0.0005
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.00005 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.00005:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					block_b_flag = 0
					count2 = i
					
					
					if d_erro_x == 0 and d_erro_y == 0 and -15<erro_x<15 and -15<erro_y<15:
						time.sleep(3)
						erro_x = blockb_x - ((block_xmin +block_xmax)/2)
						erro_y = blockb_y - ((block_ymin +block_ymax)/2)
						if -15<erro_x<15 and -15<erro_y<15:
							move_flag = 1
							#print("ready to stop")
							carmove.linear.x = 0.0
							carmove.linear.y = 0.0
							cmdvel_pub.publish(carmove)

							print("stop to pick")
							arm_state = "pick"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)												
							time.sleep(30)

							block_b_flag = 0
							move_flag = 0
							print("pick over")
							pickb_flag = 1
							#rospy.loginfo(pickb_flag)


				#-----signB-----	
				if sign_b_flag == 0 and move_flag == 0 and count2 != -1:
					#print("stop_flag == 0")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1
						#stop_count = 0

				elif sign_b_flag == 1 and pickb_flag == 1:
					print("put preparation")
					#rospy.loginfo(side_flag)
					car_stop = CtrlData()
					ctrl_pub.publish(car_stop)
					if signb_x > 320 :
						erro_x = signb_x - ((right_sign_xmin +right_sign_xmax)/2)
						erro_y = signb_y - ((right_sign_ymin +right_sign_ymax)/2)
					else :
						erro_x = signb_x - ((left_sign_xmin +left_sign_xmax)/2)
						erro_y = signb_y - ((left_sign_ymin +left_sign_ymax)/2)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0003 - float(d_erro_y)*0.0
					carmove.linear.y = -float(erro_x)*0.0006 - float(d_erro_x)*0.0
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.0015 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.0015:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					sign_b_flag = 0
					count2 = i
				

					if d_erro_x == 0 and d_erro_y == 0:
						move_flag = 1
						#print("ready to stop")
						carmove.linear.x = 0.0
						carmove.linear.y = 0.0

						if side_flag == 1:

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							
							move_flag = 0
							print("put over")
							time.sleep(3)
							pickb_flag = 0


						elif side_flag == 2:

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							move_flag = 0
							print("put over")
							time.sleep(3)
							pickb_flag = 0

				#-----blockC-----
				if block_c_flag == 0 and move_flag == 0 and count2 != -1 :
					#print("pick over to move")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1


				elif block_c_flag == 1 and pickc_flag == 0 :
					print("pick preparation")

					car_stop = CtrlData()
					ctrl_pub.publish(car_stop)
					erro_x = blockc_x - ((block_xmin +block_xmax)/2)
					erro_y = blockc_y - ((block_ymin +block_ymax)/2)
					#rospy.loginfo(erro_x)
					#rospy.loginfo(erro_y)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0005 - float(d_erro_y)*0.0004
					carmove.linear.y = -float(erro_x)*0.0005 - float(d_erro_x)*0.0004
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.00005 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.00005:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					block_c_flag = 0
					count2 = i
					
					
					if d_erro_x == 0 and d_erro_y == 0 and -15<erro_x<15 and -15<erro_y<15:
						time.sleep(3)
						erro_x = blockc_x - ((block_xmin +block_xmax)/2)
						erro_y = blockc_y - ((block_ymin +block_ymax)/2)
						if -15<erro_x<15 and -15<erro_y<15:
							move_flag = 1
							#print("ready to stop")
							carmove.linear.x = 0.0
							carmove.linear.y = 0.0
							cmdvel_pub.publish(carmove)

							print("stop to pick")
							arm_state = "pick"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)												
							time.sleep(30)

							block_c_flag = 0
							move_flag = 0
							print("pick over")
							pickc_flag = 1
							#rospy.loginfo(pickc_flag)

				#-----signC-----	
				if sign_c_flag == 0 and move_flag == 0 and count2 != -1:
					#print("stop_flag == 0")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1
						#stop_count = 0

				elif sign_c_flag == 1 and pickc_flag == 1:
					print("put preparation")
					#rospy.loginfo(side_flag)
					car_stop = CtrlData()
					ctrl_pub.publish(car_stop)
					if signc_x > 320 :
						erro_x = signc_x - ((right_sign_xmin +right_sign_xmax)/2)
						erro_y = signc_y - ((right_sign_ymin +right_sign_ymax)/2)
					else :
						erro_x = signc_x - ((left_sign_xmin +left_sign_xmax)/2)
						erro_y = signc_y - ((left_sign_ymin +left_sign_ymax)/2)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0003 - float(d_erro_y)*0.0
					carmove.linear.y = -float(erro_x)*0.0006 - float(d_erro_x)*0.0
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.0015 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.0015:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					sign_c_flag = 0
					count2 = i
				

					if d_erro_x == 0 and d_erro_y == 0:
						move_flag = 1
						#print("ready to stop")
						carmove.linear.x = 0.0
						carmove.linear.y = 0.0

						if side_flag == 1:

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							
							move_flag = 0
							print("put over")
							time.sleep(3)
							pickc_flag = 0


						elif side_flag == 2:

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							move_flag = 0
							print("put over")
							time.sleep(3)
							pickc_flag = 0

				#-----blockD-----
				if block_d_flag == 0 and move_flag == 0 and count2 != -1 :
					#print("pick over to move")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1


				elif block_d_flag == 1 and pickd_flag == 0 :
					print("pick preparation")

					car_stop = CtrlData() 
					ctrl_pub.publish(car_stop)
					erro_x = blockd_x - ((block_xmin +block_xmax)/2)
					erro_y = blockd_y - ((block_ymin +block_ymax)/2)
					#rospy.loginfo(erro_x)
					#rospy.loginfo(erro_y)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0005 - float(d_erro_y)*0.0004
					carmove.linear.y = -float(erro_x)*0.0005 - float(d_erro_x)*0.0004
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.00005 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.00005:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					block_d_flag = 0
					count2 = i
					
					
					if d_erro_x == 0 and d_erro_y == 0 and -15<erro_x<15 and -15<erro_y<15:
						time.sleep(3)
						erro_x = blockd_x - ((block_xmin +block_xmax)/2)
						erro_y = blockd_y - ((block_ymin +block_ymax)/2)
						if -15<erro_x<15 and -15<erro_y<15:
							move_flag = 1
							#print("ready to stop")
							carmove.linear.x = 0.0
							carmove.linear.y = 0.0
							cmdvel_pub.publish(carmove)

							print("stop to pick")
							arm_state = "pick"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)												
							time.sleep(30)

							block_d_flag = 0
							move_flag = 0
							print("pick over")
							pickd_flag = 1
							#rospy.loginfo(pickd_flag)

				#-----signD-----	
				if sign_d_flag == 0 and move_flag == 0 and count2 != -1:
					#print("stop_flag == 0")
					if count2 > i :
						c = i + 50000
					else: 
						c = i
					if c - count2 > 200:
						ctrl_pub.publish(ctrldata_pub)
						count2 = -1
						#stop_count = 0

				elif sign_d_flag == 1 and pickd_flag == 1:
					print("put preparation")
					#rospy.loginfo(side_flag)
					car_stop = CtrlData()
					ctrl_pub.publish(car_stop)
					if signd_x > 320 :
						erro_x = signa_x - ((right_sign_xmin +right_sign_xmax)/2)
						erro_y = signa_y - ((right_sign_ymin +right_sign_ymax)/2)
					else :
						erro_x = signa_x - ((left_sign_xmin +left_sign_xmax)/2)
						erro_y = signa_y - ((left_sign_ymin +left_sign_ymax)/2)
					d_erro_x = erro_x - last_erro_x
					d_erro_y = erro_y - last_erro_y
					carmove = Twist()
					carmove.linear.x = -float(erro_y)*0.0003 - float(d_erro_y)*0.0
					carmove.linear.y = -float(erro_x)*0.0006 - float(d_erro_x)*0.0
					last_erro_x=erro_x
					last_erro_y=erro_y
					if -0.01 < carmove.linear.x < 0.0015 :
						carmove.linear.x = 0.0
					if -0.01 < carmove.linear.y < 0.0015:
						carmove.linear.y = 0.0
					if carmove.linear.x == 0 and carmove.linear.y == 0 :
						d_erro_x = 0
						d_erro_y = 0
					cmdvel_pub.publish(carmove)
					sign_d_flag = 0
					count2 = i
				

					if d_erro_x == 0 and d_erro_y == 0:
						move_flag = 1
						#print("ready to stop")
						carmove.linear.x = 0.0
						carmove.linear.y = 0.0

						if side_flag == 1:

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							
							move_flag = 0
							print("put over")
							time.sleep(3)
							pickd_flag = 0


						elif side_flag == 2:

							carmove.angular.z = 0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							print("stop to put")
							arm_state = "put"
							arm_pick_or_put_pub.publish(arm_state) 
							rospy.loginfo(arm_state)
							time.sleep(25)

							carmove.angular.z = -0.35
							cmdvel_pub.publish(carmove)
							time.sleep(6)
							carmove.angular.z = 0
							cmdvel_pub.publish(carmove)

							move_flag = 0
							print("put over")
							time.sleep(3)
							pickd_flag = 0


			i = i + 1
			if i > 50000:
				i = 0
			
		else :
			print("waiting for init")
		rate.sleep()
	#rospy.spin()


if __name__ == '__main__':
    try:
    	control_drive()
    except rospy.ROSInterruptException:
    	pass
