; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude CommandLog.msg.html

(cl:defclass <CommandLog> (roslisp-msg-protocol:ros-message)
  ((node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (process_name
    :reader process_name
    :initarg :process_name
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (error
    :reader error
    :initarg :error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CommandLog (<CommandLog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandLog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandLog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<CommandLog> is deprecated: use robot_simple_command_manager_msgs-msg:CommandLog instead.")))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <CommandLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:node_name-val is deprecated.  Use robot_simple_command_manager_msgs-msg:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'process_name-val :lambda-list '(m))
(cl:defmethod process_name-val ((m <CommandLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:process_name-val is deprecated.  Use robot_simple_command_manager_msgs-msg:process_name instead.")
  (process_name m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CommandLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:command-val is deprecated.  Use robot_simple_command_manager_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CommandLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:status-val is deprecated.  Use robot_simple_command_manager_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommandLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:result-val is deprecated.  Use robot_simple_command_manager_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <CommandLog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:error-val is deprecated.  Use robot_simple_command_manager_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandLog>) ostream)
  "Serializes a message object of type '<CommandLog>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'process_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'process_name))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandLog>) istream)
  "Deserializes a message object of type '<CommandLog>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'process_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandLog>)))
  "Returns string type for a message object of type '<CommandLog>"
  "robot_simple_command_manager_msgs/CommandLog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandLog)))
  "Returns string type for a message object of type 'CommandLog"
  "robot_simple_command_manager_msgs/CommandLog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandLog>)))
  "Returns md5sum for a message object of type '<CommandLog>"
  "27048deb83cbc31fe2ad0d1dfb0d30bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandLog)))
  "Returns md5sum for a message object of type 'CommandLog"
  "27048deb83cbc31fe2ad0d1dfb0d30bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandLog>)))
  "Returns full string definition for message of type '<CommandLog>"
  (cl:format cl:nil "string node_name~%string process_name~%string command~%string status~%string result~%bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandLog)))
  "Returns full string definition for message of type 'CommandLog"
  (cl:format cl:nil "string node_name~%string process_name~%string command~%string status~%string result~%bool error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandLog>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node_name))
     4 (cl:length (cl:slot-value msg 'process_name))
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'result))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandLog>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandLog
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':process_name (process_name msg))
    (cl:cons ':command (command msg))
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
    (cl:cons ':error (error msg))
))
