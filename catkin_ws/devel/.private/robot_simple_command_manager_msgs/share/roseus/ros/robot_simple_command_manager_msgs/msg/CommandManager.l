;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandManager)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandManager (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDMANAGER")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDMANAGER"))

(in-package "ROS")
;;//! \htmlinclude CommandManager.msg.html


(defclass robot_simple_command_manager_msgs::CommandManager
  :super ros::object
  :slots (_id _command ))

(defmethod robot_simple_command_manager_msgs::CommandManager
  (:init
   (&key
    ((:id __id) "")
    ((:command __command) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _command (string __command))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandManager :md5sum-) "9233bd7abcc99314ab41349f8a093851")
(setf (get robot_simple_command_manager_msgs::CommandManager :datatype-) "robot_simple_command_manager_msgs/CommandManager")
(setf (get robot_simple_command_manager_msgs::CommandManager :definition-)
      "string id
string command


")



(provide :robot_simple_command_manager_msgs/CommandManager "9233bd7abcc99314ab41349f8a093851")


