;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::SequencerStatus)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'SequencerStatus (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SEQUENCERSTATUS")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SEQUENCERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SequencerStatus.msg.html


(defclass robot_simple_command_manager_msgs::SequencerStatus
  :super ros::object
  :slots (_loaded_sequences _current_sequence _last_error ))

(defmethod robot_simple_command_manager_msgs::SequencerStatus
  (:init
   (&key
    ((:loaded_sequences __loaded_sequences) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_sequence __current_sequence) (instance robot_simple_command_manager_msgs::SequenceStatus :init))
    ((:last_error __last_error) "")
    )
   (send-super :init)
   (setq _loaded_sequences __loaded_sequences)
   (setq _current_sequence __current_sequence)
   (setq _last_error (string __last_error))
   self)
  (:loaded_sequences
   (&optional __loaded_sequences)
   (if __loaded_sequences (setq _loaded_sequences __loaded_sequences)) _loaded_sequences)
  (:current_sequence
   (&rest __current_sequence)
   (if (keywordp (car __current_sequence))
       (send* _current_sequence __current_sequence)
     (progn
       (if __current_sequence (setq _current_sequence (car __current_sequence)))
       _current_sequence)))
  (:last_error
   (&optional __last_error)
   (if __last_error (setq _last_error __last_error)) _last_error)
  (:serialization-length
   ()
   (+
    ;; string[] _loaded_sequences
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _loaded_sequences)) 4
    ;; robot_simple_command_manager_msgs/SequenceStatus _current_sequence
    (send _current_sequence :serialization-length)
    ;; string _last_error
    4 (length _last_error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _loaded_sequences
     (write-long (length _loaded_sequences) s)
     (dolist (elem _loaded_sequences)
       (write-long (length elem) s) (princ elem s)
       )
     ;; robot_simple_command_manager_msgs/SequenceStatus _current_sequence
       (send _current_sequence :serialize s)
     ;; string _last_error
       (write-long (length _last_error) s) (princ _last_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _loaded_sequences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loaded_sequences (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _loaded_sequences i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; robot_simple_command_manager_msgs/SequenceStatus _current_sequence
     (send _current_sequence :deserialize buf ptr-) (incf ptr- (send _current_sequence :serialization-length))
   ;; string _last_error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::SequencerStatus :md5sum-) "8d7f7e4a8b14f29c9977247d3fad3132")
(setf (get robot_simple_command_manager_msgs::SequencerStatus :datatype-) "robot_simple_command_manager_msgs/SequencerStatus")
(setf (get robot_simple_command_manager_msgs::SequencerStatus :definition-)
      "string[] loaded_sequences 
SequenceStatus current_sequence 
string last_error
================================================================================
MSG: robot_simple_command_manager_msgs/SequenceStatus
string name 
string[] commands 
string current_command 
int16 command_index 



")



(provide :robot_simple_command_manager_msgs/SequencerStatus "8d7f7e4a8b14f29c9977247d3fad3132")


