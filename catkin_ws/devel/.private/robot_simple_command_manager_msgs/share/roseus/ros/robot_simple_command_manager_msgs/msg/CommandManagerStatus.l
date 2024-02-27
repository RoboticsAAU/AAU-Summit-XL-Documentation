;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandManagerStatus)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandManagerStatus (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDMANAGERSTATUS")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDMANAGERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CommandManagerStatus.msg.html


(defclass robot_simple_command_manager_msgs::CommandManagerStatus
  :super ros::object
  :slots (_loaded_commands _paused_commands _command _code _msg ))

(defmethod robot_simple_command_manager_msgs::CommandManagerStatus
  (:init
   (&key
    ((:loaded_commands __loaded_commands) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:paused_commands __paused_commands) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:command __command) "")
    ((:code __code) "")
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _loaded_commands __loaded_commands)
   (setq _paused_commands __paused_commands)
   (setq _command (string __command))
   (setq _code (string __code))
   (setq _msg (string __msg))
   self)
  (:loaded_commands
   (&optional __loaded_commands)
   (if __loaded_commands (setq _loaded_commands __loaded_commands)) _loaded_commands)
  (:paused_commands
   (&optional __paused_commands)
   (if __paused_commands (setq _paused_commands __paused_commands)) _paused_commands)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string[] _loaded_commands
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _loaded_commands)) 4
    ;; string[] _paused_commands
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paused_commands)) 4
    ;; string _command
    4 (length _command)
    ;; string _code
    4 (length _code)
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _loaded_commands
     (write-long (length _loaded_commands) s)
     (dolist (elem _loaded_commands)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _paused_commands
     (write-long (length _paused_commands) s)
     (dolist (elem _paused_commands)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _code
       (write-long (length _code) s) (princ _code s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _loaded_commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loaded_commands (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _loaded_commands i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _paused_commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paused_commands (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _paused_commands i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandManagerStatus :md5sum-) "e13857c463eeda968a68cbe49d47f8d1")
(setf (get robot_simple_command_manager_msgs::CommandManagerStatus :datatype-) "robot_simple_command_manager_msgs/CommandManagerStatus")
(setf (get robot_simple_command_manager_msgs::CommandManagerStatus :definition-)
      "string[] loaded_commands
string[] paused_commands
string command
string code
string msg
")



(provide :robot_simple_command_manager_msgs/CommandManagerStatus "e13857c463eeda968a68cbe49d47f8d1")


