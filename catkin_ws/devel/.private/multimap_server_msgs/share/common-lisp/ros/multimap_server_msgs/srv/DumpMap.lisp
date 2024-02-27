; Auto-generated. Do not edit!


(cl:in-package multimap_server_msgs-srv)


;//! \htmlinclude DumpMap-request.msg.html

(cl:defclass <DumpMap-request> (roslisp-msg-protocol:ros-message)
  ((ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform ""))
)

(cl:defclass DumpMap-request (<DumpMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DumpMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DumpMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-srv:<DumpMap-request> is deprecated: use multimap_server_msgs-srv:DumpMap-request instead.")))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <DumpMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:ns-val is deprecated.  Use multimap_server_msgs-srv:ns instead.")
  (ns m))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <DumpMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:map_name-val is deprecated.  Use multimap_server_msgs-srv:map_name instead.")
  (map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DumpMap-request>) ostream)
  "Serializes a message object of type '<DumpMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DumpMap-request>) istream)
  "Deserializes a message object of type '<DumpMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DumpMap-request>)))
  "Returns string type for a service object of type '<DumpMap-request>"
  "multimap_server_msgs/DumpMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DumpMap-request)))
  "Returns string type for a service object of type 'DumpMap-request"
  "multimap_server_msgs/DumpMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DumpMap-request>)))
  "Returns md5sum for a message object of type '<DumpMap-request>"
  "2877e4a3463c998fce3b219d9803d881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DumpMap-request)))
  "Returns md5sum for a message object of type 'DumpMap-request"
  "2877e4a3463c998fce3b219d9803d881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DumpMap-request>)))
  "Returns full string definition for message of type '<DumpMap-request>"
  (cl:format cl:nil "string ns~%string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DumpMap-request)))
  "Returns full string definition for message of type 'DumpMap-request"
  (cl:format cl:nil "string ns~%string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DumpMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ns))
     4 (cl:length (cl:slot-value msg 'map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DumpMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DumpMap-request
    (cl:cons ':ns (ns msg))
    (cl:cons ':map_name (map_name msg))
))
;//! \htmlinclude DumpMap-response.msg.html

(cl:defclass <DumpMap-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DumpMap-response (<DumpMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DumpMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DumpMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-srv:<DumpMap-response> is deprecated: use multimap_server_msgs-srv:DumpMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DumpMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:success-val is deprecated.  Use multimap_server_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <DumpMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:msg-val is deprecated.  Use multimap_server_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DumpMap-response>) ostream)
  "Serializes a message object of type '<DumpMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DumpMap-response>) istream)
  "Deserializes a message object of type '<DumpMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DumpMap-response>)))
  "Returns string type for a service object of type '<DumpMap-response>"
  "multimap_server_msgs/DumpMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DumpMap-response)))
  "Returns string type for a service object of type 'DumpMap-response"
  "multimap_server_msgs/DumpMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DumpMap-response>)))
  "Returns md5sum for a message object of type '<DumpMap-response>"
  "2877e4a3463c998fce3b219d9803d881")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DumpMap-response)))
  "Returns md5sum for a message object of type 'DumpMap-response"
  "2877e4a3463c998fce3b219d9803d881")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DumpMap-response>)))
  "Returns full string definition for message of type '<DumpMap-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DumpMap-response)))
  "Returns full string definition for message of type 'DumpMap-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DumpMap-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DumpMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DumpMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DumpMap)))
  'DumpMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DumpMap)))
  'DumpMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DumpMap)))
  "Returns string type for a service object of type '<DumpMap>"
  "multimap_server_msgs/DumpMap")