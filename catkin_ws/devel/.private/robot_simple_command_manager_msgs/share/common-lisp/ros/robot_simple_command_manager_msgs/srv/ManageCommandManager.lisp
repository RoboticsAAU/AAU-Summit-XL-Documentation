; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude ManageCommandManager-request.msg.html

(cl:defclass <ManageCommandManager-request> (roslisp-msg-protocol:ros-message)
  ((Command
    :reader Command
    :initarg :Command
    :type robot_simple_command_manager_msgs-msg:CommandManager
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:CommandManager)))
)

(cl:defclass ManageCommandManager-request (<ManageCommandManager-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageCommandManager-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageCommandManager-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<ManageCommandManager-request> is deprecated: use robot_simple_command_manager_msgs-srv:ManageCommandManager-request instead.")))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <ManageCommandManager-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:Command-val is deprecated.  Use robot_simple_command_manager_msgs-srv:Command instead.")
  (Command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageCommandManager-request>) ostream)
  "Serializes a message object of type '<ManageCommandManager-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageCommandManager-request>) istream)
  "Deserializes a message object of type '<ManageCommandManager-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageCommandManager-request>)))
  "Returns string type for a service object of type '<ManageCommandManager-request>"
  "robot_simple_command_manager_msgs/ManageCommandManagerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageCommandManager-request)))
  "Returns string type for a service object of type 'ManageCommandManager-request"
  "robot_simple_command_manager_msgs/ManageCommandManagerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageCommandManager-request>)))
  "Returns md5sum for a message object of type '<ManageCommandManager-request>"
  "71fe46a5c46f88e680dc57f023e7822c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageCommandManager-request)))
  "Returns md5sum for a message object of type 'ManageCommandManager-request"
  "71fe46a5c46f88e680dc57f023e7822c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageCommandManager-request>)))
  "Returns full string definition for message of type '<ManageCommandManager-request>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/CommandManager Command~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManager~%string id~%string command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageCommandManager-request)))
  "Returns full string definition for message of type 'ManageCommandManager-request"
  (cl:format cl:nil "robot_simple_command_manager_msgs/CommandManager Command~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManager~%string id~%string command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageCommandManager-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageCommandManager-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageCommandManager-request
    (cl:cons ':Command (Command msg))
))
;//! \htmlinclude ManageCommandManager-response.msg.html

(cl:defclass <ManageCommandManager-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type robot_simple_command_manager_msgs-msg:ReturnMessage
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:ReturnMessage)))
)

(cl:defclass ManageCommandManager-response (<ManageCommandManager-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManageCommandManager-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManageCommandManager-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<ManageCommandManager-response> is deprecated: use robot_simple_command_manager_msgs-srv:ManageCommandManager-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <ManageCommandManager-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:ret-val is deprecated.  Use robot_simple_command_manager_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManageCommandManager-response>) ostream)
  "Serializes a message object of type '<ManageCommandManager-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ret) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManageCommandManager-response>) istream)
  "Deserializes a message object of type '<ManageCommandManager-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ret) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManageCommandManager-response>)))
  "Returns string type for a service object of type '<ManageCommandManager-response>"
  "robot_simple_command_manager_msgs/ManageCommandManagerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageCommandManager-response)))
  "Returns string type for a service object of type 'ManageCommandManager-response"
  "robot_simple_command_manager_msgs/ManageCommandManagerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManageCommandManager-response>)))
  "Returns md5sum for a message object of type '<ManageCommandManager-response>"
  "71fe46a5c46f88e680dc57f023e7822c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManageCommandManager-response)))
  "Returns md5sum for a message object of type 'ManageCommandManager-response"
  "71fe46a5c46f88e680dc57f023e7822c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManageCommandManager-response>)))
  "Returns full string definition for message of type '<ManageCommandManager-response>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManageCommandManager-response)))
  "Returns full string definition for message of type 'ManageCommandManager-response"
  (cl:format cl:nil "robot_simple_command_manager_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManageCommandManager-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManageCommandManager-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManageCommandManager-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManageCommandManager)))
  'ManageCommandManager-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManageCommandManager)))
  'ManageCommandManager-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManageCommandManager)))
  "Returns string type for a service object of type '<ManageCommandManager>"
  "robot_simple_command_manager_msgs/ManageCommandManager")