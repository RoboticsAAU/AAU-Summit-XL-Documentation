;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandLog)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandLog (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDLOG")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDLOG"))

(in-package "ROS")
;;//! \htmlinclude CommandLog.msg.html


(defclass robot_simple_command_manager_msgs::CommandLog
  :super ros::object
  :slots (_node_name _process_name _command _status _result _error ))

(defmethod robot_simple_command_manager_msgs::CommandLog
  (:init
   (&key
    ((:node_name __node_name) "")
    ((:process_name __process_name) "")
    ((:command __command) "")
    ((:status __status) "")
    ((:result __result) "")
    ((:error __error) nil)
    )
   (send-super :init)
   (setq _node_name (string __node_name))
   (setq _process_name (string __process_name))
   (setq _command (string __command))
   (setq _status (string __status))
   (setq _result (string __result))
   (setq _error __error)
   self)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:process_name
   (&optional __process_name)
   (if __process_name (setq _process_name __process_name)) _process_name)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; string _node_name
    4 (length _node_name)
    ;; string _process_name
    4 (length _process_name)
    ;; string _command
    4 (length _command)
    ;; string _status
    4 (length _status)
    ;; string _result
    4 (length _result)
    ;; bool _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; string _process_name
       (write-long (length _process_name) s) (princ _process_name s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; bool _error
       (if _error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _process_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _error
     (setq _error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandLog :md5sum-) "27048deb83cbc31fe2ad0d1dfb0d30bd")
(setf (get robot_simple_command_manager_msgs::CommandLog :datatype-) "robot_simple_command_manager_msgs/CommandLog")
(setf (get robot_simple_command_manager_msgs::CommandLog :definition-)
      "string node_name
string process_name
string command
string status
string result
bool error


")



(provide :robot_simple_command_manager_msgs/CommandLog "27048deb83cbc31fe2ad0d1dfb0d30bd")


