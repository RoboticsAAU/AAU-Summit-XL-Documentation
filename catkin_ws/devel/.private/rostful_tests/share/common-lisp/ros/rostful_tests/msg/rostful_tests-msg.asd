
(cl:in-package :asdf)

(defsystem "rostful_tests-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WaitAction" :depends-on ("_package_WaitAction"))
    (:file "_package_WaitAction" :depends-on ("_package"))
    (:file "WaitActionFeedback" :depends-on ("_package_WaitActionFeedback"))
    (:file "_package_WaitActionFeedback" :depends-on ("_package"))
    (:file "WaitActionGoal" :depends-on ("_package_WaitActionGoal"))
    (:file "_package_WaitActionGoal" :depends-on ("_package"))
    (:file "WaitActionResult" :depends-on ("_package_WaitActionResult"))
    (:file "_package_WaitActionResult" :depends-on ("_package"))
    (:file "WaitFeedback" :depends-on ("_package_WaitFeedback"))
    (:file "_package_WaitFeedback" :depends-on ("_package"))
    (:file "WaitGoal" :depends-on ("_package_WaitGoal"))
    (:file "_package_WaitGoal" :depends-on ("_package"))
    (:file "WaitResult" :depends-on ("_package_WaitResult"))
    (:file "_package_WaitResult" :depends-on ("_package"))
  ))