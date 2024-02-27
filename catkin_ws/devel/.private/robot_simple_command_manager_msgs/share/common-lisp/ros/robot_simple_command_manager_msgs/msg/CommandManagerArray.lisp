; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude CommandManagerArray.msg.html

(cl:defclass <CommandManagerArray> (roslisp-msg-protocol:ros-message)
  ((commands
    :reader commands
    :initarg :commands
    :type (cl:vector robot_simple_command_manager_msgs-msg:CommandManager)
   :initform (cl:make-array 0 :element-type 'robot_simple_command_manager_msgs-msg:CommandManager :initial-element (cl:make-instance 'robot_simple_command_manager_msgs-msg:CommandManager))))
)

(cl:defclass CommandManagerArray (<CommandManagerArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandManagerArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandManagerArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<CommandManagerArray> is deprecated: use robot_simple_command_manager_msgs-msg:CommandManagerArray instead.")))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <CommandManagerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:commands-val is deprecated.  Use robot_simple_command_manager_msgs-msg:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandManagerArray>) ostream)
  "Serializes a message object of type '<CommandManagerArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandManagerArray>) istream)
  "Deserializes a message object of type '<CommandManagerArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_simple_command_manager_msgs-msg:CommandManager))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandManagerArray>)))
  "Returns string type for a message object of type '<CommandManagerArray>"
  "robot_simple_command_manager_msgs/CommandManagerArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandManagerArray)))
  "Returns string type for a message object of type 'CommandManagerArray"
  "robot_simple_command_manager_msgs/CommandManagerArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandManagerArray>)))
  "Returns md5sum for a message object of type '<CommandManagerArray>"
  "0921f1afc8f4127f55f1c0b6e23fe8bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandManagerArray)))
  "Returns md5sum for a message object of type 'CommandManagerArray"
  "0921f1afc8f4127f55f1c0b6e23fe8bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandManagerArray>)))
  "Returns full string definition for message of type '<CommandManagerArray>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/CommandManager[] commands~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManager~%string id~%string command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandManagerArray)))
  "Returns full string definition for message of type 'CommandManagerArray"
  (cl:format cl:nil "robot_simple_command_manager_msgs/CommandManager[] commands~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManager~%string id~%string command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandManagerArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandManagerArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandManagerArray
    (cl:cons ':commands (commands msg))
))
