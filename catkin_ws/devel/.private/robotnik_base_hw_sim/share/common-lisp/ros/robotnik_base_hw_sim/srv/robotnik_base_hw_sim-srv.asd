
(cl:in-package :asdf)

(defsystem "robotnik_base_hw_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Pick" :depends-on ("_package_Pick"))
    (:file "_package_Pick" :depends-on ("_package"))
    (:file "Place" :depends-on ("_package_Place"))
    (:file "_package_Place" :depends-on ("_package"))
    (:file "SimplePick" :depends-on ("_package_SimplePick"))
    (:file "_package_SimplePick" :depends-on ("_package"))
    (:file "SimplePlace" :depends-on ("_package_SimplePlace"))
    (:file "_package_SimplePlace" :depends-on ("_package"))
  ))