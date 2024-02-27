; Auto-generated. Do not edit!


(cl:in-package multimap_server_msgs-srv)


;//! \htmlinclude LoadEnvironments-request.msg.html

(cl:defclass <LoadEnvironments-request> (roslisp-msg-protocol:ros-message)
  ((environments_url
    :reader environments_url
    :initarg :environments_url
    :type cl:string
    :initform ""))
)

(cl:defclass LoadEnvironments-request (<LoadEnvironments-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadEnvironments-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadEnvironments-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-srv:<LoadEnvironments-request> is deprecated: use multimap_server_msgs-srv:LoadEnvironments-request instead.")))

(cl:ensure-generic-function 'environments_url-val :lambda-list '(m))
(cl:defmethod environments_url-val ((m <LoadEnvironments-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:environments_url-val is deprecated.  Use multimap_server_msgs-srv:environments_url instead.")
  (environments_url m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadEnvironments-request>) ostream)
  "Serializes a message object of type '<LoadEnvironments-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environments_url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environments_url))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadEnvironments-request>) istream)
  "Deserializes a message object of type '<LoadEnvironments-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'environments_url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environments_url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadEnvironments-request>)))
  "Returns string type for a service object of type '<LoadEnvironments-request>"
  "multimap_server_msgs/LoadEnvironmentsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadEnvironments-request)))
  "Returns string type for a service object of type 'LoadEnvironments-request"
  "multimap_server_msgs/LoadEnvironmentsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadEnvironments-request>)))
  "Returns md5sum for a message object of type '<LoadEnvironments-request>"
  "f9c07b944bb09f9a6818d9b28b6141ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadEnvironments-request)))
  "Returns md5sum for a message object of type 'LoadEnvironments-request"
  "f9c07b944bb09f9a6818d9b28b6141ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadEnvironments-request>)))
  "Returns full string definition for message of type '<LoadEnvironments-request>"
  (cl:format cl:nil "string environments_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadEnvironments-request)))
  "Returns full string definition for message of type 'LoadEnvironments-request"
  (cl:format cl:nil "string environments_url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadEnvironments-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'environments_url))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadEnvironments-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadEnvironments-request
    (cl:cons ':environments_url (environments_url msg))
))
;//! \htmlinclude LoadEnvironments-response.msg.html

(cl:defclass <LoadEnvironments-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass LoadEnvironments-response (<LoadEnvironments-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadEnvironments-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadEnvironments-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-srv:<LoadEnvironments-response> is deprecated: use multimap_server_msgs-srv:LoadEnvironments-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoadEnvironments-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:success-val is deprecated.  Use multimap_server_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <LoadEnvironments-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:msg-val is deprecated.  Use multimap_server_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadEnvironments-response>) ostream)
  "Serializes a message object of type '<LoadEnvironments-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadEnvironments-response>) istream)
  "Deserializes a message object of type '<LoadEnvironments-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadEnvironments-response>)))
  "Returns string type for a service object of type '<LoadEnvironments-response>"
  "multimap_server_msgs/LoadEnvironmentsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadEnvironments-response)))
  "Returns string type for a service object of type 'LoadEnvironments-response"
  "multimap_server_msgs/LoadEnvironmentsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadEnvironments-response>)))
  "Returns md5sum for a message object of type '<LoadEnvironments-response>"
  "f9c07b944bb09f9a6818d9b28b6141ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadEnvironments-response)))
  "Returns md5sum for a message object of type 'LoadEnvironments-response"
  "f9c07b944bb09f9a6818d9b28b6141ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadEnvironments-response>)))
  "Returns full string definition for message of type '<LoadEnvironments-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadEnvironments-response)))
  "Returns full string definition for message of type 'LoadEnvironments-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadEnvironments-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadEnvironments-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadEnvironments-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadEnvironments)))
  'LoadEnvironments-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadEnvironments)))
  'LoadEnvironments-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadEnvironments)))
  "Returns string type for a service object of type '<LoadEnvironments>"
  "multimap_server_msgs/LoadEnvironments")