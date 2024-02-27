
(cl:in-package :asdf)

(defsystem "robotnik_rms_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "action" :depends-on ("_package_action"))
    (:file "_package_action" :depends-on ("_package"))
    (:file "mission" :depends-on ("_package_mission"))
    (:file "_package_mission" :depends-on ("_package"))
    (:file "status" :depends-on ("_package_status"))
    (:file "_package_status" :depends-on ("_package"))
  ))