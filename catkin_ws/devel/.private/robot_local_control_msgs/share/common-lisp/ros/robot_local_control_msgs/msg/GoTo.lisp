; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude GoTo.msg.html

(cl:defclass <GoTo> (roslisp-msg-protocol:ros-message)
  ((goals
    :reader goals
    :initarg :goals
    :type (cl:vector robot_local_control_msgs-msg:Pose2DStamped)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:Pose2DStamped :initial-element (cl:make-instance 'robot_local_control_msgs-msg:Pose2DStamped)))
   (max_velocities
    :reader max_velocities
    :initarg :max_velocities
    :type (cl:vector robot_local_control_msgs-msg:Twist2D)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:Twist2D :initial-element (cl:make-instance 'robot_local_control_msgs-msg:Twist2D))))
)

(cl:defclass GoTo (<GoTo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoTo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoTo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<GoTo> is deprecated: use robot_local_control_msgs-msg:GoTo instead.")))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <GoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:goals-val is deprecated.  Use robot_local_control_msgs-msg:goals instead.")
  (goals m))

(cl:ensure-generic-function 'max_velocities-val :lambda-list '(m))
(cl:defmethod max_velocities-val ((m <GoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:max_velocities-val is deprecated.  Use robot_local_control_msgs-msg:max_velocities instead.")
  (max_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoTo>) ostream)
  "Serializes a message object of type '<GoTo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_velocities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'max_velocities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoTo>) istream)
  "Deserializes a message object of type '<GoTo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:Pose2DStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'max_velocities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_velocities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:Twist2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoTo>)))
  "Returns string type for a message object of type '<GoTo>"
  "robot_local_control_msgs/GoTo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoTo)))
  "Returns string type for a message object of type 'GoTo"
  "robot_local_control_msgs/GoTo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoTo>)))
  "Returns md5sum for a message object of type '<GoTo>"
  "cc46f8689ca09285758e2ba1b6ef965a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoTo)))
  "Returns md5sum for a message object of type 'GoTo"
  "cc46f8689ca09285758e2ba1b6ef965a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoTo>)))
  "Returns full string definition for message of type '<GoTo>"
  (cl:format cl:nil "# goals is a set of 2D poses that will be reached by the robot~%Pose2DStamped[] goals~%# twist can be either empty, in that case no maximum velocity is~%# specified, or a set of the same size as goals, in which each goal~%# will be reached with its maximum velocity~%Twist2D[] max_velocities~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robot_local_control_msgs/Twist2D~%float64 linear_x~%float64 linear_y~%float64 angular_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoTo)))
  "Returns full string definition for message of type 'GoTo"
  (cl:format cl:nil "# goals is a set of 2D poses that will be reached by the robot~%Pose2DStamped[] goals~%# twist can be either empty, in that case no maximum velocity is~%# specified, or a set of the same size as goals, in which each goal~%# will be reached with its maximum velocity~%Twist2D[] max_velocities~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robot_local_control_msgs/Twist2D~%float64 linear_x~%float64 linear_y~%float64 angular_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoTo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_velocities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoTo>))
  "Converts a ROS message object to a list"
  (cl:list 'GoTo
    (cl:cons ':goals (goals msg))
    (cl:cons ':max_velocities (max_velocities msg))
))
