
(cl:in-package :asdf)

(defsystem "map_nav_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robotnik_msgs-msg
)
  :components ((:file "_package")
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))