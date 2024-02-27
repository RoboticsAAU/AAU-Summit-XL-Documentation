;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GetEnvironment)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GetEnvironment (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GETENVIRONMENT")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GETENVIRONMENT"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GETENVIRONMENTREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GETENVIRONMENTREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GETENVIRONMENTRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GETENVIRONMENTRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::GetEnvironmentRequest
  :super ros::object
  :slots ())

(defmethod robot_local_control_msgs::GetEnvironmentRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_local_control_msgs::GetEnvironmentResponse
  :super ros::object
  :slots (_success _message _environment ))

(defmethod robot_local_control_msgs::GetEnvironmentResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:environment __environment) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _environment __environment)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; string[] _environment
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _environment)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _environment
     (write-long (length _environment) s)
     (dolist (elem _environment)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _environment
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _environment (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _environment i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robot_local_control_msgs::GetEnvironment
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::GetEnvironment :md5sum-) "18e10632e78694f7360539cc210ec71f")
(setf (get robot_local_control_msgs::GetEnvironment :datatype-) "robot_local_control_msgs/GetEnvironment")
(setf (get robot_local_control_msgs::GetEnvironment :request) robot_local_control_msgs::GetEnvironmentRequest)
(setf (get robot_local_control_msgs::GetEnvironment :response) robot_local_control_msgs::GetEnvironmentResponse)

(defmethod robot_local_control_msgs::GetEnvironmentRequest
  (:response () (instance robot_local_control_msgs::GetEnvironmentResponse :init)))

(setf (get robot_local_control_msgs::GetEnvironmentRequest :md5sum-) "18e10632e78694f7360539cc210ec71f")
(setf (get robot_local_control_msgs::GetEnvironmentRequest :datatype-) "robot_local_control_msgs/GetEnvironmentRequest")
(setf (get robot_local_control_msgs::GetEnvironmentRequest :definition-)
      "# returns a list of environments
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
string[] environment 

")

(setf (get robot_local_control_msgs::GetEnvironmentResponse :md5sum-) "18e10632e78694f7360539cc210ec71f")
(setf (get robot_local_control_msgs::GetEnvironmentResponse :datatype-) "robot_local_control_msgs/GetEnvironmentResponse")
(setf (get robot_local_control_msgs::GetEnvironmentResponse :definition-)
      "# returns a list of environments
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
string[] environment 

")



(provide :robot_local_control_msgs/GetEnvironment "18e10632e78694f7360539cc210ec71f")


