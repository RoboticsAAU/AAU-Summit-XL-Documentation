; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude CPUUsageStatus.msg.html

(cl:defclass <CPUUsageStatus> (roslisp-msg-protocol:ros-message)
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
   (load_status
    :reader load_status
    :initarg :load_status
    :type cl:string
    :initform "")
   (load_avg1
    :reader load_avg1
    :initarg :load_avg1
    :type cl:float
    :initform 0.0)
   (load_avg5
    :reader load_avg5
    :initarg :load_avg5
    :type cl:float
    :initform 0.0)
   (load_avg15
    :reader load_avg15
    :initarg :load_avg15
    :type cl:float
    :initform 0.0)
   (cores
    :reader cores
    :initarg :cores
    :type (cl:vector system_monitor-msg:CoreUsage)
   :initform (cl:make-array 0 :element-type 'system_monitor-msg:CoreUsage :initial-element (cl:make-instance 'system_monitor-msg:CoreUsage))))
)

(cl:defclass CPUUsageStatus (<CPUUsageStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CPUUsageStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CPUUsageStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<CPUUsageStatus> is deprecated: use system_monitor-msg:CPUUsageStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:status-val is deprecated.  Use system_monitor-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:time-val is deprecated.  Use system_monitor-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'load_status-val :lambda-list '(m))
(cl:defmethod load_status-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:load_status-val is deprecated.  Use system_monitor-msg:load_status instead.")
  (load_status m))

(cl:ensure-generic-function 'load_avg1-val :lambda-list '(m))
(cl:defmethod load_avg1-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:load_avg1-val is deprecated.  Use system_monitor-msg:load_avg1 instead.")
  (load_avg1 m))

(cl:ensure-generic-function 'load_avg5-val :lambda-list '(m))
(cl:defmethod load_avg5-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:load_avg5-val is deprecated.  Use system_monitor-msg:load_avg5 instead.")
  (load_avg5 m))

(cl:ensure-generic-function 'load_avg15-val :lambda-list '(m))
(cl:defmethod load_avg15-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:load_avg15-val is deprecated.  Use system_monitor-msg:load_avg15 instead.")
  (load_avg15 m))

(cl:ensure-generic-function 'cores-val :lambda-list '(m))
(cl:defmethod cores-val ((m <CPUUsageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:cores-val is deprecated.  Use system_monitor-msg:cores instead.")
  (cores m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CPUUsageStatus>) ostream)
  "Serializes a message object of type '<CPUUsageStatus>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'load_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'load_status))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'load_avg1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'load_avg5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'load_avg15))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CPUUsageStatus>) istream)
  "Deserializes a message object of type '<CPUUsageStatus>"
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
      (cl:setf (cl:slot-value msg 'load_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'load_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'load_avg1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'load_avg5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'load_avg15) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_monitor-msg:CoreUsage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CPUUsageStatus>)))
  "Returns string type for a message object of type '<CPUUsageStatus>"
  "system_monitor/CPUUsageStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CPUUsageStatus)))
  "Returns string type for a message object of type 'CPUUsageStatus"
  "system_monitor/CPUUsageStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CPUUsageStatus>)))
  "Returns md5sum for a message object of type '<CPUUsageStatus>"
  "e3d0188421c1391749e86c170c349143")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CPUUsageStatus)))
  "Returns md5sum for a message object of type 'CPUUsageStatus"
  "e3d0188421c1391749e86c170c349143")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CPUUsageStatus>)))
  "Returns full string definition for message of type '<CPUUsageStatus>"
  (cl:format cl:nil "string status~%float32 time~%string load_status~%#Load average in %~%float32 load_avg1~%float32 load_avg5~%float32 load_avg15~%system_monitor/CoreUsage[] cores~%~%================================================================================~%MSG: system_monitor/CoreUsage~%int8 id~%string status~%#Speed of the core in MHz~%float32 speed~%# % of the core used by user/system/...~%float32 user~%float32 nice~%float32 system~%float32 idle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CPUUsageStatus)))
  "Returns full string definition for message of type 'CPUUsageStatus"
  (cl:format cl:nil "string status~%float32 time~%string load_status~%#Load average in %~%float32 load_avg1~%float32 load_avg5~%float32 load_avg15~%system_monitor/CoreUsage[] cores~%~%================================================================================~%MSG: system_monitor/CoreUsage~%int8 id~%string status~%#Speed of the core in MHz~%float32 speed~%# % of the core used by user/system/...~%float32 user~%float32 nice~%float32 system~%float32 idle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CPUUsageStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4
     4 (cl:length (cl:slot-value msg 'load_status))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CPUUsageStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CPUUsageStatus
    (cl:cons ':status (status msg))
    (cl:cons ':time (time msg))
    (cl:cons ':load_status (load_status msg))
    (cl:cons ':load_avg1 (load_avg1 msg))
    (cl:cons ':load_avg5 (load_avg5 msg))
    (cl:cons ':load_avg15 (load_avg15 msg))
    (cl:cons ':cores (cores msg))
))
