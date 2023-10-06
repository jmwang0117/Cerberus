;; Auto-generated. Do not edit!


(when (boundp 'bodyreader::maskdata)
  (if (not (find-package "BODYREADER"))
    (make-package "BODYREADER"))
  (shadow 'maskdata (find-package "BODYREADER")))
(unless (find-package "BODYREADER::MASKDATA")
  (make-package "BODYREADER::MASKDATA"))

(in-package "ROS")
;;//! \htmlinclude maskdata.msg.html


(defclass bodyreader::maskdata
  :super ros::object
  :slots (_data ))

(defmethod bodyreader::maskdata
  (:init
   (&key
    ((:data __data) (make-array 76800 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32[76800] _data
    (* 4    76800)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[76800] _data
     (dotimes (i 76800)
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[76800] _data
   (dotimes (i (length _data))
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get bodyreader::maskdata :md5sum-) "83e374be3f0eff604357f0d088c7c236")
(setf (get bodyreader::maskdata :datatype-) "bodyreader/maskdata")
(setf (get bodyreader::maskdata :definition-)
      "int32[76800] data
")



(provide :bodyreader/maskdata "83e374be3f0eff604357f0d088c7c236")


