;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandString)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandString (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSTRING")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSTRING"))

(in-package "ROS")
;;//! \htmlinclude CommandString.msg.html


(defclass robot_simple_command_manager_msgs::CommandString
  :super ros::object
  :slots (_command ))

(defmethod robot_simple_command_manager_msgs::CommandString
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandString :md5sum-) "cba5e21e920a3a2b7b375cb65b64cdea")
(setf (get robot_simple_command_manager_msgs::CommandString :datatype-) "robot_simple_command_manager_msgs/CommandString")
(setf (get robot_simple_command_manager_msgs::CommandString :definition-)
      "string command
")



(provide :robot_simple_command_manager_msgs/CommandString "cba5e21e920a3a2b7b375cb65b64cdea")


