
(cl:in-package :asdf)

(defsystem "multimap_server_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DumpMap" :depends-on ("_package_DumpMap"))
    (:file "_package_DumpMap" :depends-on ("_package"))
    (:file "LoadEnvironments" :depends-on ("_package_LoadEnvironments"))
    (:file "_package_LoadEnvironments" :depends-on ("_package"))
    (:file "LoadMap" :depends-on ("_package_LoadMap"))
    (:file "_package_LoadMap" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
  ))