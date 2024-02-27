; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude Interface.msg.html

(cl:defclass <Interface> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (input
    :reader input
    :initarg :input
    :type cl:float
    :initform 0.0)
   (output
    :reader output
    :initarg :output
    :type cl:float
    :initform 0.0)
   (mtu
    :reader mtu
    :initarg :mtu
    :type cl:integer
    :initform 0)
   (received
    :reader received
    :initarg :received
    :type cl:float
    :initform 0.0)
   (transmitted
    :reader transmitted
    :initarg :transmitted
    :type cl:float
    :initform 0.0)
   (collisions
    :reader collisions
    :initarg :collisions
    :type cl:integer
    :initform 0)
   (rxError
    :reader rxError
    :initarg :rxError
    :type cl:integer
    :initform 0)
   (txError
    :reader txError
    :initarg :txError
    :type cl:integer
    :initform 0))
)

(cl:defclass Interface (<Interface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<Interface> is deprecated: use system_monitor-msg:Interface instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:name-val is deprecated.  Use system_monitor-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:state-val is deprecated.  Use system_monitor-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:input-val is deprecated.  Use system_monitor-msg:input instead.")
  (input m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:output-val is deprecated.  Use system_monitor-msg:output instead.")
  (output m))

(cl:ensure-generic-function 'mtu-val :lambda-list '(m))
(cl:defmethod mtu-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:mtu-val is deprecated.  Use system_monitor-msg:mtu instead.")
  (mtu m))

(cl:ensure-generic-function 'received-val :lambda-list '(m))
(cl:defmethod received-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:received-val is deprecated.  Use system_monitor-msg:received instead.")
  (received m))

(cl:ensure-generic-function 'transmitted-val :lambda-list '(m))
(cl:defmethod transmitted-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:transmitted-val is deprecated.  Use system_monitor-msg:transmitted instead.")
  (transmitted m))

(cl:ensure-generic-function 'collisions-val :lambda-list '(m))
(cl:defmethod collisions-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:collisions-val is deprecated.  Use system_monitor-msg:collisions instead.")
  (collisions m))

(cl:ensure-generic-function 'rxError-val :lambda-list '(m))
(cl:defmethod rxError-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:rxError-val is deprecated.  Use system_monitor-msg:rxError instead.")
  (rxError m))

(cl:ensure-generic-function 'txError-val :lambda-list '(m))
(cl:defmethod txError-val ((m <Interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:txError-val is deprecated.  Use system_monitor-msg:txError instead.")
  (txError m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interface>) ostream)
  "Serializes a message object of type '<Interface>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'mtu)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'received))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'transmitted))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'collisions)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rxError)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'txError)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interface>) istream)
  "Deserializes a message object of type '<Interface>"
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
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mtu) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'received) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'transmitted) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collisions) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rxError) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'txError) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interface>)))
  "Returns string type for a message object of type '<Interface>"
  "system_monitor/Interface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interface)))
  "Returns string type for a message object of type 'Interface"
  "system_monitor/Interface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interface>)))
  "Returns md5sum for a message object of type '<Interface>"
  "5b547a89cc3995f4c9d69adede1755a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interface)))
  "Returns md5sum for a message object of type 'Interface"
  "5b547a89cc3995f4c9d69adede1755a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interface>)))
  "Returns full string definition for message of type '<Interface>"
  (cl:format cl:nil "string name~%string state~%#input/output speed in MB/s~%float32 input~%float32 output~%int32 mtu~%#Data received/transmitted in MB~%float32 received~%float32 transmitted~%int32 collisions~%int32 rxError~%int32 txError~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interface)))
  "Returns full string definition for message of type 'Interface"
  (cl:format cl:nil "string name~%string state~%#input/output speed in MB/s~%float32 input~%float32 output~%int32 mtu~%#Data received/transmitted in MB~%float32 received~%float32 transmitted~%int32 collisions~%int32 rxError~%int32 txError~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interface>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'state))
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interface>))
  "Converts a ROS message object to a list"
  (cl:list 'Interface
    (cl:cons ':name (name msg))
    (cl:cons ':state (state msg))
    (cl:cons ':input (input msg))
    (cl:cons ':output (output msg))
    (cl:cons ':mtu (mtu msg))
    (cl:cons ':received (received msg))
    (cl:cons ':transmitted (transmitted msg))
    (cl:cons ':collisions (collisions msg))
    (cl:cons ':rxError (rxError msg))
    (cl:cons ':txError (txError msg))
))
