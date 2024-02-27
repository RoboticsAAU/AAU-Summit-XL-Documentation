
(cl:in-package :asdf)

(defsystem "robot_local_control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :procedures_msgs-msg
               :robot_local_control_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BatteryExchangePetition" :depends-on ("_package_BatteryExchangePetition"))
    (:file "_package_BatteryExchangePetition" :depends-on ("_package"))
    (:file "Cancel" :depends-on ("_package_Cancel"))
    (:file "_package_Cancel" :depends-on ("_package"))
    (:file "ChargePetition" :depends-on ("_package_ChargePetition"))
    (:file "_package_ChargePetition" :depends-on ("_package"))
    (:file "DockPetition" :depends-on ("_package_DockPetition"))
    (:file "_package_DockPetition" :depends-on ("_package"))
    (:file "EnterLiftPetition" :depends-on ("_package_EnterLiftPetition"))
    (:file "_package_EnterLiftPetition" :depends-on ("_package"))
    (:file "EnterShowerPetition" :depends-on ("_package_EnterShowerPetition"))
    (:file "_package_EnterShowerPetition" :depends-on ("_package"))
    (:file "FindMagneticGuidePetition" :depends-on ("_package_FindMagneticGuidePetition"))
    (:file "_package_FindMagneticGuidePetition" :depends-on ("_package"))
    (:file "GetEnvironment" :depends-on ("_package_GetEnvironment"))
    (:file "_package_GetEnvironment" :depends-on ("_package"))
    (:file "GoToGPSPetition" :depends-on ("_package_GoToGPSPetition"))
    (:file "_package_GoToGPSPetition" :depends-on ("_package"))
    (:file "GoToNodePetition" :depends-on ("_package_GoToNodePetition"))
    (:file "_package_GoToNodePetition" :depends-on ("_package"))
    (:file "GoToPetition" :depends-on ("_package_GoToPetition"))
    (:file "_package_GoToPetition" :depends-on ("_package"))
    (:file "GoToTagPetition" :depends-on ("_package_GoToTagPetition"))
    (:file "_package_GoToTagPetition" :depends-on ("_package"))
    (:file "LeaveLiftPetition" :depends-on ("_package_LeaveLiftPetition"))
    (:file "_package_LeaveLiftPetition" :depends-on ("_package"))
    (:file "LeaveMagneticGuidePetition" :depends-on ("_package_LeaveMagneticGuidePetition"))
    (:file "_package_LeaveMagneticGuidePetition" :depends-on ("_package"))
    (:file "LeaveShowerPetition" :depends-on ("_package_LeaveShowerPetition"))
    (:file "_package_LeaveShowerPetition" :depends-on ("_package"))
    (:file "MagneticGoToPetition" :depends-on ("_package_MagneticGoToPetition"))
    (:file "_package_MagneticGoToPetition" :depends-on ("_package"))
    (:file "MagneticNavigationPetition" :depends-on ("_package_MagneticNavigationPetition"))
    (:file "_package_MagneticNavigationPetition" :depends-on ("_package"))
    (:file "MagneticPickPetition" :depends-on ("_package_MagneticPickPetition"))
    (:file "_package_MagneticPickPetition" :depends-on ("_package"))
    (:file "MagneticPlacePetition" :depends-on ("_package_MagneticPlacePetition"))
    (:file "_package_MagneticPlacePetition" :depends-on ("_package"))
    (:file "MissionCommandPetition" :depends-on ("_package_MissionCommandPetition"))
    (:file "_package_MissionCommandPetition" :depends-on ("_package"))
    (:file "MissionPetition" :depends-on ("_package_MissionPetition"))
    (:file "_package_MissionPetition" :depends-on ("_package"))
    (:file "MovePetition" :depends-on ("_package_MovePetition"))
    (:file "_package_MovePetition" :depends-on ("_package"))
    (:file "PickPetition" :depends-on ("_package_PickPetition"))
    (:file "_package_PickPetition" :depends-on ("_package"))
    (:file "PlacePetition" :depends-on ("_package_PlacePetition"))
    (:file "_package_PlacePetition" :depends-on ("_package"))
    (:file "PostPickPetition" :depends-on ("_package_PostPickPetition"))
    (:file "_package_PostPickPetition" :depends-on ("_package"))
    (:file "PostPlacePetition" :depends-on ("_package_PostPlacePetition"))
    (:file "_package_PostPlacePetition" :depends-on ("_package"))
    (:file "PrePickPetition" :depends-on ("_package_PrePickPetition"))
    (:file "_package_PrePickPetition" :depends-on ("_package"))
    (:file "PrePlacePetition" :depends-on ("_package_PrePlacePetition"))
    (:file "_package_PrePlacePetition" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SetControlState" :depends-on ("_package_SetControlState"))
    (:file "_package_SetControlState" :depends-on ("_package"))
    (:file "SetElevatorPetition" :depends-on ("_package_SetElevatorPetition"))
    (:file "_package_SetElevatorPetition" :depends-on ("_package"))
    (:file "SetEnvironment" :depends-on ("_package_SetEnvironment"))
    (:file "_package_SetEnvironment" :depends-on ("_package"))
    (:file "SetFrameID" :depends-on ("_package_SetFrameID"))
    (:file "_package_SetFrameID" :depends-on ("_package"))
    (:file "SetGoToPetition" :depends-on ("_package_SetGoToPetition"))
    (:file "_package_SetGoToPetition" :depends-on ("_package"))
    (:file "SetPose2DStamped" :depends-on ("_package_SetPose2DStamped"))
    (:file "_package_SetPose2DStamped" :depends-on ("_package"))
    (:file "SimpleGoToWithValidation" :depends-on ("_package_SimpleGoToWithValidation"))
    (:file "_package_SimpleGoToWithValidation" :depends-on ("_package"))
    (:file "StatusPetition" :depends-on ("_package_StatusPetition"))
    (:file "_package_StatusPetition" :depends-on ("_package"))
    (:file "SwitchMapPetition" :depends-on ("_package_SwitchMapPetition"))
    (:file "_package_SwitchMapPetition" :depends-on ("_package"))
    (:file "SwitchModule" :depends-on ("_package_SwitchModule"))
    (:file "_package_SwitchModule" :depends-on ("_package"))
    (:file "UnchargePetition" :depends-on ("_package_UnchargePetition"))
    (:file "_package_UnchargePetition" :depends-on ("_package"))
  ))