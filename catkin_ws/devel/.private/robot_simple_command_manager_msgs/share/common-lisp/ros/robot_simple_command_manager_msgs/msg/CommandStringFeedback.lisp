; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude CommandStringFeedback.msg.html

(cl:defclass <CommandStringFeedback> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass CommandStringFeedback (<CommandStringFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandStringFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandStringFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<CommandStringFeedback> is deprecated: use robot_simple_command_manager_msgs-msg:CommandStringFeedback instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CommandStringFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:command-val is deprecated.  Use robot_simple_command_manager_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CommandStringFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:status-val is deprecated.  Use robot_simple_command_manager_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandStringFeedback>) ostream)
  "Serializes a message object of type '<CommandStringFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandStringFeedback>) istream)
  "Deserializes a message object of type '<CommandStringFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandStringFeedback>)))
  "Returns string type for a message object of type '<CommandStringFeedback>"
  "robot_simple_command_manager_msgs/CommandStringFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandStringFeedback)))
  "Returns string type for a message object of type 'CommandStringFeedback"
  "robot_simple_command_manager_msgs/CommandStringFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandStringFeedback>)))
  "Returns md5sum for a message object of type '<CommandStringFeedback>"
  "7236684bf0009e315d87048d1a67d74c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandStringFeedback)))
  "Returns md5sum for a message object of type 'CommandStringFeedback"
  "7236684bf0009e315d87048d1a67d74c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandStringFeedback>)))
  "Returns full string definition for message of type '<CommandStringFeedback>"
  (cl:format cl:nil "string command~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandStringFeedback)))
  "Returns full string definition for message of type 'CommandStringFeedback"
  (cl:format cl:nil "string command~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandStringFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandStringFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandStringFeedback
    (cl:cons ':command (command msg))
    (cl:cons ':status (status msg))
))
