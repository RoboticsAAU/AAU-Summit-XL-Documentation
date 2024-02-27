
(cl:in-package :asdf)

(defsystem "rosbag_manager_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Record" :depends-on ("_package_Record"))
    (:file "_package_Record" :depends-on ("_package"))
  ))