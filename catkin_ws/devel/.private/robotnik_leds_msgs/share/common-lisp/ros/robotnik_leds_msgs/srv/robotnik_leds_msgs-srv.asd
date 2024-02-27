
(cl:in-package :asdf)

(defsystem "robotnik_leds_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LedConfig" :depends-on ("_package_LedConfig"))
    (:file "_package_LedConfig" :depends-on ("_package"))
    (:file "LedEffects" :depends-on ("_package_LedEffects"))
    (:file "_package_LedEffects" :depends-on ("_package"))
    (:file "LedReset" :depends-on ("_package_LedReset"))
    (:file "_package_LedReset" :depends-on ("_package"))
  ))