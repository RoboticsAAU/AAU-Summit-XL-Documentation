; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SetPose2DStamped-request.msg.html

(cl:defclass <SetPose2DStamped-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type robot_local_control_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'robot_local_control_msgs-msg:Pose2DStamped)))
)

(cl:defclass SetPose2DStamped-request (<SetPose2DStamped-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose2DStamped-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose2DStamped-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetPose2DStamped-request> is deprecated: use robot_local_control_msgs-srv:SetPose2DStamped-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetPose2DStamped-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:pose-val is deprecated.  Use robot_local_control_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose2DStamped-request>) ostream)
  "Serializes a message object of type '<SetPose2DStamped-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose2DStamped-request>) istream)
  "Deserializes a message object of type '<SetPose2DStamped-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose2DStamped-request>)))
  "Returns string type for a service object of type '<SetPose2DStamped-request>"
  "robot_local_control_msgs/SetPose2DStampedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2DStamped-request)))
  "Returns string type for a service object of type 'SetPose2DStamped-request"
  "robot_local_control_msgs/SetPose2DStampedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose2DStamped-request>)))
  "Returns md5sum for a message object of type '<SetPose2DStamped-request>"
  "d54dc4dc91532b16256cd4daf0475e1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose2DStamped-request)))
  "Returns md5sum for a message object of type 'SetPose2DStamped-request"
  "d54dc4dc91532b16256cd4daf0475e1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose2DStamped-request>)))
  "Returns full string definition for message of type '<SetPose2DStamped-request>"
  (cl:format cl:nil "robot_local_control_msgs/Pose2DStamped pose~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose2DStamped-request)))
  "Returns full string definition for message of type 'SetPose2DStamped-request"
  (cl:format cl:nil "robot_local_control_msgs/Pose2DStamped pose~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose2DStamped-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose2DStamped-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose2DStamped-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetPose2DStamped-response.msg.html

(cl:defclass <SetPose2DStamped-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetPose2DStamped-response (<SetPose2DStamped-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose2DStamped-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose2DStamped-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetPose2DStamped-response> is deprecated: use robot_local_control_msgs-srv:SetPose2DStamped-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPose2DStamped-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPose2DStamped-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose2DStamped-response>) ostream)
  "Serializes a message object of type '<SetPose2DStamped-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose2DStamped-response>) istream)
  "Deserializes a message object of type '<SetPose2DStamped-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose2DStamped-response>)))
  "Returns string type for a service object of type '<SetPose2DStamped-response>"
  "robot_local_control_msgs/SetPose2DStampedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2DStamped-response)))
  "Returns string type for a service object of type 'SetPose2DStamped-response"
  "robot_local_control_msgs/SetPose2DStampedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose2DStamped-response>)))
  "Returns md5sum for a message object of type '<SetPose2DStamped-response>"
  "d54dc4dc91532b16256cd4daf0475e1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose2DStamped-response)))
  "Returns md5sum for a message object of type 'SetPose2DStamped-response"
  "d54dc4dc91532b16256cd4daf0475e1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose2DStamped-response>)))
  "Returns full string definition for message of type '<SetPose2DStamped-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose2DStamped-response)))
  "Returns full string definition for message of type 'SetPose2DStamped-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose2DStamped-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose2DStamped-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose2DStamped-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPose2DStamped)))
  'SetPose2DStamped-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPose2DStamped)))
  'SetPose2DStamped-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2DStamped)))
  "Returns string type for a service object of type '<SetPose2DStamped>"
  "robot_local_control_msgs/SetPose2DStamped")