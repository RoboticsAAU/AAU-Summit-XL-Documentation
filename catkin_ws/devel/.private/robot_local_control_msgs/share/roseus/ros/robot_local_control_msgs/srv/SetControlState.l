;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SetControlState)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SetControlState (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETCONTROLSTATE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETCONTROLSTATE"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETCONTROLSTATEREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETCONTROLSTATEREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETCONTROLSTATERESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETCONTROLSTATERESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SetControlStateRequest
  :super ros::object
  :slots (_command ))

(defmethod robot_local_control_msgs::SetControlStateRequest
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

(defclass robot_local_control_msgs::SetControlStateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SetControlStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SetControlState
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SetControlState :md5sum-) "c348f8d8cd3a80f54328aa4159009109")
(setf (get robot_local_control_msgs::SetControlState :datatype-) "robot_local_control_msgs/SetControlState")
(setf (get robot_local_control_msgs::SetControlState :request) robot_local_control_msgs::SetControlStateRequest)
(setf (get robot_local_control_msgs::SetControlState :response) robot_local_control_msgs::SetControlStateResponse)

(defmethod robot_local_control_msgs::SetControlStateRequest
  (:response () (instance robot_local_control_msgs::SetControlStateResponse :init)))

(setf (get robot_local_control_msgs::SetControlStateRequest :md5sum-) "c348f8d8cd3a80f54328aa4159009109")
(setf (get robot_local_control_msgs::SetControlStateRequest :datatype-) "robot_local_control_msgs/SetControlStateRequest")
(setf (get robot_local_control_msgs::SetControlStateRequest :definition-)
      "# CONTROL STATES OF THE ROBOT
# autonomous: the robot is moving autonomously
# manual: the robot is being tele-operated by an operator
# follow: the robot is following a person 

# see robot_local_control_msgs/State for the CONTROL_STATE options/commands
string command
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robot_local_control_msgs::SetControlStateResponse :md5sum-) "c348f8d8cd3a80f54328aa4159009109")
(setf (get robot_local_control_msgs::SetControlStateResponse :datatype-) "robot_local_control_msgs/SetControlStateResponse")
(setf (get robot_local_control_msgs::SetControlStateResponse :definition-)
      "# CONTROL STATES OF THE ROBOT
# autonomous: the robot is moving autonomously
# manual: the robot is being tele-operated by an operator
# follow: the robot is following a person 

# see robot_local_control_msgs/State for the CONTROL_STATE options/commands
string command
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robot_local_control_msgs/SetControlState "c348f8d8cd3a80f54328aa4159009109")


