;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::GetPOIs)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'GetPOIs (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::GETPOIS")
  (make-package "POI_MANAGER_MSGS::GETPOIS"))
(unless (find-package "POI_MANAGER_MSGS::GETPOISREQUEST")
  (make-package "POI_MANAGER_MSGS::GETPOISREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::GETPOISRESPONSE")
  (make-package "POI_MANAGER_MSGS::GETPOISRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::GetPOIsRequest
  :super ros::object
  :slots (_environment ))

(defmethod poi_manager_msgs::GetPOIsRequest
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

(defclass poi_manager_msgs::GetPOIsResponse
  :super ros::object
  :slots (_success _message _p_list ))

(defmethod poi_manager_msgs::GetPOIsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:p_list __p_list) (let (r) (dotimes (i 0) (push (instance poi_manager_msgs::LabeledPose :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _p_list __p_list)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:p_list
   (&rest __p_list)
   (if (keywordp (car __p_list))
       (send* _p_list __p_list)
     (progn
       (if __p_list (setq _p_list (car __p_list)))
       _p_list)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; poi_manager_msgs/LabeledPose[] _p_list
    (apply #'+ (send-all _p_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; poi_manager_msgs/LabeledPose[] _p_list
     (write-long (length _p_list) s)
     (dolist (elem _p_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; poi_manager_msgs/LabeledPose[] _p_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p_list (let (r) (dotimes (i n) (push (instance poi_manager_msgs::LabeledPose :init) r)) r))
     (dolist (elem- _p_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetPOIs
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::GetPOIs :md5sum-) "3a7e9332c1f7391c48b76fbd997c4c8e")
(setf (get poi_manager_msgs::GetPOIs :datatype-) "poi_manager_msgs/GetPOIs")
(setf (get poi_manager_msgs::GetPOIs :request) poi_manager_msgs::GetPOIsRequest)
(setf (get poi_manager_msgs::GetPOIs :response) poi_manager_msgs::GetPOIsResponse)

(defmethod poi_manager_msgs::GetPOIsRequest
  (:response () (instance poi_manager_msgs::GetPOIsResponse :init)))

(setf (get poi_manager_msgs::GetPOIsRequest :md5sum-) "3a7e9332c1f7391c48b76fbd997c4c8e")
(setf (get poi_manager_msgs::GetPOIsRequest :datatype-) "poi_manager_msgs/GetPOIsRequest")
(setf (get poi_manager_msgs::GetPOIsRequest :definition-)
      "string environment
---
bool success
string message
poi_manager_msgs/LabeledPose[] p_list

================================================================================
MSG: poi_manager_msgs/LabeledPose
string name
string environment
string params
string frame_id
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get poi_manager_msgs::GetPOIsResponse :md5sum-) "3a7e9332c1f7391c48b76fbd997c4c8e")
(setf (get poi_manager_msgs::GetPOIsResponse :datatype-) "poi_manager_msgs/GetPOIsResponse")
(setf (get poi_manager_msgs::GetPOIsResponse :definition-)
      "string environment
---
bool success
string message
poi_manager_msgs/LabeledPose[] p_list

================================================================================
MSG: poi_manager_msgs/LabeledPose
string name
string environment
string params
string frame_id
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :poi_manager_msgs/GetPOIs "3a7e9332c1f7391c48b76fbd997c4c8e")


