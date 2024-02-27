; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude CPUTemperatureStatus.msg.html

(cl:defclass <CPUTemperatureStatus> (roslisp-msg-protocol:ros-message)
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
   (cores
    :reader cores
    :initarg :cores
    :type (cl:vector system_monitor-msg:CoreTemp)
   :initform (cl:make-array 0 :element-type 'system_monitor-msg:CoreTemp :initial-element (cl:make-instance 'system_monitor-msg:CoreTemp))))
)

(cl:defclass CPUTemperatureStatus (<CPUTemperatureStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CPUTemperatureStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CPUTemperatureStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<CPUTemperatureStatus> is deprecated: use system_monitor-msg:CPUTemperatureStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CPUTemperatureStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <CPUTemperatureStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:time-val is deprecated.  Use system_monitor-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'cores-val :lambda-list '(m))
(cl:defmethod cores-val ((m <CPUTemperatureStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:cores-val is deprecated.  Use system_monitor-msg:cores instead.")
  (cores m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CPUTemperatureStatus>) ostream)
  "Serializes a message object of type '<CPUTemperatureStatus>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cores))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CPUTemperatureStatus>) istream)
  "Deserializes a message object of type '<CPUTemperatureStatus>"
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
  (cl:setf (cl:slot-value msg 'cores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_monitor-msg:CoreTemp))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CPUTemperatureStatus>)))
  "Returns string type for a message object of type '<CPUTemperatureStatus>"
  "system_monitor/CPUTemperatureStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CPUTemperatureStatus)))
  "Returns string type for a message object of type 'CPUTemperatureStatus"
  "system_monitor/CPUTemperatureStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CPUTemperatureStatus>)))
  "Returns md5sum for a message object of type '<CPUTemperatureStatus>"
  "1225aebb87ce815e0a8186ef49cf99cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CPUTemperatureStatus)))
  "Returns md5sum for a message object of type 'CPUTemperatureStatus"
  "1225aebb87ce815e0a8186ef49cf99cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CPUTemperatureStatus>)))
  "Returns full string definition for message of type '<CPUTemperatureStatus>"
  (cl:format cl:nil "string status~%float32 time~%system_monitor/CoreTemp[] cores~%~%================================================================================~%MSG: system_monitor/CoreTemp~%int8 id~%#Temperature of the core in DegC~%float32 temp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CPUTemperatureStatus)))
  "Returns full string definition for message of type 'CPUTemperatureStatus"
  (cl:format cl:nil "string status~%float32 time~%system_monitor/CoreTemp[] cores~%~%================================================================================~%MSG: system_monitor/CoreTemp~%int8 id~%#Temperature of the core in DegC~%float32 temp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CPUTemperatureStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CPUTemperatureStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CPUTemperatureStatus
    (cl:cons ':status (status msg))
    (cl:cons ':time (time msg))
    (cl:cons ':cores (cores msg))
))
