; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude Disk.msg.html

(cl:defclass <Disk> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (mount_point
    :reader mount_point
    :initarg :mount_point
    :type cl:string
    :initform "")
   (size
    :reader size
    :initarg :size
    :type cl:float
    :initform 0.0)
   (available
    :reader available
    :initarg :available
    :type cl:float
    :initform 0.0)
   (use
    :reader use
    :initarg :use
    :type cl:float
    :initform 0.0))
)

(cl:defclass Disk (<Disk>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Disk>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Disk)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<Disk> is deprecated: use system_monitor-msg:Disk instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:id-val is deprecated.  Use system_monitor-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:name-val is deprecated.  Use system_monitor-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'mount_point-val :lambda-list '(m))
(cl:defmethod mount_point-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:mount_point-val is deprecated.  Use system_monitor-msg:mount_point instead.")
  (mount_point m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:size-val is deprecated.  Use system_monitor-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:available-val is deprecated.  Use system_monitor-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'use-val :lambda-list '(m))
(cl:defmethod use-val ((m <Disk>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:use-val is deprecated.  Use system_monitor-msg:use instead.")
  (use m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Disk>) ostream)
  "Serializes a message object of type '<Disk>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mount_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mount_point))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'available))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'use))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Disk>) istream)
  "Deserializes a message object of type '<Disk>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mount_point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mount_point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'available) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'use) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Disk>)))
  "Returns string type for a message object of type '<Disk>"
  "system_monitor/Disk")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Disk)))
  "Returns string type for a message object of type 'Disk"
  "system_monitor/Disk")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Disk>)))
  "Returns md5sum for a message object of type '<Disk>"
  "cc25b0e895c10714a4772bbf00a5fe43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Disk)))
  "Returns md5sum for a message object of type 'Disk"
  "cc25b0e895c10714a4772bbf00a5fe43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Disk>)))
  "Returns full string definition for message of type '<Disk>"
  (cl:format cl:nil "int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Disk)))
  "Returns full string definition for message of type 'Disk"
  (cl:format cl:nil "int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Disk>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'mount_point))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Disk>))
  "Converts a ROS message object to a list"
  (cl:list 'Disk
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':status (status msg))
    (cl:cons ':mount_point (mount_point msg))
    (cl:cons ':size (size msg))
    (cl:cons ':available (available msg))
    (cl:cons ':use (use msg))
))
