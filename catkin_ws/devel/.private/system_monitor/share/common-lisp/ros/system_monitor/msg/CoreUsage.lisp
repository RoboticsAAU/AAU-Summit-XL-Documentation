; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude CoreUsage.msg.html

(cl:defclass <CoreUsage> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (user
    :reader user
    :initarg :user
    :type cl:float
    :initform 0.0)
   (nice
    :reader nice
    :initarg :nice
    :type cl:float
    :initform 0.0)
   (system
    :reader system
    :initarg :system
    :type cl:float
    :initform 0.0)
   (idle
    :reader idle
    :initarg :idle
    :type cl:float
    :initform 0.0))
)

(cl:defclass CoreUsage (<CoreUsage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CoreUsage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CoreUsage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<CoreUsage> is deprecated: use system_monitor-msg:CoreUsage instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:id-val is deprecated.  Use system_monitor-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:speed-val is deprecated.  Use system_monitor-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'user-val :lambda-list '(m))
(cl:defmethod user-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:user-val is deprecated.  Use system_monitor-msg:user instead.")
  (user m))

(cl:ensure-generic-function 'nice-val :lambda-list '(m))
(cl:defmethod nice-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:nice-val is deprecated.  Use system_monitor-msg:nice instead.")
  (nice m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:system-val is deprecated.  Use system_monitor-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'idle-val :lambda-list '(m))
(cl:defmethod idle-val ((m <CoreUsage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:idle-val is deprecated.  Use system_monitor-msg:idle instead.")
  (idle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CoreUsage>) ostream)
  "Serializes a message object of type '<CoreUsage>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'user))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nice))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'system))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'idle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CoreUsage>) istream)
  "Deserializes a message object of type '<CoreUsage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'user) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nice) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'system) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'idle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CoreUsage>)))
  "Returns string type for a message object of type '<CoreUsage>"
  "system_monitor/CoreUsage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CoreUsage)))
  "Returns string type for a message object of type 'CoreUsage"
  "system_monitor/CoreUsage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CoreUsage>)))
  "Returns md5sum for a message object of type '<CoreUsage>"
  "5d2b3978c7b592446e308ddd6c7d1cba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CoreUsage)))
  "Returns md5sum for a message object of type 'CoreUsage"
  "5d2b3978c7b592446e308ddd6c7d1cba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CoreUsage>)))
  "Returns full string definition for message of type '<CoreUsage>"
  (cl:format cl:nil "int8 id~%string status~%#Speed of the core in MHz~%float32 speed~%# % of the core used by user/system/...~%float32 user~%float32 nice~%float32 system~%float32 idle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CoreUsage)))
  "Returns full string definition for message of type 'CoreUsage"
  (cl:format cl:nil "int8 id~%string status~%#Speed of the core in MHz~%float32 speed~%# % of the core used by user/system/...~%float32 user~%float32 nice~%float32 system~%float32 idle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CoreUsage>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CoreUsage>))
  "Converts a ROS message object to a list"
  (cl:list 'CoreUsage
    (cl:cons ':id (id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':user (user msg))
    (cl:cons ':nice (nice msg))
    (cl:cons ':system (system msg))
    (cl:cons ':idle (idle msg))
))
