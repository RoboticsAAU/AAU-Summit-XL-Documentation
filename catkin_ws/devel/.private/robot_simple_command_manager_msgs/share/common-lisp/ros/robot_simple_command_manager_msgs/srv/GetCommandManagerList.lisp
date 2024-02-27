; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude GetCommandManagerList-request.msg.html

(cl:defclass <GetCommandManagerList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCommandManagerList-request (<GetCommandManagerList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCommandManagerList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCommandManagerList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetCommandManagerList-request> is deprecated: use robot_simple_command_manager_msgs-srv:GetCommandManagerList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCommandManagerList-request>) ostream)
  "Serializes a message object of type '<GetCommandManagerList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCommandManagerList-request>) istream)
  "Deserializes a message object of type '<GetCommandManagerList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCommandManagerList-request>)))
  "Returns string type for a service object of type '<GetCommandManagerList-request>"
  "robot_simple_command_manager_msgs/GetCommandManagerListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCommandManagerList-request)))
  "Returns string type for a service object of type 'GetCommandManagerList-request"
  "robot_simple_command_manager_msgs/GetCommandManagerListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCommandManagerList-request>)))
  "Returns md5sum for a message object of type '<GetCommandManagerList-request>"
  "efa7801a29cc81feaf45e89c194507dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCommandManagerList-request)))
  "Returns md5sum for a message object of type 'GetCommandManagerList-request"
  "efa7801a29cc81feaf45e89c194507dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCommandManagerList-request>)))
  "Returns full string definition for message of type '<GetCommandManagerList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCommandManagerList-request)))
  "Returns full string definition for message of type 'GetCommandManagerList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCommandManagerList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCommandManagerList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCommandManagerList-request
))
;//! \htmlinclude GetCommandManagerList-response.msg.html

(cl:defclass <GetCommandManagerList-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type robot_simple_command_manager_msgs-msg:CommandManagerArray
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:CommandManagerArray))
   (success
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

(cl:defclass GetCommandManagerList-response (<GetCommandManagerList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCommandManagerList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCommandManagerList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetCommandManagerList-response> is deprecated: use robot_simple_command_manager_msgs-srv:GetCommandManagerList-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <GetCommandManagerList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:list-val is deprecated.  Use robot_simple_command_manager_msgs-srv:list instead.")
  (list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCommandManagerList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:success-val is deprecated.  Use robot_simple_command_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCommandManagerList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:message-val is deprecated.  Use robot_simple_command_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCommandManagerList-response>) ostream)
  "Serializes a message object of type '<GetCommandManagerList-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'list) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCommandManagerList-response>) istream)
  "Deserializes a message object of type '<GetCommandManagerList-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'list) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCommandManagerList-response>)))
  "Returns string type for a service object of type '<GetCommandManagerList-response>"
  "robot_simple_command_manager_msgs/GetCommandManagerListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCommandManagerList-response)))
  "Returns string type for a service object of type 'GetCommandManagerList-response"
  "robot_simple_command_manager_msgs/GetCommandManagerListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCommandManagerList-response>)))
  "Returns md5sum for a message object of type '<GetCommandManagerList-response>"
  "efa7801a29cc81feaf45e89c194507dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCommandManagerList-response)))
  "Returns md5sum for a message object of type 'GetCommandManagerList-response"
  "efa7801a29cc81feaf45e89c194507dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCommandManagerList-response>)))
  "Returns full string definition for message of type '<GetCommandManagerList-response>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/CommandManagerArray list~%bool success~%string message~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManagerArray~%robot_simple_command_manager_msgs/CommandManager[] commands~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManager~%string id~%string command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCommandManagerList-response)))
  "Returns full string definition for message of type 'GetCommandManagerList-response"
  (cl:format cl:nil "robot_simple_command_manager_msgs/CommandManagerArray list~%bool success~%string message~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManagerArray~%robot_simple_command_manager_msgs/CommandManager[] commands~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/CommandManager~%string id~%string command~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCommandManagerList-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'list))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCommandManagerList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCommandManagerList-response
    (cl:cons ':list (list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCommandManagerList)))
  'GetCommandManagerList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCommandManagerList)))
  'GetCommandManagerList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCommandManagerList)))
  "Returns string type for a service object of type '<GetCommandManagerList>"
  "robot_simple_command_manager_msgs/GetCommandManagerList")