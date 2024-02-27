;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::ManageCommandManager)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'ManageCommandManager (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::MANAGECOMMANDMANAGER")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::MANAGECOMMANDMANAGER"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::MANAGECOMMANDMANAGERREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::MANAGECOMMANDMANAGERREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::MANAGECOMMANDMANAGERRESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::MANAGECOMMANDMANAGERRESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::ManageCommandManagerRequest
  :super ros::object
  :slots (_Command ))

(defmethod robot_simple_command_manager_msgs::ManageCommandManagerRequest
  (:init
   (&key
    ((:Command __Command) (instance robot_simple_command_manager_msgs::CommandManager :init))
    )
   (send-super :init)
   (setq _Command __Command)
   self)
  (:Command
   (&rest __Command)
   (if (keywordp (car __Command))
       (send* _Command __Command)
     (progn
       (if __Command (setq _Command (car __Command)))
       _Command)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/CommandManager _Command
    (send _Command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/CommandManager _Command
       (send _Command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/CommandManager _Command
     (send _Command :deserialize buf ptr-) (incf ptr- (send _Command :serialization-length))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::ManageCommandManagerResponse
  :super ros::object
  :slots (_ret ))

(defmethod robot_simple_command_manager_msgs::ManageCommandManagerResponse
  (:init
   (&key
    ((:ret __ret) (instance robot_simple_command_manager_msgs::ReturnMessage :init))
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&rest __ret)
   (if (keywordp (car __ret))
       (send* _ret __ret)
     (progn
       (if __ret (setq _ret (car __ret)))
       _ret)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/ReturnMessage _ret
    (send _ret :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/ReturnMessage _ret
       (send _ret :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/ReturnMessage _ret
     (send _ret :deserialize buf ptr-) (incf ptr- (send _ret :serialization-length))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::ManageCommandManager
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::ManageCommandManager :md5sum-) "71fe46a5c46f88e680dc57f023e7822c")
(setf (get robot_simple_command_manager_msgs::ManageCommandManager :datatype-) "robot_simple_command_manager_msgs/ManageCommandManager")
(setf (get robot_simple_command_manager_msgs::ManageCommandManager :request) robot_simple_command_manager_msgs::ManageCommandManagerRequest)
(setf (get robot_simple_command_manager_msgs::ManageCommandManager :response) robot_simple_command_manager_msgs::ManageCommandManagerResponse)

(defmethod robot_simple_command_manager_msgs::ManageCommandManagerRequest
  (:response () (instance robot_simple_command_manager_msgs::ManageCommandManagerResponse :init)))

(setf (get robot_simple_command_manager_msgs::ManageCommandManagerRequest :md5sum-) "71fe46a5c46f88e680dc57f023e7822c")
(setf (get robot_simple_command_manager_msgs::ManageCommandManagerRequest :datatype-) "robot_simple_command_manager_msgs/ManageCommandManagerRequest")
(setf (get robot_simple_command_manager_msgs::ManageCommandManagerRequest :definition-)
      "robot_simple_command_manager_msgs/CommandManager Command

================================================================================
MSG: robot_simple_command_manager_msgs/CommandManager
string id
string command

---
robot_simple_command_manager_msgs/ReturnMessage ret

================================================================================
MSG: robot_simple_command_manager_msgs/ReturnMessage
bool success
string message
")

(setf (get robot_simple_command_manager_msgs::ManageCommandManagerResponse :md5sum-) "71fe46a5c46f88e680dc57f023e7822c")
(setf (get robot_simple_command_manager_msgs::ManageCommandManagerResponse :datatype-) "robot_simple_command_manager_msgs/ManageCommandManagerResponse")
(setf (get robot_simple_command_manager_msgs::ManageCommandManagerResponse :definition-)
      "robot_simple_command_manager_msgs/CommandManager Command

================================================================================
MSG: robot_simple_command_manager_msgs/CommandManager
string id
string command

---
robot_simple_command_manager_msgs/ReturnMessage ret

================================================================================
MSG: robot_simple_command_manager_msgs/ReturnMessage
bool success
string message
")



(provide :robot_simple_command_manager_msgs/ManageCommandManager "71fe46a5c46f88e680dc57f023e7822c")


