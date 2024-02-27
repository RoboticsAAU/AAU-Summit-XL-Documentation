; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SwitchModule-request.msg.html

(cl:defclass <SwitchModule-request> (roslisp-msg-protocol:ros-message)
  ((module_name
    :reader module_name
    :initarg :module_name
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchModule-request (<SwitchModule-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchModule-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchModule-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SwitchModule-request> is deprecated: use robot_local_control_msgs-srv:SwitchModule-request instead.")))

(cl:ensure-generic-function 'module_name-val :lambda-list '(m))
(cl:defmethod module_name-val ((m <SwitchModule-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:module_name-val is deprecated.  Use robot_local_control_msgs-srv:module_name instead.")
  (module_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchModule-request>) ostream)
  "Serializes a message object of type '<SwitchModule-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchModule-request>) istream)
  "Deserializes a message object of type '<SwitchModule-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchModule-request>)))
  "Returns string type for a service object of type '<SwitchModule-request>"
  "robot_local_control_msgs/SwitchModuleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchModule-request)))
  "Returns string type for a service object of type 'SwitchModule-request"
  "robot_local_control_msgs/SwitchModuleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchModule-request>)))
  "Returns md5sum for a message object of type '<SwitchModule-request>"
  "eac5a11ec4d6f9968a2dfda66990ae9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchModule-request)))
  "Returns md5sum for a message object of type 'SwitchModule-request"
  "eac5a11ec4d6f9968a2dfda66990ae9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchModule-request>)))
  "Returns full string definition for message of type '<SwitchModule-request>"
  (cl:format cl:nil "string module_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchModule-request)))
  "Returns full string definition for message of type 'SwitchModule-request"
  (cl:format cl:nil "string module_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchModule-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'module_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchModule-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchModule-request
    (cl:cons ':module_name (module_name msg))
))
;//! \htmlinclude SwitchModule-response.msg.html

(cl:defclass <SwitchModule-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SwitchModule-response (<SwitchModule-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchModule-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchModule-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SwitchModule-response> is deprecated: use robot_local_control_msgs-srv:SwitchModule-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SwitchModule-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SwitchModule-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchModule-response>) ostream)
  "Serializes a message object of type '<SwitchModule-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchModule-response>) istream)
  "Deserializes a message object of type '<SwitchModule-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchModule-response>)))
  "Returns string type for a service object of type '<SwitchModule-response>"
  "robot_local_control_msgs/SwitchModuleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchModule-response)))
  "Returns string type for a service object of type 'SwitchModule-response"
  "robot_local_control_msgs/SwitchModuleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchModule-response>)))
  "Returns md5sum for a message object of type '<SwitchModule-response>"
  "eac5a11ec4d6f9968a2dfda66990ae9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchModule-response)))
  "Returns md5sum for a message object of type 'SwitchModule-response"
  "eac5a11ec4d6f9968a2dfda66990ae9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchModule-response>)))
  "Returns full string definition for message of type '<SwitchModule-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchModule-response)))
  "Returns full string definition for message of type 'SwitchModule-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchModule-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchModule-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchModule-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchModule)))
  'SwitchModule-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchModule)))
  'SwitchModule-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchModule)))
  "Returns string type for a service object of type '<SwitchModule>"
  "robot_local_control_msgs/SwitchModule")