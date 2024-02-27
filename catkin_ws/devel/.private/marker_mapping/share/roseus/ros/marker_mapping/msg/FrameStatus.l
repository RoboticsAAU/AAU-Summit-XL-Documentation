;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::FrameStatus)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'FrameStatus (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::FRAMESTATUS")
  (make-package "MARKER_MAPPING::FRAMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude FrameStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass marker_mapping::FrameStatus
  :super ros::object
  :slots (_id _current_distance _max_distance _pose_from_frame ))

(defmethod marker_mapping::FrameStatus
  (:init
   (&key
    ((:id __id) "")
    ((:current_distance __current_distance) 0.0)
    ((:max_distance __max_distance) 0.0)
    ((:pose_from_frame __pose_from_frame) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _current_distance (float __current_distance))
   (setq _max_distance (float __max_distance))
   (setq _pose_from_frame __pose_from_frame)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:current_distance
   (&optional __current_distance)
   (if __current_distance (setq _current_distance __current_distance)) _current_distance)
  (:max_distance
   (&optional __max_distance)
   (if __max_distance (setq _max_distance __max_distance)) _max_distance)
  (:pose_from_frame
   (&rest __pose_from_frame)
   (if (keywordp (car __pose_from_frame))
       (send* _pose_from_frame __pose_from_frame)
     (progn
       (if __pose_from_frame (setq _pose_from_frame (car __pose_from_frame)))
       _pose_from_frame)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; float32 _current_distance
    4
    ;; float32 _max_distance
    4
    ;; geometry_msgs/Pose _pose_from_frame
    (send _pose_from_frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32 _current_distance
       (sys::poke _current_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_distance
       (sys::poke _max_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose _pose_from_frame
       (send _pose_from_frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _current_distance
     (setq _current_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_distance
     (setq _max_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose_from_frame
     (send _pose_from_frame :deserialize buf ptr-) (incf ptr- (send _pose_from_frame :serialization-length))
   ;;
   self)
  )

(setf (get marker_mapping::FrameStatus :md5sum-) "7f74922ad8511c5477ef362a7ef9b79a")
(setf (get marker_mapping::FrameStatus :datatype-) "marker_mapping/FrameStatus")
(setf (get marker_mapping::FrameStatus :definition-)
      "string id
# current distance to the frame
float32 current_distance
# max allowed distance to init the pose
float32 max_distance
# pose if we use the frame to initialize the localization
geometry_msgs/Pose pose_from_frame

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



(provide :marker_mapping/FrameStatus "7f74922ad8511c5477ef362a7ef9b79a")


