; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude CommandLogArray.msg.html

(cl:defclass <CommandLogArray> (roslisp-msg-protocol:ros-message)
  ((log_commands
    :reader log_commands
    :initarg :log_commands
    :type (cl:vector robot_simple_command_manager_msgs-msg:CommandLog)
   :initform (cl:make-array 0 :element-type 'robot_simple_command_manager_msgs-msg:CommandLog :initial-element (cl:make-instance 'robot_simple_command_manager_msgs-msg:CommandLog))))
)

(cl:defclass CommandLogArray (<CommandLogArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandLogArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandLogArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<CommandLogArray> is deprecated: use robot_simple_command_manager_msgs-msg:CommandLogArray instead.")))

(cl:ensure-generic-function 'log_commands-val :lambda-list '(m))
(cl:defmethod log_commands-val ((m <CommandLogArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:log_commands-val is deprecated.  Use robot_simple_command_manager_msgs-msg:log_commands instead.")
  (log_commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandLogArray>) ostream)
  "Serializes a message object of type '<CommandLogArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'log_commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'log_commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandLogArray>) istream)
  "Deserializes a message object of type '<CommandLogArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'log_commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'log_commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_simple_command_manager_msgs-msg:CommandLog))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandLogArray>)))
  "Returns string type for a message object of type '<CommandLogArray>"
  "robot_simple_command_manager_msgs/CommandLogArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandLogArray)))
  "Returns string type for a message object of type 'CommandLogArray"
  "robot_simple_command_manager_msgs/CommandLogArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandLogArray>)))
  "Returns md5sum for a message object of type '<CommandLogArray>"
  "5753f43e634712e7e70f05cdca4c3ba4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandLogArray)))
  "Returns md5sum for a message object of type 'CommandLogArray"
  "5753f43e634712e7e70f05cdca4c3ba4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandLogArray>)))
  "Returns full string definition for message of type '<CommandLogArray>"
  (cl:format cl:nil "CommandLog[] log_commands~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandLog~%string node_name~%string process_name~%string command~%string status~%string result~%bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandLogArray)))
  "Returns full string definition for message of type 'CommandLogArray"
  (cl:format cl:nil "CommandLog[] log_commands~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandLog~%string node_name~%string process_name~%string command~%string status~%string result~%bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandLogArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'log_commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandLogArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandLogArray
    (cl:cons ':log_commands (log_commands msg))
))
