;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::AddPOI)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'AddPOI (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::ADDPOI")
  (make-package "POI_MANAGER_MSGS::ADDPOI"))
(unless (find-package "POI_MANAGER_MSGS::ADDPOIREQUEST")
  (make-package "POI_MANAGER_MSGS::ADDPOIREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::ADDPOIRESPONSE")
  (make-package "POI_MANAGER_MSGS::ADDPOIRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::AddPOIRequest
  :super ros::object
  :slots (_p ))

(defmethod poi_manager_msgs::AddPOIRequest
  (:init
   (&key
    ((:p __p) (instance poi_manager_msgs::LabeledPose :init))
    )
   (send-super :init)
   (setq _p __p)
   self)
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:serialization-length
   ()
   (+
    ;; poi_manager_msgs/LabeledPose _p
    (send _p :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; poi_manager_msgs/LabeledPose _p
       (send _p :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; poi_manager_msgs/LabeledPose _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;;
   self)
  )

(defclass poi_manager_msgs::AddPOIResponse
  :super ros::object
  :slots (_success _message ))

(defmethod poi_manager_msgs::AddPOIResponse
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

(defclass poi_manager_msgs::AddPOI
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::AddPOI :md5sum-) "31c6c5ebe956d1a071c7fa7bf0f79398")
(setf (get poi_manager_msgs::AddPOI :datatype-) "poi_manager_msgs/AddPOI")
(setf (get poi_manager_msgs::AddPOI :request) poi_manager_msgs::AddPOIRequest)
(setf (get poi_manager_msgs::AddPOI :response) poi_manager_msgs::AddPOIResponse)

(defmethod poi_manager_msgs::AddPOIRequest
  (:response () (instance poi_manager_msgs::AddPOIResponse :init)))

(setf (get poi_manager_msgs::AddPOIRequest :md5sum-) "31c6c5ebe956d1a071c7fa7bf0f79398")
(setf (get poi_manager_msgs::AddPOIRequest :datatype-) "poi_manager_msgs/AddPOIRequest")
(setf (get poi_manager_msgs::AddPOIRequest :definition-)
      "poi_manager_msgs/LabeledPose p

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
---
bool success
string message

")

(setf (get poi_manager_msgs::AddPOIResponse :md5sum-) "31c6c5ebe956d1a071c7fa7bf0f79398")
(setf (get poi_manager_msgs::AddPOIResponse :datatype-) "poi_manager_msgs/AddPOIResponse")
(setf (get poi_manager_msgs::AddPOIResponse :definition-)
      "poi_manager_msgs/LabeledPose p

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
---
bool success
string message

")



(provide :poi_manager_msgs/AddPOI "31c6c5ebe956d1a071c7fa7bf0f79398")


