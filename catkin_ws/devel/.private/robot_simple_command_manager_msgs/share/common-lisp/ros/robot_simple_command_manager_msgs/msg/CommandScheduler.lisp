; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude CommandScheduler.msg.html

(cl:defclass <CommandScheduler> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (event
    :reader event
    :initarg :event
    :type robot_simple_command_manager_msgs-msg:EventScheduler
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:EventScheduler)))
)

(cl:defclass CommandScheduler (<CommandScheduler>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandScheduler>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandScheduler)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<CommandScheduler> is deprecated: use robot_simple_command_manager_msgs-msg:CommandScheduler instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CommandScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:id-val is deprecated.  Use robot_simple_command_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <CommandScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:event-val is deprecated.  Use robot_simple_command_manager_msgs-msg:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandScheduler>) ostream)
  "Serializes a message object of type '<CommandScheduler>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandScheduler>) istream)
  "Deserializes a message object of type '<CommandScheduler>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandScheduler>)))
  "Returns string type for a message object of type '<CommandScheduler>"
  "robot_simple_command_manager_msgs/CommandScheduler")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandScheduler)))
  "Returns string type for a message object of type 'CommandScheduler"
  "robot_simple_command_manager_msgs/CommandScheduler")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandScheduler>)))
  "Returns md5sum for a message object of type '<CommandScheduler>"
  "fa29fc47a3f6a75713a143d1c813a3e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandScheduler)))
  "Returns md5sum for a message object of type 'CommandScheduler"
  "fa29fc47a3f6a75713a143d1c813a3e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandScheduler>)))
  "Returns full string definition for message of type '<CommandScheduler>"
  (cl:format cl:nil "string id~%robot_simple_command_manager_msgs/EventScheduler event~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandScheduler)))
  "Returns full string definition for message of type 'CommandScheduler"
  (cl:format cl:nil "string id~%robot_simple_command_manager_msgs/EventScheduler event~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandScheduler>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandScheduler>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandScheduler
    (cl:cons ':id (id msg))
    (cl:cons ':event (event msg))
))
