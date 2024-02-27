; Auto-generated. Do not edit!


(cl:in-package ping_time_monitor-msg)


;//! \htmlinclude PingStatus.msg.html

(cl:defclass <PingStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (host
    :reader host
    :initarg :host
    :type cl:string
    :initform "")
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (packet_loss
    :reader packet_loss
    :initarg :packet_loss
    :type cl:float
    :initform 0.0)
   (t_min
    :reader t_min
    :initarg :t_min
    :type cl:float
    :initform 0.0)
   (t_avg
    :reader t_avg
    :initarg :t_avg
    :type cl:float
    :initform 0.0)
   (t_max
    :reader t_max
    :initarg :t_max
    :type cl:float
    :initform 0.0)
   (t_mdev
    :reader t_mdev
    :initarg :t_mdev
    :type cl:float
    :initform 0.0))
)

(cl:defclass PingStatus (<PingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ping_time_monitor-msg:<PingStatus> is deprecated: use ping_time_monitor-msg:PingStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:header-val is deprecated.  Use ping_time_monitor-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:time-val is deprecated.  Use ping_time_monitor-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'host-val :lambda-list '(m))
(cl:defmethod host-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:host-val is deprecated.  Use ping_time_monitor-msg:host instead.")
  (host m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:count-val is deprecated.  Use ping_time_monitor-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:timeout-val is deprecated.  Use ping_time_monitor-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'packet_loss-val :lambda-list '(m))
(cl:defmethod packet_loss-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:packet_loss-val is deprecated.  Use ping_time_monitor-msg:packet_loss instead.")
  (packet_loss m))

(cl:ensure-generic-function 't_min-val :lambda-list '(m))
(cl:defmethod t_min-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:t_min-val is deprecated.  Use ping_time_monitor-msg:t_min instead.")
  (t_min m))

(cl:ensure-generic-function 't_avg-val :lambda-list '(m))
(cl:defmethod t_avg-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:t_avg-val is deprecated.  Use ping_time_monitor-msg:t_avg instead.")
  (t_avg m))

(cl:ensure-generic-function 't_max-val :lambda-list '(m))
(cl:defmethod t_max-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:t_max-val is deprecated.  Use ping_time_monitor-msg:t_max instead.")
  (t_max m))

(cl:ensure-generic-function 't_mdev-val :lambda-list '(m))
(cl:defmethod t_mdev-val ((m <PingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping_time_monitor-msg:t_mdev-val is deprecated.  Use ping_time_monitor-msg:t_mdev instead.")
  (t_mdev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingStatus>) ostream)
  "Serializes a message object of type '<PingStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'host))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'host))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'packet_loss))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_avg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_mdev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingStatus>) istream)
  "Deserializes a message object of type '<PingStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'host) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'host) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'packet_loss) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_avg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_mdev) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingStatus>)))
  "Returns string type for a message object of type '<PingStatus>"
  "ping_time_monitor/PingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingStatus)))
  "Returns string type for a message object of type 'PingStatus"
  "ping_time_monitor/PingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingStatus>)))
  "Returns md5sum for a message object of type '<PingStatus>"
  "95d991aad8be91a150ff80392e4e042c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingStatus)))
  "Returns md5sum for a message object of type 'PingStatus"
  "95d991aad8be91a150ff80392e4e042c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingStatus>)))
  "Returns full string definition for message of type '<PingStatus>"
  (cl:format cl:nil "std_msgs/Header header~%~%float32 time~%string host~%int32 count~%float32 timeout~%# % of packets loss~%float32 packet_loss~%# min transmission time~%float32 t_min~%# average transmission time~%float32 t_avg~%# max transmission time~%float32 t_max~%float32 t_mdev~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingStatus)))
  "Returns full string definition for message of type 'PingStatus"
  (cl:format cl:nil "std_msgs/Header header~%~%float32 time~%string host~%int32 count~%float32 timeout~%# % of packets loss~%float32 packet_loss~%# min transmission time~%float32 t_min~%# average transmission time~%float32 t_avg~%# max transmission time~%float32 t_max~%float32 t_mdev~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'host))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PingStatus
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':host (host msg))
    (cl:cons ':count (count msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':packet_loss (packet_loss msg))
    (cl:cons ':t_min (t_min msg))
    (cl:cons ':t_avg (t_avg msg))
    (cl:cons ':t_max (t_max msg))
    (cl:cons ':t_mdev (t_mdev msg))
))
