;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::SequenceStatus)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'SequenceStatus (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SEQUENCESTATUS")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SEQUENCESTATUS"))

(in-package "ROS")
;;//! \htmlinclude SequenceStatus.msg.html


(defclass robot_simple_command_manager_msgs::SequenceStatus
  :super ros::object
  :slots (_name _commands _current_command _command_index ))

(defmethod robot_simple_command_manager_msgs::SequenceStatus
  (:init
   (&key
    ((:name __name) "")
    ((:commands __commands) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_command __current_command) "")
    ((:command_index __command_index) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _commands __commands)
   (setq _current_command (string __current_command))
   (setq _command_index (round __command_index))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:commands
   (&optional __commands)
   (if __commands (setq _commands __commands)) _commands)
  (:current_command
   (&optional __current_command)
   (if __current_command (setq _current_command __current_command)) _current_command)
  (:command_index
   (&optional __command_index)
   (if __command_index (setq _command_index __command_index)) _command_index)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _commands
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _commands)) 4
    ;; string _current_command
    4 (length _current_command)
    ;; int16 _command_index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _commands
     (write-long (length _commands) s)
     (dolist (elem _commands)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _current_command
       (write-long (length _current_command) s) (princ _current_command s)
     ;; int16 _command_index
       (write-word _command_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _commands i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _current_command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _command_index
     (setq _command_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::SequenceStatus :md5sum-) "28564f5cd26c96ad764c97f43145fa4e")
(setf (get robot_simple_command_manager_msgs::SequenceStatus :datatype-) "robot_simple_command_manager_msgs/SequenceStatus")
(setf (get robot_simple_command_manager_msgs::SequenceStatus :definition-)
      "string name 
string[] commands 
string current_command 
int16 command_index 



")



(provide :robot_simple_command_manager_msgs/SequenceStatus "28564f5cd26c96ad764c97f43145fa4e")


