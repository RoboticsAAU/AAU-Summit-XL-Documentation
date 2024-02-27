
(cl:in-package :asdf)

(defsystem "marker_mapping-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :robotnik_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FrameMappingStatus" :depends-on ("_package_FrameMappingStatus"))
    (:file "_package_FrameMappingStatus" :depends-on ("_package"))
    (:file "FrameStatus" :depends-on ("_package_FrameStatus"))
    (:file "_package_FrameStatus" :depends-on ("_package"))
    (:file "MarkerMappingState" :depends-on ("_package_MarkerMappingState"))
    (:file "_package_MarkerMappingState" :depends-on ("_package"))
  ))