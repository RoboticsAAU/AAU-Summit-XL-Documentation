
(cl:in-package :asdf)

(defsystem "imu_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImuManagerStatus" :depends-on ("_package_ImuManagerStatus"))
    (:file "_package_ImuManagerStatus" :depends-on ("_package"))
  ))