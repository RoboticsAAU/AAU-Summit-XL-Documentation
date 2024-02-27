;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandManagerArray)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandManagerArray (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDMANAGERARRAY")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDMANAGERARRAY"))

(in-package "ROS")
;;//! \htmlinclude CommandManagerArray.msg.html


(defclass robot_simple_command_manager_msgs::CommandManagerArray
  :super ros::object
  :slots (_commands ))

(defmethod robot_simple_command_manager_msgs::CommandManagerArray
  (:init
   (&key
    ((:commands __commands) (let (r) (dotimes (i 0) (push (instance robot_simple_command_manager_msgs::CommandManager :init) r)) r))
    )
   (send-super :init)
   (setq _commands __commands)
   self)
  (:commands
   (&rest __commands)
   (if (keywordp (car __commands))
       (send* _commands __commands)
     (progn
       (if __commands (setq _commands (car __commands)))
       _commands)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/CommandManager[] _commands
    (apply #'+ (send-all _commands :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/CommandManager[] _commands
     (write-long (length _commands) s)
     (dolist (elem _commands)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/CommandManager[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (let (r) (dotimes (i n) (push (instance robot_simple_command_manager_msgs::CommandManager :init) r)) r))
     (dolist (elem- _commands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandManagerArray :md5sum-) "0921f1afc8f4127f55f1c0b6e23fe8bd")
(setf (get robot_simple_command_manager_msgs::CommandManagerArray :datatype-) "robot_simple_command_manager_msgs/CommandManagerArray")
(setf (get robot_simple_command_manager_msgs::CommandManagerArray :definition-)
      "robot_simple_command_manager_msgs/CommandManager[] commands


================================================================================
MSG: robot_simple_command_manager_msgs/CommandManager
string id
string command


")



(provide :robot_simple_command_manager_msgs/CommandManagerArray "0921f1afc8f4127f55f1c0b6e23fe8bd")


