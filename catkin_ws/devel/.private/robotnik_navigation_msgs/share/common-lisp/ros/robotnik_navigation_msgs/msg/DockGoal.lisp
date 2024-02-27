; Auto-generated. Do not edit!


(cl:in-package robotnik_navigation_msgs-msg)


;//! \htmlinclude DockGoal.msg.html

(cl:defclass <DockGoal> (roslisp-msg-protocol:ros-message)
  ((dock_frame
    :reader dock_frame
    :initarg :dock_frame
    :type cl:string
    :initform "")
   (robot_dock_frame
    :reader robot_dock_frame
    :initarg :robot_dock_frame
    :type cl:string
    :initform "")
   (dock_offset
    :reader dock_offset
    :initarg :dock_offset
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (maximum_velocity
    :reader maximum_velocity
    :initarg :maximum_velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass DockGoal (<DockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_navigation_msgs-msg:<DockGoal> is deprecated: use robotnik_navigation_msgs-msg:DockGoal instead.")))

(cl:ensure-generic-function 'dock_frame-val :lambda-list '(m))
(cl:defmethod dock_frame-val ((m <DockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:dock_frame-val is deprecated.  Use robotnik_navigation_msgs-msg:dock_frame instead.")
  (dock_frame m))

(cl:ensure-generic-function 'robot_dock_frame-val :lambda-list '(m))
(cl:defmethod robot_dock_frame-val ((m <DockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:robot_dock_frame-val is deprecated.  Use robotnik_navigation_msgs-msg:robot_dock_frame instead.")
  (robot_dock_frame m))

(cl:ensure-generic-function 'dock_offset-val :lambda-list '(m))
(cl:defmethod dock_offset-val ((m <DockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:dock_offset-val is deprecated.  Use robotnik_navigation_msgs-msg:dock_offset instead.")
  (dock_offset m))

(cl:ensure-generic-function 'maximum_velocity-val :lambda-list '(m))
(cl:defmethod maximum_velocity-val ((m <DockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:maximum_velocity-val is deprecated.  Use robotnik_navigation_msgs-msg:maximum_velocity instead.")
  (maximum_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockGoal>) ostream)
  "Serializes a message object of type '<DockGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dock_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dock_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_dock_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_dock_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dock_offset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maximum_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockGoal>) istream)
  "Deserializes a message object of type '<DockGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dock_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dock_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_dock_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_dock_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dock_offset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maximum_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockGoal>)))
  "Returns string type for a message object of type '<DockGoal>"
  "robotnik_navigation_msgs/DockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockGoal)))
  "Returns string type for a message object of type 'DockGoal"
  "robotnik_navigation_msgs/DockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockGoal>)))
  "Returns md5sum for a message object of type '<DockGoal>"
  "e4dcb1e3a11689b9912d1f91234a9741")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockGoal)))
  "Returns md5sum for a message object of type 'DockGoal"
  "e4dcb1e3a11689b9912d1f91234a9741")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockGoal>)))
  "Returns full string definition for message of type '<DockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%string dock_frame~%string robot_dock_frame~%geometry_msgs/Pose2D dock_offset~%geometry_msgs/Twist maximum_velocity~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockGoal)))
  "Returns full string definition for message of type 'DockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%string dock_frame~%string robot_dock_frame~%geometry_msgs/Pose2D dock_offset~%geometry_msgs/Twist maximum_velocity~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'dock_frame))
     4 (cl:length (cl:slot-value msg 'robot_dock_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dock_offset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maximum_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DockGoal
    (cl:cons ':dock_frame (dock_frame msg))
    (cl:cons ':robot_dock_frame (robot_dock_frame msg))
    (cl:cons ':dock_offset (dock_offset msg))
    (cl:cons ':maximum_velocity (maximum_velocity msg))
))
