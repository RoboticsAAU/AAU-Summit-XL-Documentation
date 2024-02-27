
(cl:in-package :asdf)

(defsystem "robotnik_signal_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robotnik_msgs-msg
)
  :components ((:file "_package")
    (:file "SetSignal" :depends-on ("_package_SetSignal"))
    (:file "_package_SetSignal" :depends-on ("_package"))
  ))