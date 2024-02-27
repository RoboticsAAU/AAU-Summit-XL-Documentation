;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::GetPoseTrigger)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'GetPoseTrigger (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::GETPOSETRIGGER")
  (make-package "POI_MANAGER_MSGS::GETPOSETRIGGER"))
(unless (find-package "POI_MANAGER_MSGS::GETPOSETRIGGERREQUEST")
  (make-package "POI_MANAGER_MSGS::GETPOSETRIGGERREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::GETPOSETRIGGERRESPONSE")
  (make-package "POI_MANAGER_MSGS::GETPOSETRIGGERRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass poi_manager_msgs::GetPoseTriggerRequest
  :super ros::object
  :slots ())

(defmethod poi_manager_msgs::GetPoseTriggerRequest
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

(defclass poi_manager_msgs::GetPoseTriggerResponse
  :super ros::object
  :slots (_pose _message _success ))

(defmethod poi_manager_msgs::GetPoseTriggerResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass poi_manager_msgs::GetPoseTrigger
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::GetPoseTrigger :md5sum-) "8f0d03246ce395c1277b17dc21fa64a5")
(setf (get poi_manager_msgs::GetPoseTrigger :datatype-) "poi_manager_msgs/GetPoseTrigger")
(setf (get poi_manager_msgs::GetPoseTrigger :request) poi_manager_msgs::GetPoseTriggerRequest)
(setf (get poi_manager_msgs::GetPoseTrigger :response) poi_manager_msgs::GetPoseTriggerResponse)

(defmethod poi_manager_msgs::GetPoseTriggerRequest
  (:response () (instance poi_manager_msgs::GetPoseTriggerResponse :init)))

(setf (get poi_manager_msgs::GetPoseTriggerRequest :md5sum-) "8f0d03246ce395c1277b17dc21fa64a5")
(setf (get poi_manager_msgs::GetPoseTriggerRequest :datatype-) "poi_manager_msgs/GetPoseTriggerRequest")
(setf (get poi_manager_msgs::GetPoseTriggerRequest :definition-)
      "
---
geometry_msgs/Pose pose
string message
bool success


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

(setf (get poi_manager_msgs::GetPoseTriggerResponse :md5sum-) "8f0d03246ce395c1277b17dc21fa64a5")
(setf (get poi_manager_msgs::GetPoseTriggerResponse :datatype-) "poi_manager_msgs/GetPoseTriggerResponse")
(setf (get poi_manager_msgs::GetPoseTriggerResponse :definition-)
      "
---
geometry_msgs/Pose pose
string message
bool success


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



(provide :poi_manager_msgs/GetPoseTrigger "8f0d03246ce395c1277b17dc21fa64a5")


