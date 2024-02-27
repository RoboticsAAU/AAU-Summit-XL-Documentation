;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::DeleteEnvironment)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'DeleteEnvironment (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::DELETEENVIRONMENT")
  (make-package "POI_MANAGER_MSGS::DELETEENVIRONMENT"))
(unless (find-package "POI_MANAGER_MSGS::DELETEENVIRONMENTREQUEST")
  (make-package "POI_MANAGER_MSGS::DELETEENVIRONMENTREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::DELETEENVIRONMENTRESPONSE")
  (make-package "POI_MANAGER_MSGS::DELETEENVIRONMENTRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::DeleteEnvironmentRequest
  :super ros::object
  :slots (_environment ))

(defmethod poi_manager_msgs::DeleteEnvironmentRequest
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

(defclass poi_manager_msgs::DeleteEnvironmentResponse
  :super ros::object
  :slots (_success _message ))

(defmethod poi_manager_msgs::DeleteEnvironmentResponse
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

(defclass poi_manager_msgs::DeleteEnvironment
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::DeleteEnvironment :md5sum-) "4aa42c943cdd0b5692dc2dbb91c546f2")
(setf (get poi_manager_msgs::DeleteEnvironment :datatype-) "poi_manager_msgs/DeleteEnvironment")
(setf (get poi_manager_msgs::DeleteEnvironment :request) poi_manager_msgs::DeleteEnvironmentRequest)
(setf (get poi_manager_msgs::DeleteEnvironment :response) poi_manager_msgs::DeleteEnvironmentResponse)

(defmethod poi_manager_msgs::DeleteEnvironmentRequest
  (:response () (instance poi_manager_msgs::DeleteEnvironmentResponse :init)))

(setf (get poi_manager_msgs::DeleteEnvironmentRequest :md5sum-) "4aa42c943cdd0b5692dc2dbb91c546f2")
(setf (get poi_manager_msgs::DeleteEnvironmentRequest :datatype-) "poi_manager_msgs/DeleteEnvironmentRequest")
(setf (get poi_manager_msgs::DeleteEnvironmentRequest :definition-)
      "string environment
---
bool success
string message
")

(setf (get poi_manager_msgs::DeleteEnvironmentResponse :md5sum-) "4aa42c943cdd0b5692dc2dbb91c546f2")
(setf (get poi_manager_msgs::DeleteEnvironmentResponse :datatype-) "poi_manager_msgs/DeleteEnvironmentResponse")
(setf (get poi_manager_msgs::DeleteEnvironmentResponse :definition-)
      "string environment
---
bool success
string message
")



(provide :poi_manager_msgs/DeleteEnvironment "4aa42c943cdd0b5692dc2dbb91c546f2")


