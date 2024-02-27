
(cl:in-package :asdf)

(defsystem "marker_mapping-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "InitPoseFromFrame" :depends-on ("_package_InitPoseFromFrame"))
    (:file "_package_InitPoseFromFrame" :depends-on ("_package"))
    (:file "InitPoseFromMarker" :depends-on ("_package_InitPoseFromMarker"))
    (:file "_package_InitPoseFromMarker" :depends-on ("_package"))
    (:file "SaveFrame" :depends-on ("_package_SaveFrame"))
    (:file "_package_SaveFrame" :depends-on ("_package"))
    (:file "SaveMarker" :depends-on ("_package_SaveMarker"))
    (:file "_package_SaveMarker" :depends-on ("_package"))
    (:file "SetFrameId" :depends-on ("_package_SetFrameId"))
    (:file "_package_SetFrameId" :depends-on ("_package"))
  ))