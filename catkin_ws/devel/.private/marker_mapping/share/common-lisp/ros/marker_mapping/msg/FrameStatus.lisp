; Auto-generated. Do not edit!


(cl:in-package marker_mapping-msg)


;//! \htmlinclude FrameStatus.msg.html

(cl:defclass <FrameStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (current_distance
    :reader current_distance
    :initarg :current_distance
    :type cl:float
    :initform 0.0)
   (max_distance
    :reader max_distance
    :initarg :max_distance
    :type cl:float
    :initform 0.0)
   (pose_from_frame
    :reader pose_from_frame
    :initarg :pose_from_frame
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass FrameStatus (<FrameStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrameStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrameStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-msg:<FrameStatus> is deprecated: use marker_mapping-msg:FrameStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FrameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:id-val is deprecated.  Use marker_mapping-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'current_distance-val :lambda-list '(m))
(cl:defmethod current_distance-val ((m <FrameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:current_distance-val is deprecated.  Use marker_mapping-msg:current_distance instead.")
  (current_distance m))

(cl:ensure-generic-function 'max_distance-val :lambda-list '(m))
(cl:defmethod max_distance-val ((m <FrameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:max_distance-val is deprecated.  Use marker_mapping-msg:max_distance instead.")
  (max_distance m))

(cl:ensure-generic-function 'pose_from_frame-val :lambda-list '(m))
(cl:defmethod pose_from_frame-val ((m <FrameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:pose_from_frame-val is deprecated.  Use marker_mapping-msg:pose_from_frame instead.")
  (pose_from_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrameStatus>) ostream)
  "Serializes a message object of type '<FrameStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_from_frame) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrameStatus>) istream)
  "Deserializes a message object of type '<FrameStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_from_frame) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrameStatus>)))
  "Returns string type for a message object of type '<FrameStatus>"
  "marker_mapping/FrameStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameStatus)))
  "Returns string type for a message object of type 'FrameStatus"
  "marker_mapping/FrameStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrameStatus>)))
  "Returns md5sum for a message object of type '<FrameStatus>"
  "7f74922ad8511c5477ef362a7ef9b79a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrameStatus)))
  "Returns md5sum for a message object of type 'FrameStatus"
  "7f74922ad8511c5477ef362a7ef9b79a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrameStatus>)))
  "Returns full string definition for message of type '<FrameStatus>"
  (cl:format cl:nil "string id~%# current distance to the frame~%float32 current_distance~%# max allowed distance to init the pose~%float32 max_distance~%# pose if we use the frame to initialize the localization~%geometry_msgs/Pose pose_from_frame~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrameStatus)))
  "Returns full string definition for message of type 'FrameStatus"
  (cl:format cl:nil "string id~%# current distance to the frame~%float32 current_distance~%# max allowed distance to init the pose~%float32 max_distance~%# pose if we use the frame to initialize the localization~%geometry_msgs/Pose pose_from_frame~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrameStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_from_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrameStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FrameStatus
    (cl:cons ':id (id msg))
    (cl:cons ':current_distance (current_distance msg))
    (cl:cons ':max_distance (max_distance msg))
    (cl:cons ':pose_from_frame (pose_from_frame msg))
))
