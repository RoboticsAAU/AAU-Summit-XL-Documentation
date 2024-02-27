;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SetPose2DStamped)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SetPose2DStamped (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETPOSE2DSTAMPED")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETPOSE2DSTAMPED"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETPOSE2DSTAMPEDREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETPOSE2DSTAMPEDREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETPOSE2DSTAMPEDRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETPOSE2DSTAMPEDRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SetPose2DStampedRequest
  :super ros::object
  :slots (_pose ))

(defmethod robot_local_control_msgs::SetPose2DStampedRequest
  (:init
   (&key
    ((:pose __pose) (instance robot_local_control_msgs::Pose2DStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
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
    ;; robot_local_control_msgs/Pose2DStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/Pose2DStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/Pose2DStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SetPose2DStampedResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SetPose2DStampedResponse
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

(defclass robot_local_control_msgs::SetPose2DStamped
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SetPose2DStamped :md5sum-) "d54dc4dc91532b16256cd4daf0475e1e")
(setf (get robot_local_control_msgs::SetPose2DStamped :datatype-) "robot_local_control_msgs/SetPose2DStamped")
(setf (get robot_local_control_msgs::SetPose2DStamped :request) robot_local_control_msgs::SetPose2DStampedRequest)
(setf (get robot_local_control_msgs::SetPose2DStamped :response) robot_local_control_msgs::SetPose2DStampedResponse)

(defmethod robot_local_control_msgs::SetPose2DStampedRequest
  (:response () (instance robot_local_control_msgs::SetPose2DStampedResponse :init)))

(setf (get robot_local_control_msgs::SetPose2DStampedRequest :md5sum-) "d54dc4dc91532b16256cd4daf0475e1e")
(setf (get robot_local_control_msgs::SetPose2DStampedRequest :datatype-) "robot_local_control_msgs/SetPose2DStampedRequest")
(setf (get robot_local_control_msgs::SetPose2DStampedRequest :definition-)
      "robot_local_control_msgs/Pose2DStamped pose

================================================================================
MSG: robot_local_control_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
bool success
string message

")

(setf (get robot_local_control_msgs::SetPose2DStampedResponse :md5sum-) "d54dc4dc91532b16256cd4daf0475e1e")
(setf (get robot_local_control_msgs::SetPose2DStampedResponse :datatype-) "robot_local_control_msgs/SetPose2DStampedResponse")
(setf (get robot_local_control_msgs::SetPose2DStampedResponse :definition-)
      "robot_local_control_msgs/Pose2DStamped pose

================================================================================
MSG: robot_local_control_msgs/Pose2DStamped
Header header
geometry_msgs/Pose2D pose

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
bool success
string message

")



(provide :robot_local_control_msgs/SetPose2DStamped "d54dc4dc91532b16256cd4daf0475e1e")


