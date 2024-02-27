; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude DeleteEnvironment-request.msg.html

(cl:defclass <DeleteEnvironment-request> (roslisp-msg-protocol:ros-message)
  ((environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteEnvironment-request (<DeleteEnvironment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteEnvironment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteEnvironment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<DeleteEnvironment-request> is deprecated: use poi_manager_msgs-srv:DeleteEnvironment-request instead.")))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <DeleteEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:environment-val is deprecated.  Use poi_manager_msgs-srv:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteEnvironment-request>) ostream)
  "Serializes a message object of type '<DeleteEnvironment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteEnvironment-request>) istream)
  "Deserializes a message object of type '<DeleteEnvironment-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteEnvironment-request>)))
  "Returns string type for a service object of type '<DeleteEnvironment-request>"
  "poi_manager_msgs/DeleteEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteEnvironment-request)))
  "Returns string type for a service object of type 'DeleteEnvironment-request"
  "poi_manager_msgs/DeleteEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteEnvironment-request>)))
  "Returns md5sum for a message object of type '<DeleteEnvironment-request>"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteEnvironment-request)))
  "Returns md5sum for a message object of type 'DeleteEnvironment-request"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteEnvironment-request>)))
  "Returns full string definition for message of type '<DeleteEnvironment-request>"
  (cl:format cl:nil "string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteEnvironment-request)))
  "Returns full string definition for message of type 'DeleteEnvironment-request"
  (cl:format cl:nil "string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteEnvironment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'environment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteEnvironment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteEnvironment-request
    (cl:cons ':environment (environment msg))
))
;//! \htmlinclude DeleteEnvironment-response.msg.html

(cl:defclass <DeleteEnvironment-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteEnvironment-response (<DeleteEnvironment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteEnvironment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteEnvironment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<DeleteEnvironment-response> is deprecated: use poi_manager_msgs-srv:DeleteEnvironment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteEnvironment-response>) ostream)
  "Serializes a message object of type '<DeleteEnvironment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteEnvironment-response>) istream)
  "Deserializes a message object of type '<DeleteEnvironment-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteEnvironment-response>)))
  "Returns string type for a service object of type '<DeleteEnvironment-response>"
  "poi_manager_msgs/DeleteEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteEnvironment-response)))
  "Returns string type for a service object of type 'DeleteEnvironment-response"
  "poi_manager_msgs/DeleteEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteEnvironment-response>)))
  "Returns md5sum for a message object of type '<DeleteEnvironment-response>"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteEnvironment-response)))
  "Returns md5sum for a message object of type 'DeleteEnvironment-response"
  "4aa42c943cdd0b5692dc2dbb91c546f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteEnvironment-response>)))
  "Returns full string definition for message of type '<DeleteEnvironment-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteEnvironment-response)))
  "Returns full string definition for message of type 'DeleteEnvironment-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteEnvironment-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteEnvironment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteEnvironment-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteEnvironment)))
  'DeleteEnvironment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteEnvironment)))
  'DeleteEnvironment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteEnvironment)))
  "Returns string type for a service object of type '<DeleteEnvironment>"
  "poi_manager_msgs/DeleteEnvironment")