; Auto-generated. Do not edit!


(cl:in-package bodyreader-msg)


;//! \htmlinclude maskdata.msg.html

(cl:defclass <maskdata> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 76800 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass maskdata (<maskdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <maskdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'maskdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bodyreader-msg:<maskdata> is deprecated: use bodyreader-msg:maskdata instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <maskdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:data-val is deprecated.  Use bodyreader-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <maskdata>) ostream)
  "Serializes a message object of type '<maskdata>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <maskdata>) istream)
  "Deserializes a message object of type '<maskdata>"
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 76800))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 76800)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<maskdata>)))
  "Returns string type for a message object of type '<maskdata>"
  "bodyreader/maskdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maskdata)))
  "Returns string type for a message object of type 'maskdata"
  "bodyreader/maskdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<maskdata>)))
  "Returns md5sum for a message object of type '<maskdata>"
  "83e374be3f0eff604357f0d088c7c236")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'maskdata)))
  "Returns md5sum for a message object of type 'maskdata"
  "83e374be3f0eff604357f0d088c7c236")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<maskdata>)))
  "Returns full string definition for message of type '<maskdata>"
  (cl:format cl:nil "int32[76800] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'maskdata)))
  "Returns full string definition for message of type 'maskdata"
  (cl:format cl:nil "int32[76800] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <maskdata>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <maskdata>))
  "Converts a ROS message object to a list"
  (cl:list 'maskdata
    (cl:cons ':data (data msg))
))
