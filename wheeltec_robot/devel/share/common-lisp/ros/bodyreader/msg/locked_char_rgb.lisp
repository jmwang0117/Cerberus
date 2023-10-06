; Auto-generated. Do not edit!


(cl:in-package bodyreader-msg)


;//! \htmlinclude locked_char_rgb.msg.html

(cl:defclass <locked_char_rgb> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass locked_char_rgb (<locked_char_rgb>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <locked_char_rgb>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'locked_char_rgb)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bodyreader-msg:<locked_char_rgb> is deprecated: use bodyreader-msg:locked_char_rgb instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <locked_char_rgb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:r-val is deprecated.  Use bodyreader-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <locked_char_rgb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:g-val is deprecated.  Use bodyreader-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <locked_char_rgb>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:b-val is deprecated.  Use bodyreader-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <locked_char_rgb>) ostream)
  "Serializes a message object of type '<locked_char_rgb>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <locked_char_rgb>) istream)
  "Deserializes a message object of type '<locked_char_rgb>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<locked_char_rgb>)))
  "Returns string type for a message object of type '<locked_char_rgb>"
  "bodyreader/locked_char_rgb")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'locked_char_rgb)))
  "Returns string type for a message object of type 'locked_char_rgb"
  "bodyreader/locked_char_rgb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<locked_char_rgb>)))
  "Returns md5sum for a message object of type '<locked_char_rgb>"
  "353891e354491c51aabe32df673fb446")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'locked_char_rgb)))
  "Returns md5sum for a message object of type 'locked_char_rgb"
  "353891e354491c51aabe32df673fb446")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<locked_char_rgb>)))
  "Returns full string definition for message of type '<locked_char_rgb>"
  (cl:format cl:nil "uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'locked_char_rgb)))
  "Returns full string definition for message of type 'locked_char_rgb"
  (cl:format cl:nil "uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <locked_char_rgb>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <locked_char_rgb>))
  "Converts a ROS message object to a list"
  (cl:list 'locked_char_rgb
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
