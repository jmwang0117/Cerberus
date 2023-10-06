;; Auto-generated. Do not edit!


(when (boundp 'bodyreader::bodyList)
  (if (not (find-package "BODYREADER"))
    (make-package "BODYREADER"))
  (shadow 'bodyList (find-package "BODYREADER")))
(unless (find-package "BODYREADER::BODYLIST")
  (make-package "BODYREADER::BODYLIST"))

(in-package "ROS")
;;//! \htmlinclude bodyList.msg.html


(defclass bodyreader::bodyList
  :super ros::object
  :slots (_count _bodies ))

(defmethod bodyreader::bodyList
  (:init
   (&key
    ((:count __count) 0)
    ((:bodies __bodies) (let (r) (dotimes (i 6) (push (instance bodyreader::body :init) r)) r))
    )
   (send-super :init)
   (setq _count (round __count))
   (setq _bodies __bodies)
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:bodies
   (&rest __bodies)
   (if (keywordp (car __bodies))
       (send* _bodies __bodies)
     (progn
       (if __bodies (setq _bodies (car __bodies)))
       _bodies)))
  (:serialization-length
   ()
   (+
    ;; int8 _count
    1
    ;; bodyreader/body[6] _bodies
    (apply #'+ (send-all _bodies :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _count
       (write-byte _count s)
     ;; bodyreader/body[6] _bodies
     (dolist (elem _bodies)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _count 127) (setq _count (- _count 256)))
   ;; bodyreader/body[6] _bodies
   (dotimes (i 6)
     (send (elt _bodies i) :deserialize buf ptr-) (incf ptr- (send (elt _bodies i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get bodyreader::bodyList :md5sum-) "a1b1dea345dbea1f84926cdcaf9c5b80")
(setf (get bodyreader::bodyList :datatype-) "bodyreader/bodyList")
(setf (get bodyreader::bodyList :definition-)
      "int8 count
body[6] bodies
================================================================================
MSG: bodyreader/body
int16 bodyid
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



(provide :bodyreader/bodyList "a1b1dea345dbea1f84926cdcaf9c5b80")


