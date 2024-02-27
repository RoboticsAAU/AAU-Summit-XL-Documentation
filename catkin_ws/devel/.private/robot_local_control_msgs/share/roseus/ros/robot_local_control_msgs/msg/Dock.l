;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Dock)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Dock (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::DOCK")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::DOCK"))

(in-package "ROS")
;;//! \htmlinclude Dock.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robot_local_control_msgs::Dock
  :super ros::object
  :slots (_dock_frame _robot_dock_frame _dock_offset _maximum_velocity ))

(defmethod robot_local_control_msgs::Dock
  (:init
   (&key
    ((:dock_frame __dock_frame) "")
    ((:robot_dock_frame __robot_dock_frame) "")
    ((:dock_offset __dock_offset) (instance geometry_msgs::Pose2D :init))
    ((:maximum_velocity __maximum_velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _dock_frame (string __dock_frame))
   (setq _robot_dock_frame (string __robot_dock_frame))
   (setq _dock_offset __dock_offset)
   (setq _maximum_velocity __maximum_velocity)
   self)
  (:dock_frame
   (&optional __dock_frame)
   (if __dock_frame (setq _dock_frame __dock_frame)) _dock_frame)
  (:robot_dock_frame
   (&optional __robot_dock_frame)
   (if __robot_dock_frame (setq _robot_dock_frame __robot_dock_frame)) _robot_dock_frame)
  (:dock_offset
   (&rest __dock_offset)
   (if (keywordp (car __dock_offset))
       (send* _dock_offset __dock_offset)
     (progn
       (if __dock_offset (setq _dock_offset (car __dock_offset)))
       _dock_offset)))
  (:maximum_velocity
   (&rest __maximum_velocity)
   (if (keywordp (car __maximum_velocity))
       (send* _maximum_velocity __maximum_velocity)
     (progn
       (if __maximum_velocity (setq _maximum_velocity (car __maximum_velocity)))
       _maximum_velocity)))
  (:serialization-length
   ()
   (+
    ;; string _dock_frame
    4 (length _dock_frame)
    ;; string _robot_dock_frame
    4 (length _robot_dock_frame)
    ;; geometry_msgs/Pose2D _dock_offset
    (send _dock_offset :serialization-length)
    ;; geometry_msgs/Twist _maximum_velocity
    (send _maximum_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _dock_frame
       (write-long (length _dock_frame) s) (princ _dock_frame s)
     ;; string _robot_dock_frame
       (write-long (length _robot_dock_frame) s) (princ _robot_dock_frame s)
     ;; geometry_msgs/Pose2D _dock_offset
       (send _dock_offset :serialize s)
     ;; geometry_msgs/Twist _maximum_velocity
       (send _maximum_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _dock_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dock_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_dock_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_dock_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _dock_offset
     (send _dock_offset :deserialize buf ptr-) (incf ptr- (send _dock_offset :serialization-length))
   ;; geometry_msgs/Twist _maximum_velocity
     (send _maximum_velocity :deserialize buf ptr-) (incf ptr- (send _maximum_velocity :serialization-length))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Dock :md5sum-) "e4dcb1e3a11689b9912d1f91234a9741")
(setf (get robot_local_control_msgs::Dock :datatype-) "robot_local_control_msgs/Dock")
(setf (get robot_local_control_msgs::Dock :definition-)
      "string dock_frame
string robot_dock_frame
geometry_msgs/Pose2D dock_offset
geometry_msgs/Twist maximum_velocity


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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :robot_local_control_msgs/Dock "e4dcb1e3a11689b9912d1f91234a9741")

