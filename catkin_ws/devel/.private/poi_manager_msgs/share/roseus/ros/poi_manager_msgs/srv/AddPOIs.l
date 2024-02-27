;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::AddPOIs)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'AddPOIs (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::ADDPOIS")
  (make-package "POI_MANAGER_MSGS::ADDPOIS"))
(unless (find-package "POI_MANAGER_MSGS::ADDPOISREQUEST")
  (make-package "POI_MANAGER_MSGS::ADDPOISREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::ADDPOISRESPONSE")
  (make-package "POI_MANAGER_MSGS::ADDPOISRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::AddPOIsRequest
  :super ros::object
  :slots (_pose_list ))

(defmethod poi_manager_msgs::AddPOIsRequest
  (:init
   (&key
    ((:pose_list __pose_list) (let (r) (dotimes (i 0) (push (instance poi_manager_msgs::LabeledPose :init) r)) r))
    )
   (send-super :init)
   (setq _pose_list __pose_list)
   self)
  (:pose_list
   (&rest __pose_list)
   (if (keywordp (car __pose_list))
       (send* _pose_list __pose_list)
     (progn
       (if __pose_list (setq _pose_list (car __pose_list)))
       _pose_list)))
  (:serialization-length
   ()
   (+
    ;; poi_manager_msgs/LabeledPose[] _pose_list
    (apply #'+ (send-all _pose_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; poi_manager_msgs/LabeledPose[] _pose_list
     (write-long (length _pose_list) s)
     (dolist (elem _pose_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; poi_manager_msgs/LabeledPose[] _pose_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_list (let (r) (dotimes (i n) (push (instance poi_manager_msgs::LabeledPose :init) r)) r))
     (dolist (elem- _pose_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass poi_manager_msgs::AddPOIsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod poi_manager_msgs::AddPOIsResponse
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

(defclass poi_manager_msgs::AddPOIs
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::AddPOIs :md5sum-) "2fdcbbb89e33323af0b594e7738c11a5")
(setf (get poi_manager_msgs::AddPOIs :datatype-) "poi_manager_msgs/AddPOIs")
(setf (get poi_manager_msgs::AddPOIs :request) poi_manager_msgs::AddPOIsRequest)
(setf (get poi_manager_msgs::AddPOIs :response) poi_manager_msgs::AddPOIsResponse)

(defmethod poi_manager_msgs::AddPOIsRequest
  (:response () (instance poi_manager_msgs::AddPOIsResponse :init)))

(setf (get poi_manager_msgs::AddPOIsRequest :md5sum-) "2fdcbbb89e33323af0b594e7738c11a5")
(setf (get poi_manager_msgs::AddPOIsRequest :datatype-) "poi_manager_msgs/AddPOIsRequest")
(setf (get poi_manager_msgs::AddPOIsRequest :definition-)
      "poi_manager_msgs/LabeledPose[] pose_list

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

(setf (get poi_manager_msgs::AddPOIsResponse :md5sum-) "2fdcbbb89e33323af0b594e7738c11a5")
(setf (get poi_manager_msgs::AddPOIsResponse :datatype-) "poi_manager_msgs/AddPOIsResponse")
(setf (get poi_manager_msgs::AddPOIsResponse :definition-)
      "poi_manager_msgs/LabeledPose[] pose_list

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



(provide :poi_manager_msgs/AddPOIs "2fdcbbb89e33323af0b594e7738c11a5")


