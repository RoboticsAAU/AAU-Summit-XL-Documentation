;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::ReturnMessage)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'ReturnMessage (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::RETURNMESSAGE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::RETURNMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude ReturnMessage.msg.html


(defclass robot_simple_command_manager_msgs::ReturnMessage
  :super ros::object
  :slots (_success _message _code ))

(defmethod robot_simple_command_manager_msgs::ReturnMessage
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:code __code) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _code (round __code))
   self)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _code
     (setq _code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::ReturnMessage :md5sum-) "797637cd4b4f3860dff5d9fefb9b58f4")
(setf (get robot_simple_command_manager_msgs::ReturnMessage :datatype-) "robot_simple_command_manager_msgs/ReturnMessage")
(setf (get robot_simple_command_manager_msgs::ReturnMessage :definition-)
      "bool success
string message
int16 code
")



(provide :robot_simple_command_manager_msgs/ReturnMessage "797637cd4b4f3860dff5d9fefb9b58f4")


