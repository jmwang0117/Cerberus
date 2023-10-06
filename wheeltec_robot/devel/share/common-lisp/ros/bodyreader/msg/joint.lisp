; Auto-generated. Do not edit!


(cl:in-package bodyreader-msg)


;//! \htmlinclude joint.msg.html

(cl:defclass <joint> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (depthPosition
    :reader depthPosition
    :initarg :depthPosition
    :type bodyreader-msg:vector2f
    :initform (cl:make-instance 'bodyreader-msg:vector2f))
   (worldPosition
    :reader worldPosition
    :initarg :worldPosition
    :type bodyreader-msg:vector3f
    :initform (cl:make-instance 'bodyreader-msg:vector3f)))
)

(cl:defclass joint (<joint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bodyreader-msg:<joint> is deprecated: use bodyreader-msg:joint instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:type-val is deprecated.  Use bodyreader-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'depthPosition-val :lambda-list '(m))
(cl:defmethod depthPosition-val ((m <joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:depthPosition-val is deprecated.  Use bodyreader-msg:depthPosition instead.")
  (depthPosition m))

(cl:ensure-generic-function 'worldPosition-val :lambda-list '(m))
(cl:defmethod worldPosition-val ((m <joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:worldPosition-val is deprecated.  Use bodyreader-msg:worldPosition instead.")
  (worldPosition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint>) ostream)
  "Serializes a message object of type '<joint>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depthPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'worldPosition) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint>) istream)
  "Deserializes a message object of type '<joint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depthPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'worldPosition) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint>)))
  "Returns string type for a message object of type '<joint>"
  "bodyreader/joint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint)))
  "Returns string type for a message object of type 'joint"
  "bodyreader/joint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint>)))
  "Returns md5sum for a message object of type '<joint>"
  "e4de40bc4d9da2df315d3755d4261051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint)))
  "Returns md5sum for a message object of type 'joint"
  "e4de40bc4d9da2df315d3755d4261051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint>)))
  "Returns full string definition for message of type '<joint>"
  (cl:format cl:nil "int8 type~%vector2f depthPosition~%vector3f worldPosition~%================================================================================~%MSG: bodyreader/vector2f~%float32 x~%float32 y~%================================================================================~%MSG: bodyreader/vector3f~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint)))
  "Returns full string definition for message of type 'joint"
  (cl:format cl:nil "int8 type~%vector2f depthPosition~%vector3f worldPosition~%================================================================================~%MSG: bodyreader/vector2f~%float32 x~%float32 y~%================================================================================~%MSG: bodyreader/vector3f~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depthPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'worldPosition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint>))
  "Converts a ROS message object to a list"
  (cl:list 'joint
    (cl:cons ':type (type msg))
    (cl:cons ':depthPosition (depthPosition msg))
    (cl:cons ':worldPosition (worldPosition msg))
))
