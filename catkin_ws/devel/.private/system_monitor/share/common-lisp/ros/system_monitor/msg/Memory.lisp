; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude Memory.msg.html

(cl:defclass <Memory> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (total
    :reader total
    :initarg :total
    :type cl:integer
    :initform 0)
   (used
    :reader used
    :initarg :used
    :type cl:integer
    :initform 0)
   (free
    :reader free
    :initarg :free
    :type cl:integer
    :initform 0))
)

(cl:defclass Memory (<Memory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Memory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Memory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<Memory> is deprecated: use system_monitor-msg:Memory instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Memory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:name-val is deprecated.  Use system_monitor-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <Memory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:total-val is deprecated.  Use system_monitor-msg:total instead.")
  (total m))

(cl:ensure-generic-function 'used-val :lambda-list '(m))
(cl:defmethod used-val ((m <Memory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:used-val is deprecated.  Use system_monitor-msg:used instead.")
  (used m))

(cl:ensure-generic-function 'free-val :lambda-list '(m))
(cl:defmethod free-val ((m <Memory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:free-val is deprecated.  Use system_monitor-msg:free instead.")
  (free m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Memory>) ostream)
  "Serializes a message object of type '<Memory>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'total)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'used)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'free)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Memory>) istream)
  "Deserializes a message object of type '<Memory>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'used) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'free) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Memory>)))
  "Returns string type for a message object of type '<Memory>"
  "system_monitor/Memory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Memory)))
  "Returns string type for a message object of type 'Memory"
  "system_monitor/Memory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Memory>)))
  "Returns md5sum for a message object of type '<Memory>"
  "e76664714b587a3a9161519dc52642f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Memory)))
  "Returns md5sum for a message object of type 'Memory"
  "e76664714b587a3a9161519dc52642f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Memory>)))
  "Returns full string definition for message of type '<Memory>"
  (cl:format cl:nil "string name~%#Memory space in M~%#Physical w/o buffers total is zero~%int32 total~%int32 used~%int32 free~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Memory)))
  "Returns full string definition for message of type 'Memory"
  (cl:format cl:nil "string name~%#Memory space in M~%#Physical w/o buffers total is zero~%int32 total~%int32 used~%int32 free~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Memory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Memory>))
  "Converts a ROS message object to a list"
  (cl:list 'Memory
    (cl:cons ':name (name msg))
    (cl:cons ':total (total msg))
    (cl:cons ':used (used msg))
    (cl:cons ':free (free msg))
))
