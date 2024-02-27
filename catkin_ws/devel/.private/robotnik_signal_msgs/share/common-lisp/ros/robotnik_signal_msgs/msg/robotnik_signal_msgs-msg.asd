
(cl:in-package :asdf)

(defsystem "robotnik_signal_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SignalStatus" :depends-on ("_package_SignalStatus"))
    (:file "_package_SignalStatus" :depends-on ("_package"))
    (:file "SignalStatusArray" :depends-on ("_package_SignalStatusArray"))
    (:file "_package_SignalStatusArray" :depends-on ("_package"))
  ))