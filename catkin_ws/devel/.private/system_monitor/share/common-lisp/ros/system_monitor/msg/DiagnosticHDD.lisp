; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude DiagnosticHDD.msg.html

(cl:defclass <DiagnosticHDD> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (hardware_id
    :reader hardware_id
    :initarg :hardware_id
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type system_monitor-msg:HDDStatus
    :initform (cl:make-instance 'system_monitor-msg:HDDStatus)))
)

(cl:defclass DiagnosticHDD (<DiagnosticHDD>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiagnosticHDD>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiagnosticHDD)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<DiagnosticHDD> is deprecated: use system_monitor-msg:DiagnosticHDD instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DiagnosticHDD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:name-val is deprecated.  Use system_monitor-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DiagnosticHDD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:message-val is deprecated.  Use system_monitor-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'hardware_id-val :lambda-list '(m))
(cl:defmethod hardware_id-val ((m <DiagnosticHDD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:hardware_id-val is deprecated.  Use system_monitor-msg:hardware_id instead.")
  (hardware_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DiagnosticHDD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiagnosticHDD>) ostream)
  "Serializes a message object of type '<DiagnosticHDD>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiagnosticHDD>) istream)
  "Deserializes a message object of type '<DiagnosticHDD>"
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
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiagnosticHDD>)))
  "Returns string type for a message object of type '<DiagnosticHDD>"
  "system_monitor/DiagnosticHDD")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiagnosticHDD)))
  "Returns string type for a message object of type 'DiagnosticHDD"
  "system_monitor/DiagnosticHDD")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiagnosticHDD>)))
  "Returns md5sum for a message object of type '<DiagnosticHDD>"
  "90b65e631e647c3f69d6475dcbed9297")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiagnosticHDD)))
  "Returns md5sum for a message object of type 'DiagnosticHDD"
  "90b65e631e647c3f69d6475dcbed9297")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiagnosticHDD>)))
  "Returns full string definition for message of type '<DiagnosticHDD>"
  (cl:format cl:nil "string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/HDDStatus status~%~%================================================================================~%MSG: system_monitor/HDDStatus~%string status~%float32 time~%string space_reading~%system_monitor/Disk[] disks~%~%================================================================================~%MSG: system_monitor/Disk~%int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiagnosticHDD)))
  "Returns full string definition for message of type 'DiagnosticHDD"
  (cl:format cl:nil "string name~%# Possible values for message: 'OK', 'Warning','Error'~%string message~%string hardware_id~%system_monitor/HDDStatus status~%~%================================================================================~%MSG: system_monitor/HDDStatus~%string status~%float32 time~%string space_reading~%system_monitor/Disk[] disks~%~%================================================================================~%MSG: system_monitor/Disk~%int8 id~%string name~%string status~%string mount_point~%#Size of the disk in G~%float32 size~%float32 available~%#% of total size used~%float32 use~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiagnosticHDD>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'hardware_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiagnosticHDD>))
  "Converts a ROS message object to a list"
  (cl:list 'DiagnosticHDD
    (cl:cons ':name (name msg))
    (cl:cons ':message (message msg))
    (cl:cons ':hardware_id (hardware_id msg))
    (cl:cons ':status (status msg))
))
