; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude MissionPetition-request.msg.html

(cl:defclass <MissionPetition-request> (roslisp-msg-protocol:ros-message)
  ((mission
    :reader mission
    :initarg :mission
    :type robot_local_control_msgs-msg:MissionStatus
    :initform (cl:make-instance 'robot_local_control_msgs-msg:MissionStatus))
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass MissionPetition-request (<MissionPetition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionPetition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionPetition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<MissionPetition-request> is deprecated: use robot_local_control_msgs-srv:MissionPetition-request instead.")))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <MissionPetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:mission-val is deprecated.  Use robot_local_control_msgs-srv:mission instead.")
  (mission m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <MissionPetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:action-val is deprecated.  Use robot_local_control_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionPetition-request>)))
    "Constants for message type '<MissionPetition-request>"
  '((:START . start)
    (:STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionPetition-request)))
    "Constants for message type 'MissionPetition-request"
  '((:START . start)
    (:STOP . stop))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionPetition-request>) ostream)
  "Serializes a message object of type '<MissionPetition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mission) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionPetition-request>) istream)
  "Deserializes a message object of type '<MissionPetition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mission) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionPetition-request>)))
  "Returns string type for a service object of type '<MissionPetition-request>"
  "robot_local_control_msgs/MissionPetitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPetition-request)))
  "Returns string type for a service object of type 'MissionPetition-request"
  "robot_local_control_msgs/MissionPetitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionPetition-request>)))
  "Returns md5sum for a message object of type '<MissionPetition-request>"
  "d23b48ec07b484e69921f98c567e661e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionPetition-request)))
  "Returns md5sum for a message object of type 'MissionPetition-request"
  "d23b48ec07b484e69921f98c567e661e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionPetition-request>)))
  "Returns full string definition for message of type '<MissionPetition-request>"
  (cl:format cl:nil "# Actions to tell mission component what to do~%# START, starts a mission~%# STOP, stops a mission~%~%string START=start~%string STOP=stop~%~%MissionStatus mission~%string action~%~%================================================================================~%MSG: robot_local_control_msgs/MissionStatus~%# MISSION STATES~%# States inside a mission~%string UNKNOWN=unknown~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%string CANCELLED=cancelled~%string ERROR=error~%string QUEUED=queued~%# running: mission is running~%# paused: mission is paused~%# finished: mission finished~%# canceled: mission has been canceled~%# error: an error occurred during the execution of the mission~%# queued: the mission is queued~%~%~%#~%int32 id~%~%# ID of the mision based on string format: GOTO [4,5,6]~%string description~%~%# running, paused, finished,...~%string state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionPetition-request)))
  "Returns full string definition for message of type 'MissionPetition-request"
  (cl:format cl:nil "# Actions to tell mission component what to do~%# START, starts a mission~%# STOP, stops a mission~%~%string START=start~%string STOP=stop~%~%MissionStatus mission~%string action~%~%================================================================================~%MSG: robot_local_control_msgs/MissionStatus~%# MISSION STATES~%# States inside a mission~%string UNKNOWN=unknown~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%string CANCELLED=cancelled~%string ERROR=error~%string QUEUED=queued~%# running: mission is running~%# paused: mission is paused~%# finished: mission finished~%# canceled: mission has been canceled~%# error: an error occurred during the execution of the mission~%# queued: the mission is queued~%~%~%#~%int32 id~%~%# ID of the mision based on string format: GOTO [4,5,6]~%string description~%~%# running, paused, finished,...~%string state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionPetition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mission))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionPetition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionPetition-request
    (cl:cons ':mission (mission msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude MissionPetition-response.msg.html

(cl:defclass <MissionPetition-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MissionPetition-response (<MissionPetition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionPetition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionPetition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<MissionPetition-response> is deprecated: use robot_local_control_msgs-srv:MissionPetition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MissionPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MissionPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionPetition-response>) ostream)
  "Serializes a message object of type '<MissionPetition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionPetition-response>) istream)
  "Deserializes a message object of type '<MissionPetition-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionPetition-response>)))
  "Returns string type for a service object of type '<MissionPetition-response>"
  "robot_local_control_msgs/MissionPetitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPetition-response)))
  "Returns string type for a service object of type 'MissionPetition-response"
  "robot_local_control_msgs/MissionPetitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionPetition-response>)))
  "Returns md5sum for a message object of type '<MissionPetition-response>"
  "d23b48ec07b484e69921f98c567e661e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionPetition-response)))
  "Returns md5sum for a message object of type 'MissionPetition-response"
  "d23b48ec07b484e69921f98c567e661e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionPetition-response>)))
  "Returns full string definition for message of type '<MissionPetition-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionPetition-response)))
  "Returns full string definition for message of type 'MissionPetition-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionPetition-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionPetition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionPetition-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionPetition)))
  'MissionPetition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionPetition)))
  'MissionPetition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPetition)))
  "Returns string type for a service object of type '<MissionPetition>"
  "robot_local_control_msgs/MissionPetition")