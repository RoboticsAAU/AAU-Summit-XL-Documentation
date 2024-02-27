; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude MissionCommandPetition-request.msg.html

(cl:defclass <MissionCommandPetition-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type robot_local_control_msgs-msg:MissionCommand
    :initform (cl:make-instance 'robot_local_control_msgs-msg:MissionCommand)))
)

(cl:defclass MissionCommandPetition-request (<MissionCommandPetition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCommandPetition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCommandPetition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<MissionCommandPetition-request> is deprecated: use robot_local_control_msgs-srv:MissionCommandPetition-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <MissionCommandPetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:command-val is deprecated.  Use robot_local_control_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCommandPetition-request>) ostream)
  "Serializes a message object of type '<MissionCommandPetition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCommandPetition-request>) istream)
  "Deserializes a message object of type '<MissionCommandPetition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCommandPetition-request>)))
  "Returns string type for a service object of type '<MissionCommandPetition-request>"
  "robot_local_control_msgs/MissionCommandPetitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCommandPetition-request)))
  "Returns string type for a service object of type 'MissionCommandPetition-request"
  "robot_local_control_msgs/MissionCommandPetitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCommandPetition-request>)))
  "Returns md5sum for a message object of type '<MissionCommandPetition-request>"
  "09baf2a641d8c856ea25723a419f07b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCommandPetition-request)))
  "Returns md5sum for a message object of type 'MissionCommandPetition-request"
  "09baf2a641d8c856ea25723a419f07b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCommandPetition-request>)))
  "Returns full string definition for message of type '<MissionCommandPetition-request>"
  (cl:format cl:nil "MissionCommand command~%~%================================================================================~%MSG: robot_local_control_msgs/MissionCommand~%# XXX: DO NOT USE THIS MESSAGE~%# available commands~%string GOTO_POSE=goto_pose~%string GOTO_TAG=goto_tag~%string GOTO_NODE=goto_node~%~%# id set from the subsystem calling the service~%int32 id~%# command from the available commands~%string command~%~%MissionParamInt[] int_params~%MissionParamFloat[] float_params~%MissionParamString[] string_params~%MissionParamBool[] bool_params~%~%~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamInt~%# param name~%string name~%# param value~%int32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamFloat~%# param name~%string name~%# param value~%float32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamString~%# param name~%string name~%# param value~%string value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamBool~%# param name~%string name~%# param value~%bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCommandPetition-request)))
  "Returns full string definition for message of type 'MissionCommandPetition-request"
  (cl:format cl:nil "MissionCommand command~%~%================================================================================~%MSG: robot_local_control_msgs/MissionCommand~%# XXX: DO NOT USE THIS MESSAGE~%# available commands~%string GOTO_POSE=goto_pose~%string GOTO_TAG=goto_tag~%string GOTO_NODE=goto_node~%~%# id set from the subsystem calling the service~%int32 id~%# command from the available commands~%string command~%~%MissionParamInt[] int_params~%MissionParamFloat[] float_params~%MissionParamString[] string_params~%MissionParamBool[] bool_params~%~%~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamInt~%# param name~%string name~%# param value~%int32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamFloat~%# param name~%string name~%# param value~%float32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamString~%# param name~%string name~%# param value~%string value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamBool~%# param name~%string name~%# param value~%bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCommandPetition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCommandPetition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCommandPetition-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude MissionCommandPetition-response.msg.html

(cl:defclass <MissionCommandPetition-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MissionCommandPetition-response (<MissionCommandPetition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCommandPetition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCommandPetition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<MissionCommandPetition-response> is deprecated: use robot_local_control_msgs-srv:MissionCommandPetition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MissionCommandPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MissionCommandPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCommandPetition-response>) ostream)
  "Serializes a message object of type '<MissionCommandPetition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCommandPetition-response>) istream)
  "Deserializes a message object of type '<MissionCommandPetition-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCommandPetition-response>)))
  "Returns string type for a service object of type '<MissionCommandPetition-response>"
  "robot_local_control_msgs/MissionCommandPetitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCommandPetition-response)))
  "Returns string type for a service object of type 'MissionCommandPetition-response"
  "robot_local_control_msgs/MissionCommandPetitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCommandPetition-response>)))
  "Returns md5sum for a message object of type '<MissionCommandPetition-response>"
  "09baf2a641d8c856ea25723a419f07b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCommandPetition-response)))
  "Returns md5sum for a message object of type 'MissionCommandPetition-response"
  "09baf2a641d8c856ea25723a419f07b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCommandPetition-response>)))
  "Returns full string definition for message of type '<MissionCommandPetition-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCommandPetition-response)))
  "Returns full string definition for message of type 'MissionCommandPetition-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCommandPetition-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCommandPetition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCommandPetition-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionCommandPetition)))
  'MissionCommandPetition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionCommandPetition)))
  'MissionCommandPetition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCommandPetition)))
  "Returns string type for a service object of type '<MissionCommandPetition>"
  "robot_local_control_msgs/MissionCommandPetition")