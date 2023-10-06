; Auto-generated. Do not edit!


(cl:in-package bodyreader-msg)


;//! \htmlinclude bodyList.msg.html

(cl:defclass <bodyList> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (bodies
    :reader bodies
    :initarg :bodies
    :type (cl:vector bodyreader-msg:body)
   :initform (cl:make-array 6 :element-type 'bodyreader-msg:body :initial-element (cl:make-instance 'bodyreader-msg:body))))
)

(cl:defclass bodyList (<bodyList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bodyList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bodyList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bodyreader-msg:<bodyList> is deprecated: use bodyreader-msg:bodyList instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <bodyList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:count-val is deprecated.  Use bodyreader-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'bodies-val :lambda-list '(m))
(cl:defmethod bodies-val ((m <bodyList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bodyreader-msg:bodies-val is deprecated.  Use bodyreader-msg:bodies instead.")
  (bodies m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bodyList>) ostream)
  "Serializes a message object of type '<bodyList>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bodies))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bodyList>) istream)
  "Deserializes a message object of type '<bodyList>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:setf (cl:slot-value msg 'bodies) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'bodies)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'bodyreader-msg:body))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bodyList>)))
  "Returns string type for a message object of type '<bodyList>"
  "bodyreader/bodyList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bodyList)))
  "Returns string type for a message object of type 'bodyList"
  "bodyreader/bodyList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bodyList>)))
  "Returns md5sum for a message object of type '<bodyList>"
  "a1b1dea345dbea1f84926cdcaf9c5b80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bodyList)))
  "Returns md5sum for a message object of type 'bodyList"
  "a1b1dea345dbea1f84926cdcaf9c5b80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bodyList>)))
  "Returns full string definition for message of type '<bodyList>"
  (cl:format cl:nil "int8 count~%body[6] bodies~%================================================================================~%MSG: bodyreader/body~%int16 bodyid~%vector3f centerOfMass~%joint[19] joints~%================================================================================~%MSG: bodyreader/vector3f~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: bodyreader/joint~%int8 type~%vector2f depthPosition~%vector3f worldPosition~%================================================================================~%MSG: bodyreader/vector2f~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bodyList)))
  "Returns full string definition for message of type 'bodyList"
  (cl:format cl:nil "int8 count~%body[6] bodies~%================================================================================~%MSG: bodyreader/body~%int16 bodyid~%vector3f centerOfMass~%joint[19] joints~%================================================================================~%MSG: bodyreader/vector3f~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: bodyreader/joint~%int8 type~%vector2f depthPosition~%vector3f worldPosition~%================================================================================~%MSG: bodyreader/vector2f~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bodyList>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bodies) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bodyList>))
  "Converts a ROS message object to a list"
  (cl:list 'bodyList
    (cl:cons ':count (count msg))
    (cl:cons ':bodies (bodies msg))
))
