; Auto-generated. Do not edit!


(cl:in-package multimap_server_msgs-srv)


;//! \htmlinclude LoadMap-request.msg.html

(cl:defclass <LoadMap-request> (roslisp-msg-protocol:ros-message)
  ((map_url
    :reader map_url
    :initarg :map_url
    :type cl:string
    :initform "")
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (global_frame
    :reader global_frame
    :initarg :global_frame
    :type cl:string
    :initform ""))
)

(cl:defclass LoadMap-request (<LoadMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-srv:<LoadMap-request> is deprecated: use multimap_server_msgs-srv:LoadMap-request instead.")))

(cl:ensure-generic-function 'map_url-val :lambda-list '(m))
(cl:defmethod map_url-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:map_url-val is deprecated.  Use multimap_server_msgs-srv:map_url instead.")
  (map_url m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:ns-val is deprecated.  Use multimap_server_msgs-srv:ns instead.")
  (ns m))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:map_name-val is deprecated.  Use multimap_server_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'global_frame-val :lambda-list '(m))
(cl:defmethod global_frame-val ((m <LoadMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:global_frame-val is deprecated.  Use multimap_server_msgs-srv:global_frame instead.")
  (global_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-request>) ostream)
  "Serializes a message object of type '<LoadMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_url))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'global_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'global_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-request>) istream)
  "Deserializes a message object of type '<LoadMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'global_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'global_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-request>)))
  "Returns string type for a service object of type '<LoadMap-request>"
  "multimap_server_msgs/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-request)))
  "Returns string type for a service object of type 'LoadMap-request"
  "multimap_server_msgs/LoadMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-request>)))
  "Returns md5sum for a message object of type '<LoadMap-request>"
  "a077cc25c08e38d71f715aaa29d797f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-request)))
  "Returns md5sum for a message object of type 'LoadMap-request"
  "a077cc25c08e38d71f715aaa29d797f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-request>)))
  "Returns full string definition for message of type '<LoadMap-request>"
  (cl:format cl:nil "string map_url~%string ns~%string map_name~%string global_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-request)))
  "Returns full string definition for message of type 'LoadMap-request"
  (cl:format cl:nil "string map_url~%string ns~%string map_name~%string global_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_url))
     4 (cl:length (cl:slot-value msg 'ns))
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'global_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-request
    (cl:cons ':map_url (map_url msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':global_frame (global_frame msg))
))
;//! \htmlinclude LoadMap-response.msg.html

(cl:defclass <LoadMap-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LoadMap-response (<LoadMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-srv:<LoadMap-response> is deprecated: use multimap_server_msgs-srv:LoadMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LoadMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:success-val is deprecated.  Use multimap_server_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <LoadMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-srv:msg-val is deprecated.  Use multimap_server_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadMap-response>) ostream)
  "Serializes a message object of type '<LoadMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadMap-response>) istream)
  "Deserializes a message object of type '<LoadMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadMap-response>)))
  "Returns string type for a service object of type '<LoadMap-response>"
  "multimap_server_msgs/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap-response)))
  "Returns string type for a service object of type 'LoadMap-response"
  "multimap_server_msgs/LoadMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadMap-response>)))
  "Returns md5sum for a message object of type '<LoadMap-response>"
  "a077cc25c08e38d71f715aaa29d797f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadMap-response)))
  "Returns md5sum for a message object of type 'LoadMap-response"
  "a077cc25c08e38d71f715aaa29d797f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadMap-response>)))
  "Returns full string definition for message of type '<LoadMap-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadMap-response)))
  "Returns full string definition for message of type 'LoadMap-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadMap-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadMap)))
  'LoadMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadMap)))
  'LoadMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadMap)))
  "Returns string type for a service object of type '<LoadMap>"
  "multimap_server_msgs/LoadMap")