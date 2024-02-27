
(cl:in-package :asdf)

(defsystem "interactive_marker_proxy-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :visualization_msgs-msg
)
  :components ((:file "_package")
    (:file "GetInit" :depends-on ("_package_GetInit"))
    (:file "_package_GetInit" :depends-on ("_package"))
  ))