;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Move)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Move (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MOVE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MOVE"))

(in-package "ROS")
;;//! \htmlinclude Move.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robot_local_control_msgs::Move
  :super ros::object
  :slots (_goal _maximum_velocity ))

(defmethod robot_local_control_msgs::Move
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Pose2D :init))
    ((:maximum_velocity __maximum_velocity) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _goal __goal)
   (setq _maximum_velocity __maximum_velocity)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
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
    ;; geometry_msgs/Pose2D _goal
    (send _goal :serialization-length)
    ;; geometry_msgs/Twist _maximum_velocity
    (send _maximum_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _goal
       (send _goal :serialize s)
     ;; geometry_msgs/Twist _maximum_velocity
       (send _maximum_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; geometry_msgs/Twist _maximum_velocity
     (send _maximum_velocity :deserialize buf ptr-) (incf ptr- (send _maximum_velocity :serialization-length))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Move :md5sum-) "eb9920e86c2f0688dd6be11e935c373b")
(setf (get robot_local_control_msgs::Move :datatype-) "robot_local_control_msgs/Move")
(setf (get robot_local_control_msgs::Move :definition-)
      "geometry_msgs/Pose2D goal
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



(provide :robot_local_control_msgs/Move "eb9920e86c2f0688dd6be11e935c373b")


