
(cl:in-package :asdf)

(defsystem "wheeltec_yolo_action-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CtrlData" :depends-on ("_package_CtrlData"))
    (:file "_package_CtrlData" :depends-on ("_package"))
    (:file "position" :depends-on ("_package_position"))
    (:file "_package_position" :depends-on ("_package"))
  ))