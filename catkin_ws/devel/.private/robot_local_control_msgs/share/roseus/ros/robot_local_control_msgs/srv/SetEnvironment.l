;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SetEnvironment)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SetEnvironment (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETENVIRONMENT")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETENVIRONMENT"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETENVIRONMENTREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETENVIRONMENTREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETENVIRONMENTRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETENVIRONMENTRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SetEnvironmentRequest
  :super ros::object
  :slots (_environment ))

(defmethod robot_local_control_msgs::SetEnvironmentRequest
  (:init
   (&key
    ((:environment __environment) "")
    )
   (send-super :init)
   (setq _environment (string __environment))
   self)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:serialization-length
   ()
   (+
    ;; string _environment
    4 (length _environment)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SetEnvironmentResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SetEnvironmentResponse
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

(defclass robot_local_control_msgs::SetEnvironment
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SetEnvironment :md5sum-) "4aa42c943cdd0b5692dc2dbb91c546f2")
(setf (get robot_local_control_msgs::SetEnvironment :datatype-) "robot_local_control_msgs/SetEnvironment")
(setf (get robot_local_control_msgs::SetEnvironment :request) robot_local_control_msgs::SetEnvironmentRequest)
(setf (get robot_local_control_msgs::SetEnvironment :response) robot_local_control_msgs::SetEnvironmentResponse)

(defmethod robot_local_control_msgs::SetEnvironmentRequest
  (:response () (instance robot_local_control_msgs::SetEnvironmentResponse :init)))

(setf (get robot_local_control_msgs::SetEnvironmentRequest :md5sum-) "4aa42c943cdd0b5692dc2dbb91c546f2")
(setf (get robot_local_control_msgs::SetEnvironmentRequest :datatype-) "robot_local_control_msgs/SetEnvironmentRequest")
(setf (get robot_local_control_msgs::SetEnvironmentRequest :definition-)
      "string environment
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robot_local_control_msgs::SetEnvironmentResponse :md5sum-) "4aa42c943cdd0b5692dc2dbb91c546f2")
(setf (get robot_local_control_msgs::SetEnvironmentResponse :datatype-) "robot_local_control_msgs/SetEnvironmentResponse")
(setf (get robot_local_control_msgs::SetEnvironmentResponse :definition-)
      "string environment
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robot_local_control_msgs/SetEnvironment "4aa42c943cdd0b5692dc2dbb91c546f2")


