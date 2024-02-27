
(cl:in-package :asdf)

(defsystem "fake_joint_position_publisher-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetJoint" :depends-on ("_package_SetJoint"))
    (:file "_package_SetJoint" :depends-on ("_package"))
    (:file "SetJoints" :depends-on ("_package_SetJoints"))
    (:file "_package_SetJoints" :depends-on ("_package"))
  ))