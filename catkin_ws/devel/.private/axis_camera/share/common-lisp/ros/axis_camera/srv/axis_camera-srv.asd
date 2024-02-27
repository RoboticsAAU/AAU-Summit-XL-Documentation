
(cl:in-package :asdf)

(defsystem "axis_camera-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "set_digital_output" :depends-on ("_package_set_digital_output"))
    (:file "_package_set_digital_output" :depends-on ("_package"))
    (:file "set_ptz" :depends-on ("_package_set_ptz"))
    (:file "_package_set_ptz" :depends-on ("_package"))
  ))