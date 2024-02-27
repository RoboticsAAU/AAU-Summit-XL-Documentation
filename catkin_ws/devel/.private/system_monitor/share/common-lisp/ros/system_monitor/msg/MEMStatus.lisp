; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude MEMStatus.msg.html

(cl:defclass <MEMStatus> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (memories
    :reader memories
    :initarg :memories
    :type (cl:vector system_monitor-msg:Memory)
   :initform (cl:make-array 0 :element-type 'system_monitor-msg:Memory :initial-element (cl:make-instance 'system_monitor-msg:Memory)))
   (totalM
    :reader totalM
    :initarg :totalM
    :type cl:integer
    :initform 0)
   (usedM
    :reader usedM
    :initarg :usedM
    :type cl:integer
    :initform 0)
   (freeM
    :reader freeM
    :initarg :freeM
    :type cl:integer
    :initform 0))
)

(cl:defclass MEMStatus (<MEMStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MEMStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MEMStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<MEMStatus> is deprecated: use system_monitor-msg:MEMStatus instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <MEMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:time-val is deprecated.  Use system_monitor-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'memories-val :lambda-list '(m))
(cl:defmethod memories-val ((m <MEMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:memories-val is deprecated.  Use system_monitor-msg:memories instead.")
  (memories m))

(cl:ensure-generic-function 'totalM-val :lambda-list '(m))
(cl:defmethod totalM-val ((m <MEMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:totalM-val is deprecated.  Use system_monitor-msg:totalM instead.")
  (totalM m))

(cl:ensure-generic-function 'usedM-val :lambda-list '(m))
(cl:defmethod usedM-val ((m <MEMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:usedM-val is deprecated.  Use system_monitor-msg:usedM instead.")
  (usedM m))

(cl:ensure-generic-function 'freeM-val :lambda-list '(m))
(cl:defmethod freeM-val ((m <MEMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:freeM-val is deprecated.  Use system_monitor-msg:freeM instead.")
  (freeM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MEMStatus>) ostream)
  "Serializes a message object of type '<MEMStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'memories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'memories))
  (cl:let* ((signed (cl:slot-value msg 'totalM)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'usedM)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'freeM)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MEMStatus>) istream)
  "Deserializes a message object of type '<MEMStatus>"
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
  (cl:setf (cl:slot-value msg 'memories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'memories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'system_monitor-msg:Memory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'totalM) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usedM) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'freeM) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MEMStatus>)))
  "Returns string type for a message object of type '<MEMStatus>"
  "system_monitor/MEMStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MEMStatus)))
  "Returns string type for a message object of type 'MEMStatus"
  "system_monitor/MEMStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MEMStatus>)))
  "Returns md5sum for a message object of type '<MEMStatus>"
  "87aa3708fd29c92a6112f09fa739ebe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MEMStatus)))
  "Returns md5sum for a message object of type 'MEMStatus"
  "87aa3708fd29c92a6112f09fa739ebe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MEMStatus>)))
  "Returns full string definition for message of type '<MEMStatus>"
  (cl:format cl:nil "float32 time~%system_monitor/Memory[] memories~%#Memory space in M~%int32 totalM~%int32 usedM~%int32 freeM~%================================================================================~%MSG: system_monitor/Memory~%string name~%#Memory space in M~%#Physical w/o buffers total is zero~%int32 total~%int32 used~%int32 free~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MEMStatus)))
  "Returns full string definition for message of type 'MEMStatus"
  (cl:format cl:nil "float32 time~%system_monitor/Memory[] memories~%#Memory space in M~%int32 totalM~%int32 usedM~%int32 freeM~%================================================================================~%MSG: system_monitor/Memory~%string name~%#Memory space in M~%#Physical w/o buffers total is zero~%int32 total~%int32 used~%int32 free~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MEMStatus>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'memories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MEMStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MEMStatus
    (cl:cons ':time (time msg))
    (cl:cons ':memories (memories msg))
    (cl:cons ':totalM (totalM msg))
    (cl:cons ':usedM (usedM msg))
    (cl:cons ':freeM (freeM msg))
))
