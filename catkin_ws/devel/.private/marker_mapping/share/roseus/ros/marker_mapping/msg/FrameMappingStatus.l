;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::FrameMappingStatus)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'FrameMappingStatus (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::FRAMEMAPPINGSTATUS")
  (make-package "MARKER_MAPPING::FRAMEMAPPINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FrameMappingStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marker_mapping::FrameMappingStatus
  :super ros::object
  :slots (_header _ids_recorded _ids_detected ))

(defmethod marker_mapping::FrameMappingStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids_recorded __ids_recorded) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:ids_detected __ids_detected) (let (r) (dotimes (i 0) (push (instance marker_mapping::FrameStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids_recorded __ids_recorded)
   (setq _ids_detected __ids_detected)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids_recorded
   (&optional __ids_recorded)
   (if __ids_recorded (setq _ids_recorded __ids_recorded)) _ids_recorded)
  (:ids_detected
   (&rest __ids_detected)
   (if (keywordp (car __ids_detected))
       (send* _ids_detected __ids_detected)
     (progn
       (if __ids_detected (setq _ids_detected (car __ids_detected)))
       _ids_detected)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _ids_recorded
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ids_recorded)) 4
    ;; marker_mapping/FrameStatus[] _ids_detected
    (apply #'+ (send-all _ids_detected :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _ids_recorded
     (write-long (length _ids_recorded) s)
     (dolist (elem _ids_recorded)
       (write-long (length elem) s) (princ elem s)
       )
     ;; marker_mapping/FrameStatus[] _ids_detected
     (write-long (length _ids_detected) s)
     (dolist (elem _ids_detected)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _ids_recorded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids_recorded (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _ids_recorded i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; marker_mapping/FrameStatus[] _ids_detected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids_detected (let (r) (dotimes (i n) (push (instance marker_mapping::FrameStatus :init) r)) r))
     (dolist (elem- _ids_detected)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marker_mapping::FrameMappingStatus :md5sum-) "dfff8ce0f7290207c6b777f75e70e963")
(setf (get marker_mapping::FrameMappingStatus :datatype-) "marker_mapping/FrameMappingStatus")
(setf (get marker_mapping::FrameMappingStatus :definition-)
      "
Header header
string[] ids_recorded
FrameStatus[] ids_detected

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: marker_mapping/FrameStatus
string id
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



(provide :marker_mapping/FrameMappingStatus "dfff8ce0f7290207c6b777f75e70e963")


