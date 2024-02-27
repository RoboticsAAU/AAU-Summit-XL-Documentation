; Auto-generated. Do not edit!


(cl:in-package robotnik_navigation_msgs-msg)


;//! \htmlinclude DockFeedback.msg.html

(cl:defclass <DockFeedback> (roslisp-msg-protocol:ros-message)
  ((remaining
    :reader remaining
    :initarg :remaining
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (current_velocity
    :reader current_velocity
    :initarg :current_velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass DockFeedback (<DockFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_navigation_msgs-msg:<DockFeedback> is deprecated: use robotnik_navigation_msgs-msg:DockFeedback instead.")))

(cl:ensure-generic-function 'remaining-val :lambda-list '(m))
(cl:defmethod remaining-val ((m <DockFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:remaining-val is deprecated.  Use robotnik_navigation_msgs-msg:remaining instead.")
  (remaining m))

(cl:ensure-generic-function 'current_velocity-val :lambda-list '(m))
(cl:defmethod current_velocity-val ((m <DockFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:current_velocity-val is deprecated.  Use robotnik_navigation_msgs-msg:current_velocity instead.")
  (current_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockFeedback>) ostream)
  "Serializes a message object of type '<DockFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'remaining) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockFeedback>) istream)
  "Deserializes a message object of type '<DockFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'remaining) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockFeedback>)))
  "Returns string type for a message object of type '<DockFeedback>"
  "robotnik_navigation_msgs/DockFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockFeedback)))
  "Returns string type for a message object of type 'DockFeedback"
  "robotnik_navigation_msgs/DockFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockFeedback>)))
  "Returns md5sum for a message object of type '<DockFeedback>"
  "41cf076ddb6051f5e19207ef6bdcc8c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockFeedback)))
  "Returns md5sum for a message object of type 'DockFeedback"
  "41cf076ddb6051f5e19207ef6bdcc8c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockFeedback>)))
  "Returns full string definition for message of type '<DockFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%geometry_msgs/Pose2D remaining~%geometry_msgs/Twist current_velocity~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockFeedback)))
  "Returns full string definition for message of type 'DockFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%geometry_msgs/Pose2D remaining~%geometry_msgs/Twist current_velocity~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'remaining))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'DockFeedback
    (cl:cons ':remaining (remaining msg))
    (cl:cons ':current_velocity (current_velocity msg))
))
