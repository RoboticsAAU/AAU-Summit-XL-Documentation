;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandStringFeedback)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandStringFeedback (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSTRINGFEEDBACK")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSTRINGFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude CommandStringFeedback.msg.html


(defclass robot_simple_command_manager_msgs::CommandStringFeedback
  :super ros::object
  :slots (_command _status ))

(defmethod robot_simple_command_manager_msgs::CommandStringFeedback
  (:init
   (&key
    ((:command __command) "")
    ((:status __status) "")
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _status (string __status))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandStringFeedback :md5sum-) "7236684bf0009e315d87048d1a67d74c")
(setf (get robot_simple_command_manager_msgs::CommandStringFeedback :datatype-) "robot_simple_command_manager_msgs/CommandStringFeedback")
(setf (get robot_simple_command_manager_msgs::CommandStringFeedback :definition-)
      "string command
string status
")



(provide :robot_simple_command_manager_msgs/CommandStringFeedback "7236684bf0009e315d87048d1a67d74c")


