
(cl:in-package :asdf)

(defsystem "map_nav_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetFilename" :depends-on ("_package_SetFilename"))
    (:file "_package_SetFilename" :depends-on ("_package"))
  ))