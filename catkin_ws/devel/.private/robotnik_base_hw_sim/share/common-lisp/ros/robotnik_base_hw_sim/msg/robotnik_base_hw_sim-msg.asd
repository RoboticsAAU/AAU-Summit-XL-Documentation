
(cl:in-package :asdf)

(defsystem "robotnik_base_hw_sim-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PickState" :depends-on ("_package_PickState"))
    (:file "_package_PickState" :depends-on ("_package"))
    (:file "PickStates" :depends-on ("_package_PickStates"))
    (:file "_package_PickStates" :depends-on ("_package"))
  ))