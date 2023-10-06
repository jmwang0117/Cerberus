; Auto-generated. Do not edit!


(cl:in-package bodyreader-msg)


;//! \htmlinclude body.msg.html

(cl:defclass <body> (roslisp-msg-protocol:ros-message)
  ((bodyid
    :reader bodyid
    :initarg :bodyid
    :type cl:fixnum
    :initform 0)
   (centerOfMass
    :reader centerOfMass
    :initarg :centerOfMass
    :type bodyreader-msg:vector3f
    :initform (cl:make-instance 'bodyreader-msg:vector3f))
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector bodyreader-msg:joint)
   :initform (cl:make-array 19 :element-type 'bodyreader-msg:joint :initial-element (cl:make-instance 'bodyreader-msg:joint))))
)

(cl:defclass body (<body>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <body>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'body)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bodyreader-msg:<body> is deprecated: use bodyreader-msg:body instead.")))

(cl:ensure-generic-function 'bodyid-val :lambda-list '(m))
(cl:defmethod bodyid-val ((m <body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:bodyid-val is deprecated.  Use bodyreader-msg:bodyid instead.")
  (bodyid m))

(cl:ensure-generic-function 'centerOfMass-val :lambda-list '(m))
(cl:defmethod centerOfMass-val ((m <body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:centerOfMass-val is deprecated.  Use bodyreader-msg:centerOfMass instead.")
  (centerOfMass m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <body>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:joints-val is deprecated.  Use bodyreader-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <body>) ostream)
  "Serializes a message object of type '<body>"
  (cl:let* ((signed (cl:slot-value msg 'bodyid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerOfMass) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <body>) istream)
  "Deserializes a message object of type '<body>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bodyid) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerOfMass) istream)
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array 19))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i 19)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bodyreader-msg:joint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<body>)))
  "Returns string type for a message object of type '<body>"
  "bodyreader/body")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'body)))
  "Returns string type for a message object of type 'body"
  "bodyreader/body")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<body>)))
  "Returns md5sum for a message object of type '<body>"
  "57f2da357721aaca7548e8de3d97f76a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'body)))
  "Returns md5sum for a message object of type 'body"
  "57f2da357721aaca7548e8de3d97f76a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<body>)))
  "Returns full string definition for message of type '<body>"
  (cl:format cl:nil "int16 bodyid~%vector3f centerOfMass~%joint[19] joints~%================================================================================~%MSG: bodyreader/vector3f~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: bodyreader/joint~%int8 type~%vector2f depthPosition~%vector3f worldPosition~%================================================================================~%MSG: bodyreader/vector2f~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'body)))
  "Returns full string definition for message of type 'body"
  (cl:format cl:nil "int16 bodyid~%vector3f centerOfMass~%joint[19] joints~%================================================================================~%MSG: bodyreader/vector3f~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: bodyreader/joint~%int8 type~%vector2f depthPosition~%vector3f worldPosition~%================================================================================~%MSG: bodyreader/vector2f~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <body>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerOfMass))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <body>))
  "Converts a ROS message object to a list"
  (cl:list 'body
    (cl:cons ':bodyid (bodyid msg))
    (cl:cons ':centerOfMass (centerOfMass msg))
    (cl:cons ':joints (joints msg))
))
