;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::StatusCodes)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'StatusCodes (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))

(in-package "ROS")
;;//! \htmlinclude StatusCodes.msg.html


(intern "*ACTIVE*" (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(shadow '*ACTIVE* (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(defconstant robot_simple_command_manager_msgs::StatusCodes::*ACTIVE* 1)
(intern "*CANCELLED*" (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(shadow '*CANCELLED* (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(defconstant robot_simple_command_manager_msgs::StatusCodes::*CANCELLED* 2)
(intern "*SUCCEEDED*" (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(shadow '*SUCCEEDED* (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(defconstant robot_simple_command_manager_msgs::StatusCodes::*SUCCEEDED* 3)
(intern "*FAILED*" (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(shadow '*FAILED* (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(defconstant robot_simple_command_manager_msgs::StatusCodes::*FAILED* 4)
(intern "*REJECTED*" (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(shadow '*REJECTED* (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::STATUSCODES"))
(defconstant robot_simple_command_manager_msgs::StatusCodes::*REJECTED* 5)
(defclass robot_simple_command_manager_msgs::StatusCodes
  :super ros::object
  :slots ())

(defmethod robot_simple_command_manager_msgs::StatusCodes
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::StatusCodes :md5sum-) "d4c26888d420c5a0f01c58b3c577e13c")
(setf (get robot_simple_command_manager_msgs::StatusCodes :datatype-) "robot_simple_command_manager_msgs/StatusCodes")
(setf (get robot_simple_command_manager_msgs::StatusCodes :definition-)
      "int16 ACTIVE    =  1
int16 CANCELLED =  2
int16 SUCCEEDED =  3
int16 FAILED    =  4
int16 REJECTED  =  5

")



(provide :robot_simple_command_manager_msgs/StatusCodes "d4c26888d420c5a0f01c58b3c577e13c")


