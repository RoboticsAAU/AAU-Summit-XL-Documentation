; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude LocalizationStatus.msg.html

(cl:defclass <LocalizationStatus> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type robot_local_control_msgs-msg:Pose2DStamped
    :initform (cl:make-instance 'robot_local_control_msgs-msg:Pose2DStamped))
   (reliable
    :reader reliable
    :initarg :reliable
    :type cl:boolean
    :initform cl:nil)
   (environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizationStatus (<LocalizationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<LocalizationStatus> is deprecated: use robot_local_control_msgs-msg:LocalizationStatus instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LocalizationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:pose-val is deprecated.  Use robot_local_control_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'reliable-val :lambda-list '(m))
(cl:defmethod reliable-val ((m <LocalizationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:reliable-val is deprecated.  Use robot_local_control_msgs-msg:reliable instead.")
  (reliable m))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <LocalizationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:environment-val is deprecated.  Use robot_local_control_msgs-msg:environment instead.")
  (environment m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LocalizationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:type-val is deprecated.  Use robot_local_control_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <LocalizationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:state-val is deprecated.  Use robot_local_control_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocalizationStatus>)))
    "Constants for message type '<LocalizationStatus>"
  '((:LOCALIZATION_TYPE_NONE . none)
    (:LOCALIZATION_TYPE_1 . 1)
    (:LOCALIZATION_TYPE_2 . 2)
    (:LOCALIZATION_TYPE_3 . 3)
    (:LOCALIZATION_TYPE_4 . 4)
    (:LOCALIZATION_STATE_INIT . init)
    (:LOCALIZATION_STATE_READY . ready)
    (:LOCALIZATION_STATE_EMERGENCY . emergency)
    (:LOCALIZATION_STATE_FAILURE . failure)
    (:LOCALIZATION_STATE_UNKNOWN . unknown))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocalizationStatus)))
    "Constants for message type 'LocalizationStatus"
  '((:LOCALIZATION_TYPE_NONE . none)
    (:LOCALIZATION_TYPE_1 . 1)
    (:LOCALIZATION_TYPE_2 . 2)
    (:LOCALIZATION_TYPE_3 . 3)
    (:LOCALIZATION_TYPE_4 . 4)
    (:LOCALIZATION_STATE_INIT . init)
    (:LOCALIZATION_STATE_READY . ready)
    (:LOCALIZATION_STATE_EMERGENCY . emergency)
    (:LOCALIZATION_STATE_FAILURE . failure)
    (:LOCALIZATION_STATE_UNKNOWN . unknown))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationStatus>) ostream)
  "Serializes a message object of type '<LocalizationStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reliable) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationStatus>) istream)
  "Deserializes a message object of type '<LocalizationStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:slot-value msg 'reliable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'environment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationStatus>)))
  "Returns string type for a message object of type '<LocalizationStatus>"
  "robot_local_control_msgs/LocalizationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationStatus)))
  "Returns string type for a message object of type 'LocalizationStatus"
  "robot_local_control_msgs/LocalizationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationStatus>)))
  "Returns md5sum for a message object of type '<LocalizationStatus>"
  "070ab2c758290f3163c0493c24c6a324")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationStatus)))
  "Returns md5sum for a message object of type 'LocalizationStatus"
  "070ab2c758290f3163c0493c24c6a324")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationStatus>)))
  "Returns full string definition for message of type '<LocalizationStatus>"
  (cl:format cl:nil "# Type of localization systems used~%string LOCALIZATION_TYPE_NONE=none~%# amcl~%string LOCALIZATION_TYPE_1=1~%# gps~%string LOCALIZATION_TYPE_2=2~%# cartogphr~%string LOCALIZATION_TYPE_3=3~%# gmapping~%string LOCALIZATION_TYPE_4=4~%~%# state of the navigation node running~%string LOCALIZATION_STATE_INIT=init~%string LOCALIZATION_STATE_READY=ready~%string LOCALIZATION_STATE_EMERGENCY=emergency~%string LOCALIZATION_STATE_FAILURE=failure~%string LOCALIZATION_STATE_UNKNOWN=unknown~%~%# Pose of the robot based on the current localization algorithm~%Pose2DStamped pose~%~%# reliability~%bool reliable~%~%# Localization environment ~%string environment~%~%# Type of localization technology~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationStatus)))
  "Returns full string definition for message of type 'LocalizationStatus"
  (cl:format cl:nil "# Type of localization systems used~%string LOCALIZATION_TYPE_NONE=none~%# amcl~%string LOCALIZATION_TYPE_1=1~%# gps~%string LOCALIZATION_TYPE_2=2~%# cartogphr~%string LOCALIZATION_TYPE_3=3~%# gmapping~%string LOCALIZATION_TYPE_4=4~%~%# state of the navigation node running~%string LOCALIZATION_STATE_INIT=init~%string LOCALIZATION_STATE_READY=ready~%string LOCALIZATION_STATE_EMERGENCY=emergency~%string LOCALIZATION_STATE_FAILURE=failure~%string LOCALIZATION_STATE_UNKNOWN=unknown~%~%# Pose of the robot based on the current localization algorithm~%Pose2DStamped pose~%~%# reliability~%bool reliable~%~%# Localization environment ~%string environment~%~%# Type of localization technology~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%================================================================================~%MSG: robot_local_control_msgs/Pose2DStamped~%Header header~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
     4 (cl:length (cl:slot-value msg 'environment))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationStatus
    (cl:cons ':pose (pose msg))
    (cl:cons ':reliable (reliable msg))
    (cl:cons ':environment (environment msg))
    (cl:cons ':type (type msg))
    (cl:cons ':state (state msg))
))
