;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::GetPOI)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'GetPOI (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::GETPOI")
  (make-package "POI_MANAGER_MSGS::GETPOI"))
(unless (find-package "POI_MANAGER_MSGS::GETPOIREQUEST")
  (make-package "POI_MANAGER_MSGS::GETPOIREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::GETPOIRESPONSE")
  (make-package "POI_MANAGER_MSGS::GETPOIRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::GetPOIRequest
  :super ros::object
  :slots (_name _environment ))

(defmethod poi_manager_msgs::GetPOIRequest
  (:init
   (&key
    ((:name __name) "")
    ((:environment __environment) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _environment (string __environment))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _environment
    4 (length _environment)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetPOIResponse
  :super ros::object
  :slots (_success _message _p ))

(defmethod poi_manager_msgs::GetPOIResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:p __p) (instance poi_manager_msgs::LabeledPose :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _p __p)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
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
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; poi_manager_msgs/LabeledPose _p
    (send _p :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; poi_manager_msgs/LabeledPose _p
       (send _p :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; poi_manager_msgs/LabeledPose _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetPOI
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::GetPOI :md5sum-) "59770c338bcbe71fd18764ce06bf4b5f")
(setf (get poi_manager_msgs::GetPOI :datatype-) "poi_manager_msgs/GetPOI")
(setf (get poi_manager_msgs::GetPOI :request) poi_manager_msgs::GetPOIRequest)
(setf (get poi_manager_msgs::GetPOI :response) poi_manager_msgs::GetPOIResponse)

(defmethod poi_manager_msgs::GetPOIRequest
  (:response () (instance poi_manager_msgs::GetPOIResponse :init)))

(setf (get poi_manager_msgs::GetPOIRequest :md5sum-) "59770c338bcbe71fd18764ce06bf4b5f")
(setf (get poi_manager_msgs::GetPOIRequest :datatype-) "poi_manager_msgs/GetPOIRequest")
(setf (get poi_manager_msgs::GetPOIRequest :definition-)
      "string name
string environment
---
bool success
string message
poi_manager_msgs/LabeledPose p

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

(setf (get poi_manager_msgs::GetPOIResponse :md5sum-) "59770c338bcbe71fd18764ce06bf4b5f")
(setf (get poi_manager_msgs::GetPOIResponse :datatype-) "poi_manager_msgs/GetPOIResponse")
(setf (get poi_manager_msgs::GetPOIResponse :definition-)
      "string name
string environment
---
bool success
string message
poi_manager_msgs/LabeledPose p

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



(provide :poi_manager_msgs/GetPOI "59770c338bcbe71fd18764ce06bf4b5f")


