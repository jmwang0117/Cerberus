;; Auto-generated. Do not edit!


(when (boundp 'bodyreader::body)
  (if (not (find-package "BODYREADER"))
    (make-package "BODYREADER"))
  (shadow 'body (find-package "BODYREADER")))
(unless (find-package "BODYREADER::BODY")
  (make-package "BODYREADER::BODY"))

(in-package "ROS")
;;//! \htmlinclude body.msg.html


(defclass bodyreader::body
  :super ros::object
  :slots (_bodyid _centerOfMass _joints ))

(defmethod bodyreader::body
  (:init
   (&key
    ((:bodyid __bodyid) 0)
    ((:centerOfMass __centerOfMass) (instance bodyreader::vector3f :init))
    ((:joints __joints) (let (r) (dotimes (i 19) (push (instance bodyreader::joint :init) r)) r))
    )
   (send-super :init)
   (setq _bodyid (round __bodyid))
   (setq _centerOfMass __centerOfMass)
   (setq _joints __joints)
   self)
  (:bodyid
   (&optional __bodyid)
   (if __bodyid (setq _bodyid __bodyid)) _bodyid)
  (:centerOfMass
   (&rest __centerOfMass)
   (if (keywordp (car __centerOfMass))
       (send* _centerOfMass __centerOfMass)
     (progn
       (if __centerOfMass (setq _centerOfMass (car __centerOfMass)))
       _centerOfMass)))
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; int16 _bodyid
    2
    ;; bodyreader/vector3f _centerOfMass
    (send _centerOfMass :serialization-length)
    ;; bodyreader/joint[19] _joints
    (apply #'+ (send-all _joints :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _bodyid
       (write-word _bodyid s)
     ;; bodyreader/vector3f _centerOfMass
       (send _centerOfMass :serialize s)
     ;; bodyreader/joint[19] _joints
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _bodyid
     (setq _bodyid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bodyreader/vector3f _centerOfMass
     (send _centerOfMass :deserialize buf ptr-) (incf ptr- (send _centerOfMass :serialization-length))
   ;; bodyreader/joint[19] _joints
   (dotimes (i 19)
     (send (elt _joints i) :deserialize buf ptr-) (incf ptr- (send (elt _joints i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get bodyreader::body :md5sum-) "57f2da357721aaca7548e8de3d97f76a")
(setf (get bodyreader::body :datatype-) "bodyreader/body")
(setf (get bodyreader::body :definition-)
      "int16 bodyid
vector3f centerOfMass
joint[19] joints
================================================================================
MSG: bodyreader/vector3f
float32 x
float32 y
float32 z
================================================================================
MSG: bodyreader/joint
int8 type
vector2f depthPosition
vector3f worldPosition
================================================================================
MSG: bodyreader/vector2f
float32 x
float32 y
")



(provide :bodyreader/body "57f2da357721aaca7548e8de3d97f76a")


