
(cl:in-package :asdf)

(defsystem "ping_time_monitor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PingStatus" :depends-on ("_package_PingStatus"))
    (:file "_package_PingStatus" :depends-on ("_package"))
  ))