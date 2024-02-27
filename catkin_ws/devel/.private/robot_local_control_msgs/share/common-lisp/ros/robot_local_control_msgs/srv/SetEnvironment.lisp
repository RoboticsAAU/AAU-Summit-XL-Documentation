; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SetEnvironment-request.msg.html

(cl:defclass <SetEnvironment-request> (roslisp-msg-protocol:ros-message)
  ((environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform ""))
)

(cl:defclass SetEnvironment-request (<SetEnvironment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEnvironment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEnvironment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetEnvironment-request> is deprecated: use robot_local_control_msgs-srv:SetEnvironment-request instead.")))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <SetEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:environment-val is deprecated.  Use robot_local_control_msgs-srv:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEnvironment-request>) ostream)
  "Serializes a message object of type '<SetEnvironment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEnvironment-request>) istream)
  "Deserializes a message object of type '<SetEnvironment-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'environment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEnvironment-request>)))
  "Returns string type for a service object of type '<SetEnvironment-request>"
  "robot_local_control_msgs/SetEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEnvironment-request)))
  "Returns string type for a service object of type 'SetEnvironment-request"
  "robot_local_control_msgs/SetEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEnvironment-request>)))
  "Returns md5sum for a message object of type '<SetEnvironment-request>"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEnvironment-request)))
  "Returns md5sum for a message object of type 'SetEnvironment-request"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEnvironment-request>)))
  "Returns full string definition for message of type '<SetEnvironment-request>"
  (cl:format cl:nil "string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEnvironment-request)))
  "Returns full string definition for message of type 'SetEnvironment-request"
  (cl:format cl:nil "string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEnvironment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'environment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEnvironment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEnvironment-request
    (cl:cons ':environment (environment msg))
))
;//! \htmlinclude SetEnvironment-response.msg.html

(cl:defclass <SetEnvironment-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEnvironment-response (<SetEnvironment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEnvironment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEnvironment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetEnvironment-response> is deprecated: use robot_local_control_msgs-srv:SetEnvironment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEnvironment-response>) ostream)
  "Serializes a message object of type '<SetEnvironment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEnvironment-response>) istream)
  "Deserializes a message object of type '<SetEnvironment-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEnvironment-response>)))
  "Returns string type for a service object of type '<SetEnvironment-response>"
  "robot_local_control_msgs/SetEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEnvironment-response)))
  "Returns string type for a service object of type 'SetEnvironment-response"
  "robot_local_control_msgs/SetEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEnvironment-response>)))
  "Returns md5sum for a message object of type '<SetEnvironment-response>"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEnvironment-response)))
  "Returns md5sum for a message object of type 'SetEnvironment-response"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEnvironment-response>)))
  "Returns full string definition for message of type '<SetEnvironment-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEnvironment-response)))
  "Returns full string definition for message of type 'SetEnvironment-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEnvironment-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEnvironment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEnvironment-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEnvironment)))
  'SetEnvironment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEnvironment)))
  'SetEnvironment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEnvironment)))
  "Returns string type for a service object of type '<SetEnvironment>"
  "robot_local_control_msgs/SetEnvironment")