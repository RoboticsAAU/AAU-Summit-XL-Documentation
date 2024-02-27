; Auto-generated. Do not edit!


(cl:in-package imu_manager-msg)


;//! \htmlinclude ImuManagerStatus.msg.html

(cl:defclass <ImuManagerStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (calibration_status
    :reader calibration_status
    :initarg :calibration_status
    :type cl:string
    :initform "")
   (next_check_countdown
    :reader next_check_countdown
    :initarg :next_check_countdown
    :type cl:integer
    :initform 0)
   (calibration_duration
    :reader calibration_duration
    :initarg :calibration_duration
    :type cl:integer
    :initform 0)
   (imu_temperature
    :reader imu_temperature
    :initarg :imu_temperature
    :type cl:float
    :initform 0.0)
   (calibrated_imu_temperature
    :reader calibrated_imu_temperature
    :initarg :calibrated_imu_temperature
    :type cl:float
    :initform 0.0)
   (robot_moving
    :reader robot_moving
    :initarg :robot_moving
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ImuManagerStatus (<ImuManagerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuManagerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuManagerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_manager-msg:<ImuManagerStatus> is deprecated: use imu_manager-msg:ImuManagerStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:header-val is deprecated.  Use imu_manager-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'calibration_status-val :lambda-list '(m))
(cl:defmethod calibration_status-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:calibration_status-val is deprecated.  Use imu_manager-msg:calibration_status instead.")
  (calibration_status m))

(cl:ensure-generic-function 'next_check_countdown-val :lambda-list '(m))
(cl:defmethod next_check_countdown-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:next_check_countdown-val is deprecated.  Use imu_manager-msg:next_check_countdown instead.")
  (next_check_countdown m))

(cl:ensure-generic-function 'calibration_duration-val :lambda-list '(m))
(cl:defmethod calibration_duration-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:calibration_duration-val is deprecated.  Use imu_manager-msg:calibration_duration instead.")
  (calibration_duration m))

(cl:ensure-generic-function 'imu_temperature-val :lambda-list '(m))
(cl:defmethod imu_temperature-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:imu_temperature-val is deprecated.  Use imu_manager-msg:imu_temperature instead.")
  (imu_temperature m))

(cl:ensure-generic-function 'calibrated_imu_temperature-val :lambda-list '(m))
(cl:defmethod calibrated_imu_temperature-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:calibrated_imu_temperature-val is deprecated.  Use imu_manager-msg:calibrated_imu_temperature instead.")
  (calibrated_imu_temperature m))

(cl:ensure-generic-function 'robot_moving-val :lambda-list '(m))
(cl:defmethod robot_moving-val ((m <ImuManagerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_manager-msg:robot_moving-val is deprecated.  Use imu_manager-msg:robot_moving instead.")
  (robot_moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuManagerStatus>) ostream)
  "Serializes a message object of type '<ImuManagerStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'calibration_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'calibration_status))
  (cl:let* ((signed (cl:slot-value msg 'next_check_countdown)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'calibration_duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imu_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'calibrated_imu_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'robot_moving) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuManagerStatus>) istream)
  "Deserializes a message object of type '<ImuManagerStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'calibration_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'calibration_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_check_countdown) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'calibration_duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imu_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'calibrated_imu_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'robot_moving) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuManagerStatus>)))
  "Returns string type for a message object of type '<ImuManagerStatus>"
  "imu_manager/ImuManagerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuManagerStatus)))
  "Returns string type for a message object of type 'ImuManagerStatus"
  "imu_manager/ImuManagerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuManagerStatus>)))
  "Returns md5sum for a message object of type '<ImuManagerStatus>"
  "3f781e87f06b49385516d30f4b92b9f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuManagerStatus)))
  "Returns md5sum for a message object of type 'ImuManagerStatus"
  "3f781e87f06b49385516d30f4b92b9f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuManagerStatus>)))
  "Returns full string definition for message of type '<ImuManagerStatus>"
  (cl:format cl:nil "Header header~%string calibration_status~%# in seconds~%int32 next_check_countdown~%# in seconds~%int32 calibration_duration~%# current temperature~%float32 imu_temperature~%# Temperature after last calibration~%float32 calibrated_imu_temperature~%# is robot moving?~%bool robot_moving~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuManagerStatus)))
  "Returns full string definition for message of type 'ImuManagerStatus"
  (cl:format cl:nil "Header header~%string calibration_status~%# in seconds~%int32 next_check_countdown~%# in seconds~%int32 calibration_duration~%# current temperature~%float32 imu_temperature~%# Temperature after last calibration~%float32 calibrated_imu_temperature~%# is robot moving?~%bool robot_moving~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuManagerStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'calibration_status))
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuManagerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuManagerStatus
    (cl:cons ':header (header msg))
    (cl:cons ':calibration_status (calibration_status msg))
    (cl:cons ':next_check_countdown (next_check_countdown msg))
    (cl:cons ':calibration_duration (calibration_duration msg))
    (cl:cons ':imu_temperature (imu_temperature msg))
    (cl:cons ':calibrated_imu_temperature (calibrated_imu_temperature msg))
    (cl:cons ':robot_moving (robot_moving msg))
))
