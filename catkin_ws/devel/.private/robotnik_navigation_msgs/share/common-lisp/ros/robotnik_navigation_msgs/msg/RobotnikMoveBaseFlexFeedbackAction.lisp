; Auto-generated. Do not edit!


(cl:in-package robotnik_navigation_msgs-msg)


;//! \htmlinclude RobotnikMoveBaseFlexFeedbackAction.msg.html

(cl:defclass <RobotnikMoveBaseFlexFeedbackAction> (roslisp-msg-protocol:ros-message)
  ((outcome
    :reader outcome
    :initarg :outcome
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (dist_to_goal
    :reader dist_to_goal
    :initarg :dist_to_goal
    :type cl:float
    :initform 0.0)
   (angle_to_goal
    :reader angle_to_goal
    :initarg :angle_to_goal
    :type cl:float
    :initform 0.0)
   (final_pose
    :reader final_pose
    :initarg :final_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (current_pose_executing
    :reader current_pose_executing
    :initarg :current_pose_executing
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (dist_current_target
    :reader dist_current_target
    :initarg :dist_current_target
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (current_goal
    :reader current_goal
    :initarg :current_goal
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotnikMoveBaseFlexFeedbackAction (<RobotnikMoveBaseFlexFeedbackAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotnikMoveBaseFlexFeedbackAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotnikMoveBaseFlexFeedbackAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_navigation_msgs-msg:<RobotnikMoveBaseFlexFeedbackAction> is deprecated: use robotnik_navigation_msgs-msg:RobotnikMoveBaseFlexFeedbackAction instead.")))

(cl:ensure-generic-function 'outcome-val :lambda-list '(m))
(cl:defmethod outcome-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:outcome-val is deprecated.  Use robotnik_navigation_msgs-msg:outcome instead.")
  (outcome m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:message-val is deprecated.  Use robotnik_navigation_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'dist_to_goal-val :lambda-list '(m))
(cl:defmethod dist_to_goal-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:dist_to_goal-val is deprecated.  Use robotnik_navigation_msgs-msg:dist_to_goal instead.")
  (dist_to_goal m))

(cl:ensure-generic-function 'angle_to_goal-val :lambda-list '(m))
(cl:defmethod angle_to_goal-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:angle_to_goal-val is deprecated.  Use robotnik_navigation_msgs-msg:angle_to_goal instead.")
  (angle_to_goal m))

(cl:ensure-generic-function 'final_pose-val :lambda-list '(m))
(cl:defmethod final_pose-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:final_pose-val is deprecated.  Use robotnik_navigation_msgs-msg:final_pose instead.")
  (final_pose m))

(cl:ensure-generic-function 'current_pose_executing-val :lambda-list '(m))
(cl:defmethod current_pose_executing-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:current_pose_executing-val is deprecated.  Use robotnik_navigation_msgs-msg:current_pose_executing instead.")
  (current_pose_executing m))

(cl:ensure-generic-function 'dist_current_target-val :lambda-list '(m))
(cl:defmethod dist_current_target-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:dist_current_target-val is deprecated.  Use robotnik_navigation_msgs-msg:dist_current_target instead.")
  (dist_current_target m))

(cl:ensure-generic-function 'current_goal-val :lambda-list '(m))
(cl:defmethod current_goal-val ((m <RobotnikMoveBaseFlexFeedbackAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:current_goal-val is deprecated.  Use robotnik_navigation_msgs-msg:current_goal instead.")
  (current_goal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotnikMoveBaseFlexFeedbackAction>)))
    "Constants for message type '<RobotnikMoveBaseFlexFeedbackAction>"
  '((:SUCCESS . 0)
    (:FAILURE . 10)
    (:CANCELED . 11)
    (:COLLISION . 12)
    (:OSCILLATION . 13)
    (:START_BLOCKED . 14)
    (:GOAL_BLOCKED . 15)
    (:TF_ERROR . 16)
    (:INTERNAL_ERROR . 17)
    (:PLAN_FAILURE . 50)
    (:CTRL_FAILURE . 100))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotnikMoveBaseFlexFeedbackAction)))
    "Constants for message type 'RobotnikMoveBaseFlexFeedbackAction"
  '((:SUCCESS . 0)
    (:FAILURE . 10)
    (:CANCELED . 11)
    (:COLLISION . 12)
    (:OSCILLATION . 13)
    (:START_BLOCKED . 14)
    (:GOAL_BLOCKED . 15)
    (:TF_ERROR . 16)
    (:INTERNAL_ERROR . 17)
    (:PLAN_FAILURE . 50)
    (:CTRL_FAILURE . 100))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotnikMoveBaseFlexFeedbackAction>) ostream)
  "Serializes a message object of type '<RobotnikMoveBaseFlexFeedbackAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outcome)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'outcome)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'outcome)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'outcome)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist_to_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_to_goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_pose_executing) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dist_current_target) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_goal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_goal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_goal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_goal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotnikMoveBaseFlexFeedbackAction>) istream)
  "Deserializes a message object of type '<RobotnikMoveBaseFlexFeedbackAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outcome)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'outcome)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'outcome)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'outcome)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_goal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_to_goal) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_pose_executing) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dist_current_target) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_goal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_goal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_goal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_goal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotnikMoveBaseFlexFeedbackAction>)))
  "Returns string type for a message object of type '<RobotnikMoveBaseFlexFeedbackAction>"
  "robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotnikMoveBaseFlexFeedbackAction)))
  "Returns string type for a message object of type 'RobotnikMoveBaseFlexFeedbackAction"
  "robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotnikMoveBaseFlexFeedbackAction>)))
  "Returns md5sum for a message object of type '<RobotnikMoveBaseFlexFeedbackAction>"
  "4fbebf6f8927950a648710178b5b3a02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotnikMoveBaseFlexFeedbackAction)))
  "Returns md5sum for a message object of type 'RobotnikMoveBaseFlexFeedbackAction"
  "4fbebf6f8927950a648710178b5b3a02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotnikMoveBaseFlexFeedbackAction>)))
  "Returns full string definition for message of type '<RobotnikMoveBaseFlexFeedbackAction>"
  (cl:format cl:nil "~%# Predefined success codes:~%uint8 SUCCESS        = 0~%~%# Predefined general error codes:~%uint8 FAILURE        = 10~%uint8 CANCELED       = 11~%uint8 COLLISION      = 12~%uint8 OSCILLATION    = 13~%uint8 START_BLOCKED  = 14~%uint8 GOAL_BLOCKED   = 15~%uint8 TF_ERROR       = 16~%uint8 INTERNAL_ERROR = 17~%# 21..49 are reserved for future general error codes~%~%# Planning/controlling failures:~%uint8 PLAN_FAILURE   = 50~%# 51..99 are reserved as global planner specific errors~%~%uint8 CTRL_FAILURE   = 100~%# 101..149 are reserved as local planner specific errors~%~%uint32 outcome~%string message~%~%# Configuration upon action completion~%float32 dist_to_goal~%float32 angle_to_goal~%geometry_msgs/PoseStamped final_pose~%geometry_msgs/PoseStamped current_pose_executing~%geometry_msgs/Pose2D dist_current_target~%~%# Index of the current goal executing~%uint32 current_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotnikMoveBaseFlexFeedbackAction)))
  "Returns full string definition for message of type 'RobotnikMoveBaseFlexFeedbackAction"
  (cl:format cl:nil "~%# Predefined success codes:~%uint8 SUCCESS        = 0~%~%# Predefined general error codes:~%uint8 FAILURE        = 10~%uint8 CANCELED       = 11~%uint8 COLLISION      = 12~%uint8 OSCILLATION    = 13~%uint8 START_BLOCKED  = 14~%uint8 GOAL_BLOCKED   = 15~%uint8 TF_ERROR       = 16~%uint8 INTERNAL_ERROR = 17~%# 21..49 are reserved for future general error codes~%~%# Planning/controlling failures:~%uint8 PLAN_FAILURE   = 50~%# 51..99 are reserved as global planner specific errors~%~%uint8 CTRL_FAILURE   = 100~%# 101..149 are reserved as local planner specific errors~%~%uint32 outcome~%string message~%~%# Configuration upon action completion~%float32 dist_to_goal~%float32 angle_to_goal~%geometry_msgs/PoseStamped final_pose~%geometry_msgs/PoseStamped current_pose_executing~%geometry_msgs/Pose2D dist_current_target~%~%# Index of the current goal executing~%uint32 current_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotnikMoveBaseFlexFeedbackAction>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_pose_executing))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist_current_target))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotnikMoveBaseFlexFeedbackAction>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotnikMoveBaseFlexFeedbackAction
    (cl:cons ':outcome (outcome msg))
    (cl:cons ':message (message msg))
    (cl:cons ':dist_to_goal (dist_to_goal msg))
    (cl:cons ':angle_to_goal (angle_to_goal msg))
    (cl:cons ':final_pose (final_pose msg))
    (cl:cons ':current_pose_executing (current_pose_executing msg))
    (cl:cons ':dist_current_target (dist_current_target msg))
    (cl:cons ':current_goal (current_goal msg))
))
