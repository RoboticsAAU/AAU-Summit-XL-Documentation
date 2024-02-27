
(cl:in-package :asdf)

(defsystem "rosbag_manager_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robotnik_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RosbagManagerStatus" :depends-on ("_package_RosbagManagerStatus"))
    (:file "_package_RosbagManagerStatus" :depends-on ("_package"))
  ))