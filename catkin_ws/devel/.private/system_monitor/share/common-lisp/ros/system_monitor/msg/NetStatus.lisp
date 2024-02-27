; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude NetStatus.msg.html

(cl:defclass <NetStatus> (roslisp-msg-protocol:ros-message)
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
   (interfaces
    :reader interfaces
    :initarg :interfaces
    :type (cl:vector system_monitor-msg:Interface)
   :initform (cl:make-array 0 :element-type 'system_monitor-msg:Interface :initial-element (cl:make-instance 'system_monitor-msg:Interface))))
)

(cl:defclass NetStatus (<NetStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<NetStatus> is deprecated: use system_monitor-msg:NetStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <NetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:time-val is deprecated.  Use system_monitor-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'interfaces-val :lambda-list '(m))
(cl:defmethod interfaces-val ((m <NetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:interfaces-val is deprecated.  Use system_monitor-msg:interfaces instead.")
  (interfaces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetStatus>) ostream)
  "Serializes a message object of type '<NetStatus>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interfaces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'interfaces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetStatus>) istream)
  "Deserializes a message object of type '<NetStatus>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interfaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interfaces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_monitor-msg:Interface))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetStatus>)))
  "Returns string type for a message object of type '<NetStatus>"
  "system_monitor/NetStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetStatus)))
  "Returns string type for a message object of type 'NetStatus"
  "system_monitor/NetStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetStatus>)))
  "Returns md5sum for a message object of type '<NetStatus>"
  "ee4c5e43ad900b8ca9900b78fe4a10d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetStatus)))
  "Returns md5sum for a message object of type 'NetStatus"
  "ee4c5e43ad900b8ca9900b78fe4a10d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetStatus>)))
  "Returns full string definition for message of type '<NetStatus>"
  (cl:format cl:nil "string status~%float32 time~%system_monitor/Interface[] interfaces~%================================================================================~%MSG: system_monitor/Interface~%string name~%string state~%#input/output speed in MB/s~%float32 input~%float32 output~%int32 mtu~%#Data received/transmitted in MB~%float32 received~%float32 transmitted~%int32 collisions~%int32 rxError~%int32 txError~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetStatus)))
  "Returns full string definition for message of type 'NetStatus"
  (cl:format cl:nil "string status~%float32 time~%system_monitor/Interface[] interfaces~%================================================================================~%MSG: system_monitor/Interface~%string name~%string state~%#input/output speed in MB/s~%float32 input~%float32 output~%int32 mtu~%#Data received/transmitted in MB~%float32 received~%float32 transmitted~%int32 collisions~%int32 rxError~%int32 txError~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interfaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NetStatus
    (cl:cons ':status (status msg))
    (cl:cons ':time (time msg))
    (cl:cons ':interfaces (interfaces msg))
))
