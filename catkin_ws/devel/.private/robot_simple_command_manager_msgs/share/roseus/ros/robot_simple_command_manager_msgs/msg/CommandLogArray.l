;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandLogArray)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandLogArray (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDLOGARRAY")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDLOGARRAY"))

(in-package "ROS")
;;//! \htmlinclude CommandLogArray.msg.html


(defclass robot_simple_command_manager_msgs::CommandLogArray
  :super ros::object
  :slots (_log_commands ))

(defmethod robot_simple_command_manager_msgs::CommandLogArray
  (:init
   (&key
    ((:log_commands __log_commands) (let (r) (dotimes (i 0) (push (instance robot_simple_command_manager_msgs::CommandLog :init) r)) r))
    )
   (send-super :init)
   (setq _log_commands __log_commands)
   self)
  (:log_commands
   (&rest __log_commands)
   (if (keywordp (car __log_commands))
       (send* _log_commands __log_commands)
     (progn
       (if __log_commands (setq _log_commands (car __log_commands)))
       _log_commands)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/CommandLog[] _log_commands
    (apply #'+ (send-all _log_commands :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/CommandLog[] _log_commands
     (write-long (length _log_commands) s)
     (dolist (elem _log_commands)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/CommandLog[] _log_commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _log_commands (let (r) (dotimes (i n) (push (instance robot_simple_command_manager_msgs::CommandLog :init) r)) r))
     (dolist (elem- _log_commands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandLogArray :md5sum-) "5753f43e634712e7e70f05cdca4c3ba4")
(setf (get robot_simple_command_manager_msgs::CommandLogArray :datatype-) "robot_simple_command_manager_msgs/CommandLogArray")
(setf (get robot_simple_command_manager_msgs::CommandLogArray :definition-)
      "CommandLog[] log_commands
================================================================================
MSG: robot_simple_command_manager_msgs/CommandLog
string node_name
string process_name
string command
string status
string result
bool error


")



(provide :robot_simple_command_manager_msgs/CommandLogArray "5753f43e634712e7e70f05cdca4c3ba4")


