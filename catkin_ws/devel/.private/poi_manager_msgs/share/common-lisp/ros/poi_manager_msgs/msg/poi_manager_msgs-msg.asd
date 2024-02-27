
(cl:in-package :asdf)

(defsystem "poi_manager_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :robotnik_msgs-msg
)
  :components ((:file "_package")
    (:file "LabeledPose" :depends-on ("_package_LabeledPose"))
    (:file "_package_LabeledPose" :depends-on ("_package"))
    (:file "PoiState" :depends-on ("_package_PoiState"))
    (:file "_package_PoiState" :depends-on ("_package"))
  ))