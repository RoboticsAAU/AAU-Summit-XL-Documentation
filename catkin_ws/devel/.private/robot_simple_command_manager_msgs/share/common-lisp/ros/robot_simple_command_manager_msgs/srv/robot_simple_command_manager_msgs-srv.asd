
(cl:in-package :asdf)

(defsystem "robot_simple_command_manager_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :robot_simple_command_manager_msgs-msg
)
  :components ((:file "_package")
    (:file "AddSchedule" :depends-on ("_package_AddSchedule"))
    (:file "_package_AddSchedule" :depends-on ("_package"))
    (:file "GetCommandManagerList" :depends-on ("_package_GetCommandManagerList"))
    (:file "_package_GetCommandManagerList" :depends-on ("_package"))
    (:file "GetCommandSchedulerList" :depends-on ("_package_GetCommandSchedulerList"))
    (:file "_package_GetCommandSchedulerList" :depends-on ("_package"))
    (:file "GetHandlerInfo" :depends-on ("_package_GetHandlerInfo"))
    (:file "_package_GetHandlerInfo" :depends-on ("_package"))
    (:file "GetHandlers" :depends-on ("_package_GetHandlers"))
    (:file "_package_GetHandlers" :depends-on ("_package"))
    (:file "ManageCommandManager" :depends-on ("_package_ManageCommandManager"))
    (:file "_package_ManageCommandManager" :depends-on ("_package"))
    (:file "SetCommandString" :depends-on ("_package_SetCommandString"))
    (:file "_package_SetCommandString" :depends-on ("_package"))
    (:file "ToggleAcquisition" :depends-on ("_package_ToggleAcquisition"))
    (:file "_package_ToggleAcquisition" :depends-on ("_package"))
  ))