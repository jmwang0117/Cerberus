; Auto-generated. Do not edit!


(cl:in-package bodyreader-msg)


;//! \htmlinclude lockedmask_w_h.msg.html

(cl:defclass <lockedmask_w_h> (roslisp-msg-protocol:ros-message)
  ((width_l
    :reader width_l
    :initarg :width_l
    :type cl:integer
    :initform 0)
   (width_r
    :reader width_r
    :initarg :width_r
    :type cl:integer
    :initform 0)
   (height_t
    :reader height_t
    :initarg :height_t
    :type cl:integer
    :initform 0)
   (height_b
    :reader height_b
    :initarg :height_b
    :type cl:integer
    :initform 0))
)

(cl:defclass lockedmask_w_h (<lockedmask_w_h>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lockedmask_w_h>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lockedmask_w_h)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bodyreader-msg:<lockedmask_w_h> is deprecated: use bodyreader-msg:lockedmask_w_h instead.")))

(cl:ensure-generic-function 'width_l-val :lambda-list '(m))
(cl:defmethod width_l-val ((m <lockedmask_w_h>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:width_l-val is deprecated.  Use bodyreader-msg:width_l instead.")
  (width_l m))

(cl:ensure-generic-function 'width_r-val :lambda-list '(m))
(cl:defmethod width_r-val ((m <lockedmask_w_h>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:width_r-val is deprecated.  Use bodyreader-msg:width_r instead.")
  (width_r m))

(cl:ensure-generic-function 'height_t-val :lambda-list '(m))
(cl:defmethod height_t-val ((m <lockedmask_w_h>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:height_t-val is deprecated.  Use bodyreader-msg:height_t instead.")
  (height_t m))

(cl:ensure-generic-function 'height_b-val :lambda-list '(m))
(cl:defmethod height_b-val ((m <lockedmask_w_h>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:height_b-val is deprecated.  Use bodyreader-msg:height_b instead.")
  (height_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lockedmask_w_h>) ostream)
  "Serializes a message object of type '<lockedmask_w_h>"
  (cl:let* ((signed (cl:slot-value msg 'width_l)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width_r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height_t)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lockedmask_w_h>) istream)
  "Deserializes a message object of type '<lockedmask_w_h>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width_l) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width_r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height_t) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height_b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lockedmask_w_h>)))
  "Returns string type for a message object of type '<lockedmask_w_h>"
  "bodyreader/lockedmask_w_h")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lockedmask_w_h)))
  "Returns string type for a message object of type 'lockedmask_w_h"
  "bodyreader/lockedmask_w_h")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lockedmask_w_h>)))
  "Returns md5sum for a message object of type '<lockedmask_w_h>"
  "4642cd8cf102c212293540c01a4443bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lockedmask_w_h)))
  "Returns md5sum for a message object of type 'lockedmask_w_h"
  "4642cd8cf102c212293540c01a4443bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lockedmask_w_h>)))
  "Returns full string definition for message of type '<lockedmask_w_h>"
  (cl:format cl:nil "int32 width_l~%int32 width_r~%int32 height_t~%int32 height_b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lockedmask_w_h)))
  "Returns full string definition for message of type 'lockedmask_w_h"
  (cl:format cl:nil "int32 width_l~%int32 width_r~%int32 height_t~%int32 height_b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lockedmask_w_h>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lockedmask_w_h>))
  "Converts a ROS message object to a list"
  (cl:list 'lockedmask_w_h
    (cl:cons ':width_l (width_l msg))
    (cl:cons ':width_r (width_r msg))
    (cl:cons ':height_t (height_t msg))
    (cl:cons ':height_b (height_b msg))
))
