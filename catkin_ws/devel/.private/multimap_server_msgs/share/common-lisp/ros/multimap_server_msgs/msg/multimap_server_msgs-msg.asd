
(cl:in-package :asdf)

(defsystem "multimap_server_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Environment" :depends-on ("_package_Environment"))
    (:file "_package_Environment" :depends-on ("_package"))
    (:file "Environments" :depends-on ("_package_Environments"))
    (:file "_package_Environments" :depends-on ("_package"))
  ))