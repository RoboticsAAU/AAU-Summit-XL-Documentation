;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::LabeledPose)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'LabeledPose (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::LABELEDPOSE")
  (make-package "POI_MANAGER_MSGS::LABELEDPOSE"))

(in-package "ROS")
;;//! \htmlinclude LabeledPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass poi_manager_msgs::LabeledPose
  :super ros::object
  :slots (_name _environment _params _frame_id _pose ))

(defmethod poi_manager_msgs::LabeledPose
  (:init
   (&key
    ((:name __name) "")
    ((:environment __environment) "")
    ((:params __params) "")
    ((:frame_id __frame_id) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _environment (string __environment))
   (setq _params (string __params))
   (setq _frame_id (string __frame_id))
   (setq _pose __pose)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _environment
    4 (length _environment)
    ;; string _params
    4 (length _params)
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;; string _params
       (write-long (length _params) s) (princ _params s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get poi_manager_msgs::LabeledPose :md5sum-) "be4e6a8e496916cefd9c45caa2ab4459")
(setf (get poi_manager_msgs::LabeledPose :datatype-) "poi_manager_msgs/LabeledPose")
(setf (get poi_manager_msgs::LabeledPose :definition-)
      "string name
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



(provide :poi_manager_msgs/LabeledPose "be4e6a8e496916cefd9c45caa2ab4459")


