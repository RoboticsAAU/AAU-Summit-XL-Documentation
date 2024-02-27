; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MissionStatus.msg.html

(cl:defclass <MissionStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass MissionStatus (<MissionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MissionStatus> is deprecated: use robot_local_control_msgs-msg:MissionStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MissionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:id-val is deprecated.  Use robot_local_control_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <MissionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:description-val is deprecated.  Use robot_local_control_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MissionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:state-val is deprecated.  Use robot_local_control_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionStatus>)))
    "Constants for message type '<MissionStatus>"
  '((:UNKNOWN . unknown)
    (:RUNNING . running)
    (:PAUSED . paused)
    (:FINISHED . finished)
    (:CANCELLED . cancelled)
    (:ERROR . error)
    (:QUEUED . queued))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionStatus)))
    "Constants for message type 'MissionStatus"
  '((:UNKNOWN . unknown)
    (:RUNNING . running)
    (:PAUSED . paused)
    (:FINISHED . finished)
    (:CANCELLED . cancelled)
    (:ERROR . error)
    (:QUEUED . queued))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatus>) ostream)
  "Serializes a message object of type '<MissionStatus>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatus>) istream)
  "Deserializes a message object of type '<MissionStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatus>)))
  "Returns string type for a message object of type '<MissionStatus>"
  "robot_local_control_msgs/MissionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatus)))
  "Returns string type for a message object of type 'MissionStatus"
  "robot_local_control_msgs/MissionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatus>)))
  "Returns md5sum for a message object of type '<MissionStatus>"
  "13930350bc85ee5ad0913d85d697f1b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatus)))
  "Returns md5sum for a message object of type 'MissionStatus"
  "13930350bc85ee5ad0913d85d697f1b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatus>)))
  "Returns full string definition for message of type '<MissionStatus>"
  (cl:format cl:nil "# MISSION STATES~%# States inside a mission~%string UNKNOWN=unknown~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%string CANCELLED=cancelled~%string ERROR=error~%string QUEUED=queued~%# running: mission is running~%# paused: mission is paused~%# finished: mission finished~%# canceled: mission has been canceled~%# error: an error occurred during the execution of the mission~%# queued: the mission is queued~%~%~%#~%int32 id~%~%# ID of the mision based on string format: GOTO [4,5,6]~%string description~%~%# running, paused, finished,...~%string state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatus)))
  "Returns full string definition for message of type 'MissionStatus"
  (cl:format cl:nil "# MISSION STATES~%# States inside a mission~%string UNKNOWN=unknown~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%string CANCELLED=cancelled~%string ERROR=error~%string QUEUED=queued~%# running: mission is running~%# paused: mission is paused~%# finished: mission finished~%# canceled: mission has been canceled~%# error: an error occurred during the execution of the mission~%# queued: the mission is queued~%~%~%#~%int32 id~%~%# ID of the mision based on string format: GOTO [4,5,6]~%string description~%~%# running, paused, finished,...~%string state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatus>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatus
    (cl:cons ':id (id msg))
    (cl:cons ':description (description msg))
    (cl:cons ':state (state msg))
))
