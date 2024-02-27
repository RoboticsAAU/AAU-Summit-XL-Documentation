; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude HDDStatus.msg.html

(cl:defclass <HDDStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (space_reading
    :reader space_reading
    :initarg :space_reading
    :type cl:string
    :initform "")
   (disks
    :reader disks
    :initarg :disks
    :type (cl:vector system_monitor-msg:Disk)
   :initform (cl:make-array 0 :element-type 'system_monitor-msg:Disk :initial-element (cl:make-instance 'system_monitor-msg:Disk))))
)

(cl:defclass HDDStatus (<HDDStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDDStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDDStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<HDDStatus> is deprecated: use system_monitor-msg:HDDStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <HDDStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <HDDStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:time-val is deprecated.  Use system_monitor-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'space_reading-val :lambda-list '(m))
(cl:defmethod space_reading-val ((m <HDDStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:space_reading-val is deprecated.  Use system_monitor-msg:space_reading instead.")
  (space_reading m))

(cl:ensure-generic-function 'disks-val :lambda-list '(m))
(cl:defmethod disks-val ((m <HDDStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:disks-val is deprecated.  Use system_monitor-msg:disks instead.")
  (disks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDDStatus>) ostream)
  "Serializes a message object of type '<HDDStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'space_reading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'space_reading))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'disks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'disks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDDStatus>) istream)
  "Deserializes a message object of type '<HDDStatus>"
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
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'space_reading) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'space_reading) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'disks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'disks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_monitor-msg:Disk))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDDStatus>)))
  "Returns string type for a message object of type '<HDDStatus>"
  "system_monitor/HDDStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDDStatus)))
  "Returns string type for a message object of type 'HDDStatus"
  "system_monitor/HDDStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDDStatus>)))
  "Returns md5sum for a message object of type '<HDDStatus>"
  "f9464edca9fb3861e03bc3ae40d6d8bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDDStatus)))
  "Returns md5sum for a message object of type 'HDDStatus"
  "f9464edca9fb3861e03bc3ae40d6d8bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDDStatus>)))
  "Returns full string definition for message of type '<HDDStatus>"
  (cl:format cl:nil "string status~%float32 time~%string space_reading~%system_monitor/Disk[] disks~%~%================================================================================~%MSG: system_monitor/Disk~%int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDDStatus)))
  "Returns full string definition for message of type 'HDDStatus"
  (cl:format cl:nil "string status~%float32 time~%string space_reading~%system_monitor/Disk[] disks~%~%================================================================================~%MSG: system_monitor/Disk~%int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDDStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4
     4 (cl:length (cl:slot-value msg 'space_reading))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'disks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDDStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HDDStatus
    (cl:cons ':status (status msg))
    (cl:cons ':time (time msg))
    (cl:cons ':space_reading (space_reading msg))
    (cl:cons ':disks (disks msg))
))
