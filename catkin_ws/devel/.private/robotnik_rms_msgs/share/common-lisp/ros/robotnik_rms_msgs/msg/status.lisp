; Auto-generated. Do not edit!


(cl:in-package robotnik_rms_msgs-msg)


;//! \htmlinclude status.msg.html

(cl:defclass <status> (roslisp-msg-protocol:ros-message)
  ((current_status
    :reader current_status
    :initarg :current_status
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (mission_queue
    :reader mission_queue
    :initarg :mission_queue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass status (<status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-msg:<status> is deprecated: use robotnik_rms_msgs-msg:status instead.")))

(cl:ensure-generic-function 'current_status-val :lambda-list '(m))
(cl:defmethod current_status-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:current_status-val is deprecated.  Use robotnik_rms_msgs-msg:current_status instead.")
  (current_status m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:description-val is deprecated.  Use robotnik_rms_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:message-val is deprecated.  Use robotnik_rms_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'mission_queue-val :lambda-list '(m))
(cl:defmethod mission_queue-val ((m <status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:mission_queue-val is deprecated.  Use robotnik_rms_msgs-msg:mission_queue instead.")
  (mission_queue m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<status>)))
    "Constants for message type '<status>"
  '((:CURRENT_STATUS_ERROR . -1)
    (:CURRENT_STATUS_PREIDLE . 0)
    (:CURRENT_STATUS_IDLE . 1)
    (:CURRENT_STATUS_CHARGING_MISSION . 2)
    (:CURRENT_STATUS_EXECUTING_MISSION . 3)
    (:CURRENT_STATUS_PAUSE_MISSION . 4)
    (:CURRENT_STATUS_CANCEL_MISSION . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'status)))
    "Constants for message type 'status"
  '((:CURRENT_STATUS_ERROR . -1)
    (:CURRENT_STATUS_PREIDLE . 0)
    (:CURRENT_STATUS_IDLE . 1)
    (:CURRENT_STATUS_CHARGING_MISSION . 2)
    (:CURRENT_STATUS_EXECUTING_MISSION . 3)
    (:CURRENT_STATUS_PAUSE_MISSION . 4)
    (:CURRENT_STATUS_CANCEL_MISSION . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <status>) ostream)
  "Serializes a message object of type '<status>"
  (cl:let* ((signed (cl:slot-value msg 'current_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'mission_queue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <status>) istream)
  "Deserializes a message object of type '<status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_queue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_queue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<status>)))
  "Returns string type for a message object of type '<status>"
  "robotnik_rms_msgs/status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'status)))
  "Returns string type for a message object of type 'status"
  "robotnik_rms_msgs/status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<status>)))
  "Returns md5sum for a message object of type '<status>"
  "5509b20dd1c7bf7cdd887ab3ce4eec0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'status)))
  "Returns md5sum for a message object of type 'status"
  "5509b20dd1c7bf7cdd887ab3ce4eec0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<status>)))
  "Returns full string definition for message of type '<status>"
  (cl:format cl:nil "int32 CURRENT_STATUS_ERROR = -1~%int32 CURRENT_STATUS_PREIDLE = 0~%int32 CURRENT_STATUS_IDLE = 1~%int32 CURRENT_STATUS_CHARGING_MISSION = 2~%int32 CURRENT_STATUS_EXECUTING_MISSION = 3~%int32 CURRENT_STATUS_PAUSE_MISSION=4~%int32 CURRENT_STATUS_CANCEL_MISSION=5~%~%int32 current_status~%string description~%string message~%string[] mission_queue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'status)))
  "Returns full string definition for message of type 'status"
  (cl:format cl:nil "int32 CURRENT_STATUS_ERROR = -1~%int32 CURRENT_STATUS_PREIDLE = 0~%int32 CURRENT_STATUS_IDLE = 1~%int32 CURRENT_STATUS_CHARGING_MISSION = 2~%int32 CURRENT_STATUS_EXECUTING_MISSION = 3~%int32 CURRENT_STATUS_PAUSE_MISSION=4~%int32 CURRENT_STATUS_CANCEL_MISSION=5~%~%int32 current_status~%string description~%string message~%string[] mission_queue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <status>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <status>))
  "Converts a ROS message object to a list"
  (cl:list 'status
    (cl:cons ':current_status (current_status msg))
    (cl:cons ':description (description msg))
    (cl:cons ':message (message msg))
    (cl:cons ':mission_queue (mission_queue msg))
))
