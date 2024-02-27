;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandStringResult)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandStringResult (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSTRINGRESULT")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSTRINGRESULT"))

(in-package "ROS")
;;//! \htmlinclude CommandStringResult.msg.html


(defclass robot_simple_command_manager_msgs::CommandStringResult
  :super ros::object
  :slots (_command _success _message _code ))

(defmethod robot_simple_command_manager_msgs::CommandStringResult
  (:init
   (&key
    ((:command __command) "")
    ((:success __success) nil)
    ((:message __message) "")
    ((:code __code) 0)
    )
   (send-super :init)
   (setq _command (string __command))
   (setq _success __success)
   (setq _message (string __message))
   (setq _code (round __code))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; int16 _code
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; int16 _code
       (write-word _code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _code
     (setq _code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandStringResult :md5sum-) "f2c710fa8e23f82c3137cc621e1e32f7")
(setf (get robot_simple_command_manager_msgs::CommandStringResult :datatype-) "robot_simple_command_manager_msgs/CommandStringResult")
(setf (get robot_simple_command_manager_msgs::CommandStringResult :definition-)
      "string command
bool success
string message
int16 code
")



(provide :robot_simple_command_manager_msgs/CommandStringResult "f2c710fa8e23f82c3137cc621e1e32f7")


