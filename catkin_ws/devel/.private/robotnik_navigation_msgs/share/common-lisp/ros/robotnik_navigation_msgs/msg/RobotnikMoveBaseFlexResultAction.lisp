; Auto-generated. Do not edit!


(cl:in-package robotnik_navigation_msgs-msg)


;//! \htmlinclude RobotnikMoveBaseFlexResultAction.msg.html

(cl:defclass <RobotnikMoveBaseFlexResultAction> (roslisp-msg-protocol:ros-message)
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
   (current_pose
    :reader current_pose
    :initarg :current_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (last_cmd_vel
    :reader last_cmd_vel
    :initarg :last_cmd_vel
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped)))
)

(cl:defclass RobotnikMoveBaseFlexResultAction (<RobotnikMoveBaseFlexResultAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotnikMoveBaseFlexResultAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotnikMoveBaseFlexResultAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_navigation_msgs-msg:<RobotnikMoveBaseFlexResultAction> is deprecated: use robotnik_navigation_msgs-msg:RobotnikMoveBaseFlexResultAction instead.")))

(cl:ensure-generic-function 'outcome-val :lambda-list '(m))
(cl:defmethod outcome-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:outcome-val is deprecated.  Use robotnik_navigation_msgs-msg:outcome instead.")
  (outcome m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:message-val is deprecated.  Use robotnik_navigation_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'dist_to_goal-val :lambda-list '(m))
(cl:defmethod dist_to_goal-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:dist_to_goal-val is deprecated.  Use robotnik_navigation_msgs-msg:dist_to_goal instead.")
  (dist_to_goal m))

(cl:ensure-generic-function 'angle_to_goal-val :lambda-list '(m))
(cl:defmethod angle_to_goal-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:angle_to_goal-val is deprecated.  Use robotnik_navigation_msgs-msg:angle_to_goal instead.")
  (angle_to_goal m))

(cl:ensure-generic-function 'current_pose-val :lambda-list '(m))
(cl:defmethod current_pose-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:current_pose-val is deprecated.  Use robotnik_navigation_msgs-msg:current_pose instead.")
  (current_pose m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:success-val is deprecated.  Use robotnik_navigation_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'last_cmd_vel-val :lambda-list '(m))
(cl:defmethod last_cmd_vel-val ((m <RobotnikMoveBaseFlexResultAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_navigation_msgs-msg:last_cmd_vel-val is deprecated.  Use robotnik_navigation_msgs-msg:last_cmd_vel instead.")
  (last_cmd_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotnikMoveBaseFlexResultAction>) ostream)
  "Serializes a message object of type '<RobotnikMoveBaseFlexResultAction>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_cmd_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotnikMoveBaseFlexResultAction>) istream)
  "Deserializes a message object of type '<RobotnikMoveBaseFlexResultAction>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_pose) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_cmd_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotnikMoveBaseFlexResultAction>)))
  "Returns string type for a message object of type '<RobotnikMoveBaseFlexResultAction>"
  "robotnik_navigation_msgs/RobotnikMoveBaseFlexResultAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotnikMoveBaseFlexResultAction)))
  "Returns string type for a message object of type 'RobotnikMoveBaseFlexResultAction"
  "robotnik_navigation_msgs/RobotnikMoveBaseFlexResultAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotnikMoveBaseFlexResultAction>)))
  "Returns md5sum for a message object of type '<RobotnikMoveBaseFlexResultAction>"
  "6e554920bf6d6eb237c78299c84b8368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotnikMoveBaseFlexResultAction)))
  "Returns md5sum for a message object of type 'RobotnikMoveBaseFlexResultAction"
  "6e554920bf6d6eb237c78299c84b8368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotnikMoveBaseFlexResultAction>)))
  "Returns full string definition for message of type '<RobotnikMoveBaseFlexResultAction>"
  (cl:format cl:nil "~%# Outcome of most recent controller cycle. Same values as in MoveBase or ExePath result.~%uint32 outcome~%string message~%~%float32 dist_to_goal~%float32 angle_to_goal~%geometry_msgs/PoseStamped current_pose~%bool success~%geometry_msgs/TwistStamped last_cmd_vel  # last command calculated by the controller~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotnikMoveBaseFlexResultAction)))
  "Returns full string definition for message of type 'RobotnikMoveBaseFlexResultAction"
  (cl:format cl:nil "~%# Outcome of most recent controller cycle. Same values as in MoveBase or ExePath result.~%uint32 outcome~%string message~%~%float32 dist_to_goal~%float32 angle_to_goal~%geometry_msgs/PoseStamped current_pose~%bool success~%geometry_msgs/TwistStamped last_cmd_vel  # last command calculated by the controller~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotnikMoveBaseFlexResultAction>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_pose))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_cmd_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotnikMoveBaseFlexResultAction>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotnikMoveBaseFlexResultAction
    (cl:cons ':outcome (outcome msg))
    (cl:cons ':message (message msg))
    (cl:cons ':dist_to_goal (dist_to_goal msg))
    (cl:cons ':angle_to_goal (angle_to_goal msg))
    (cl:cons ':current_pose (current_pose msg))
    (cl:cons ':success (success msg))
    (cl:cons ':last_cmd_vel (last_cmd_vel msg))
))
