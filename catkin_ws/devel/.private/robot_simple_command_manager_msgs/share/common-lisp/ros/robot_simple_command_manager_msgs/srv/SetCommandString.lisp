; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude SetCommandString-request.msg.html

(cl:defclass <SetCommandString-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass SetCommandString-request (<SetCommandString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCommandString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCommandString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<SetCommandString-request> is deprecated: use robot_simple_command_manager_msgs-srv:SetCommandString-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SetCommandString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:command-val is deprecated.  Use robot_simple_command_manager_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCommandString-request>) ostream)
  "Serializes a message object of type '<SetCommandString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCommandString-request>) istream)
  "Deserializes a message object of type '<SetCommandString-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCommandString-request>)))
  "Returns string type for a service object of type '<SetCommandString-request>"
  "robot_simple_command_manager_msgs/SetCommandStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCommandString-request)))
  "Returns string type for a service object of type 'SetCommandString-request"
  "robot_simple_command_manager_msgs/SetCommandStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCommandString-request>)))
  "Returns md5sum for a message object of type '<SetCommandString-request>"
  "a562ec88e0fa4ca847fa743945bf6490")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCommandString-request)))
  "Returns md5sum for a message object of type 'SetCommandString-request"
  "a562ec88e0fa4ca847fa743945bf6490")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCommandString-request>)))
  "Returns full string definition for message of type '<SetCommandString-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCommandString-request)))
  "Returns full string definition for message of type 'SetCommandString-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCommandString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCommandString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCommandString-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SetCommandString-response.msg.html

(cl:defclass <SetCommandString-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type robot_simple_command_manager_msgs-msg:ReturnMessage
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:ReturnMessage)))
)

(cl:defclass SetCommandString-response (<SetCommandString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCommandString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCommandString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<SetCommandString-response> is deprecated: use robot_simple_command_manager_msgs-srv:SetCommandString-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetCommandString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:ret-val is deprecated.  Use robot_simple_command_manager_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCommandString-response>) ostream)
  "Serializes a message object of type '<SetCommandString-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ret) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCommandString-response>) istream)
  "Deserializes a message object of type '<SetCommandString-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ret) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCommandString-response>)))
  "Returns string type for a service object of type '<SetCommandString-response>"
  "robot_simple_command_manager_msgs/SetCommandStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCommandString-response)))
  "Returns string type for a service object of type 'SetCommandString-response"
  "robot_simple_command_manager_msgs/SetCommandStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCommandString-response>)))
  "Returns md5sum for a message object of type '<SetCommandString-response>"
  "a562ec88e0fa4ca847fa743945bf6490")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCommandString-response)))
  "Returns md5sum for a message object of type 'SetCommandString-response"
  "a562ec88e0fa4ca847fa743945bf6490")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCommandString-response>)))
  "Returns full string definition for message of type '<SetCommandString-response>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/ReturnMessage ret~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCommandString-response)))
  "Returns full string definition for message of type 'SetCommandString-response"
  (cl:format cl:nil "robot_simple_command_manager_msgs/ReturnMessage ret~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCommandString-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCommandString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCommandString-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCommandString)))
  'SetCommandString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCommandString)))
  'SetCommandString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCommandString)))
  "Returns string type for a service object of type '<SetCommandString>"
  "robot_simple_command_manager_msgs/SetCommandString")