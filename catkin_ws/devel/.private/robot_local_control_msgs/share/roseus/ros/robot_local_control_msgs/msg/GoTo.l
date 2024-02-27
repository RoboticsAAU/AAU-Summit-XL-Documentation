;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GoTo)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GoTo (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTO")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTO"))

(in-package "ROS")
;;//! \htmlinclude GoTo.msg.html


(defclass robot_local_control_msgs::GoTo
  :super ros::object
  :slots (_goals _max_velocities ))

(defmethod robot_local_control_msgs::GoTo
  (:init
   (&key
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::Pose2DStamped :init) r)) r))
    ((:max_velocities __max_velocities) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::Twist2D :init) r)) r))
    )
   (send-super :init)
   (setq _goals __goals)
   (setq _max_velocities __max_velocities)
   self)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:max_velocities
   (&rest __max_velocities)
   (if (keywordp (car __max_velocities))
       (send* _max_velocities __max_velocities)
     (progn
       (if __max_velocities (setq _max_velocities (car __max_velocities)))
       _max_velocities)))
  (:serialization-length
   ()
   (+
    ;; robot_local_control_msgs/Pose2DStamped[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ;; robot_local_control_msgs/Twist2D[] _max_velocities
    (apply #'+ (send-all _max_velocities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/Pose2DStamped[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;; robot_local_control_msgs/Twist2D[] _max_velocities
     (write-long (length _max_velocities) s)
     (dolist (elem _max_velocities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/Pose2DStamped[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::Pose2DStamped :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robot_local_control_msgs/Twist2D[] _max_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_velocities (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::Twist2D :init) r)) r))
     (dolist (elem- _max_velocities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::GoTo :md5sum-) "cc46f8689ca09285758e2ba1b6ef965a")
(setf (get robot_local_control_msgs::GoTo :datatype-) "robot_local_control_msgs/GoTo")
(setf (get robot_local_control_msgs::GoTo :definition-)
      "# goals is a set of 2D poses that will be reached by the robot
Pose2DStamped[] goals
# twist can be either empty, in that case no maximum velocity is
# specified, or a set of the same size as goals, in which each goal
# will be reached with its maximum velocity
Twist2D[] max_velocities

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

================================================================================
MSG: robot_local_control_msgs/Twist2D
float64 linear_x
float64 linear_y
float64 angular_z

")



(provide :robot_local_control_msgs/GoTo "cc46f8689ca09285758e2ba1b6ef965a")


