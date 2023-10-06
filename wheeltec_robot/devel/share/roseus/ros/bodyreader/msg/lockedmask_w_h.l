;; Auto-generated. Do not edit!


(when (boundp 'bodyreader::lockedmask_w_h)
  (if (not (find-package "BODYREADER"))
    (make-package "BODYREADER"))
  (shadow 'lockedmask_w_h (find-package "BODYREADER")))
(unless (find-package "BODYREADER::LOCKEDMASK_W_H")
  (make-package "BODYREADER::LOCKEDMASK_W_H"))

(in-package "ROS")
;;//! \htmlinclude lockedmask_w_h.msg.html


(defclass bodyreader::lockedmask_w_h
  :super ros::object
  :slots (_width_l _width_r _height_t _height_b ))

(defmethod bodyreader::lockedmask_w_h
  (:init
   (&key
    ((:width_l __width_l) 0)
    ((:width_r __width_r) 0)
    ((:height_t __height_t) 0)
    ((:height_b __height_b) 0)
    )
   (send-super :init)
   (setq _width_l (round __width_l))
   (setq _width_r (round __width_r))
   (setq _height_t (round __height_t))
   (setq _height_b (round __height_b))
   self)
  (:width_l
   (&optional __width_l)
   (if __width_l (setq _width_l __width_l)) _width_l)
  (:width_r
   (&optional __width_r)
   (if __width_r (setq _width_r __width_r)) _width_r)
  (:height_t
   (&optional __height_t)
   (if __height_t (setq _height_t __height_t)) _height_t)
  (:height_b
   (&optional __height_b)
   (if __height_b (setq _height_b __height_b)) _height_b)
  (:serialization-length
   ()
   (+
    ;; int32 _width_l
    4
    ;; int32 _width_r
    4
    ;; int32 _height_t
    4
    ;; int32 _height_b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width_l
       (write-long _width_l s)
     ;; int32 _width_r
       (write-long _width_r s)
     ;; int32 _height_t
       (write-long _height_t s)
     ;; int32 _height_b
       (write-long _height_b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width_l
     (setq _width_l (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width_r
     (setq _width_r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height_t
     (setq _height_t (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height_b
     (setq _height_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bodyreader::lockedmask_w_h :md5sum-) "4642cd8cf102c212293540c01a4443bd")
(setf (get bodyreader::lockedmask_w_h :datatype-) "bodyreader/lockedmask_w_h")
(setf (get bodyreader::lockedmask_w_h :definition-)
      "int32 width_l
int32 width_r
int32 height_t
int32 height_b
")



(provide :bodyreader/lockedmask_w_h "4642cd8cf102c212293540c01a4443bd")


