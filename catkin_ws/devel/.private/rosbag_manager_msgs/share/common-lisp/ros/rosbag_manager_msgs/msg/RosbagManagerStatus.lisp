; Auto-generated. Do not edit!


(cl:in-package rosbag_manager_msgs-msg)


;//! \htmlinclude RosbagManagerStatus.msg.html

(cl:defclass <RosbagManagerStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type robotnik_msgs-msg:State
    :initform (cl:make-instance 'robotnik_msgs-msg:State))
   (recording
    :reader recording
    :initarg :recording
    :type cl:boolean
    :initform cl:nil)
   (time_recording
    :reader time_recording
    :initarg :time_recording
    :type cl:integer
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (bag_name
    :reader bag_name
    :initarg :bag_name
    :type cl:string
    :initform "")
   (compression
    :reader compression
    :initarg :compression
    :type cl:boolean
    :initform cl:nil)
   (regex
    :reader regex
    :initarg :regex
    :type cl:boolean
    :initform cl:nil)
   (stored_size
    :reader stored_size
    :initarg :stored_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass RosbagManagerStatus (<RosbagManagerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosbagManagerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosbagManagerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbag_manager_msgs-msg:<RosbagManagerStatus> is deprecated: use rosbag_manager_msgs-msg:RosbagManagerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:header-val is deprecated.  Use rosbag_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:state-val is deprecated.  Use rosbag_manager_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'recording-val :lambda-list '(m))
(cl:defmethod recording-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:recording-val is deprecated.  Use rosbag_manager_msgs-msg:recording instead.")
  (recording m))

(cl:ensure-generic-function 'time_recording-val :lambda-list '(m))
(cl:defmethod time_recording-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:time_recording-val is deprecated.  Use rosbag_manager_msgs-msg:time_recording instead.")
  (time_recording m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:path-val is deprecated.  Use rosbag_manager_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'bag_name-val :lambda-list '(m))
(cl:defmethod bag_name-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:bag_name-val is deprecated.  Use rosbag_manager_msgs-msg:bag_name instead.")
  (bag_name m))

(cl:ensure-generic-function 'compression-val :lambda-list '(m))
(cl:defmethod compression-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:compression-val is deprecated.  Use rosbag_manager_msgs-msg:compression instead.")
  (compression m))

(cl:ensure-generic-function 'regex-val :lambda-list '(m))
(cl:defmethod regex-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:regex-val is deprecated.  Use rosbag_manager_msgs-msg:regex instead.")
  (regex m))

(cl:ensure-generic-function 'stored_size-val :lambda-list '(m))
(cl:defmethod stored_size-val ((m <RosbagManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-msg:stored_size-val is deprecated.  Use rosbag_manager_msgs-msg:stored_size instead.")
  (stored_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosbagManagerStatus>) ostream)
  "Serializes a message object of type '<RosbagManagerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recording) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'time_recording)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bag_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bag_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'compression) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'regex) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stored_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosbagManagerStatus>) istream)
  "Deserializes a message object of type '<RosbagManagerStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:setf (cl:slot-value msg 'recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_recording) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bag_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bag_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'compression) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'regex) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stored_size) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosbagManagerStatus>)))
  "Returns string type for a message object of type '<RosbagManagerStatus>"
  "rosbag_manager_msgs/RosbagManagerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosbagManagerStatus)))
  "Returns string type for a message object of type 'RosbagManagerStatus"
  "rosbag_manager_msgs/RosbagManagerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosbagManagerStatus>)))
  "Returns md5sum for a message object of type '<RosbagManagerStatus>"
  "76b1de38e2d3f907b4177eba5f86930e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosbagManagerStatus)))
  "Returns md5sum for a message object of type 'RosbagManagerStatus"
  "76b1de38e2d3f907b4177eba5f86930e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosbagManagerStatus>)))
  "Returns full string definition for message of type '<RosbagManagerStatus>"
  (cl:format cl:nil "Header header~%~%# Component's state~%robotnik_msgs/State state~%~%bool recording~%int32 time_recording~%~%# path to save the rosbag~%string path~%# Bag name~%string bag_name~%# Is the bag being compressed~%bool compression~%# Topics are subscribed using regular expresions~%bool regex~%# Disk space used in the recording (in MB)~%float64 stored_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosbagManagerStatus)))
  "Returns full string definition for message of type 'RosbagManagerStatus"
  (cl:format cl:nil "Header header~%~%# Component's state~%robotnik_msgs/State state~%~%bool recording~%int32 time_recording~%~%# path to save the rosbag~%string path~%# Bag name~%string bag_name~%# Is the bag being compressed~%bool compression~%# Topics are subscribed using regular expresions~%bool regex~%# Disk space used in the recording (in MB)~%float64 stored_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosbagManagerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     1
     4
     4 (cl:length (cl:slot-value msg 'path))
     4 (cl:length (cl:slot-value msg 'bag_name))
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosbagManagerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RosbagManagerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':recording (recording msg))
    (cl:cons ':time_recording (time_recording msg))
    (cl:cons ':path (path msg))
    (cl:cons ':bag_name (bag_name msg))
    (cl:cons ':compression (compression msg))
    (cl:cons ':regex (regex msg))
    (cl:cons ':stored_size (stored_size msg))
))
