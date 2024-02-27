; Auto-generated. Do not edit!


(cl:in-package map_nav_manager-srv)


;//! \htmlinclude SetFilename-request.msg.html

(cl:defclass <SetFilename-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (use_it_by_default
    :reader use_it_by_default
    :initarg :use_it_by_default
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetFilename-request (<SetFilename-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFilename-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFilename-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_nav_manager-srv:<SetFilename-request> is deprecated: use map_nav_manager-srv:SetFilename-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetFilename-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-srv:name-val is deprecated.  Use map_nav_manager-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'use_it_by_default-val :lambda-list '(m))
(cl:defmethod use_it_by_default-val ((m <SetFilename-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-srv:use_it_by_default-val is deprecated.  Use map_nav_manager-srv:use_it_by_default instead.")
  (use_it_by_default m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFilename-request>) ostream)
  "Serializes a message object of type '<SetFilename-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_it_by_default) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFilename-request>) istream)
  "Deserializes a message object of type '<SetFilename-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'use_it_by_default) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFilename-request>)))
  "Returns string type for a service object of type '<SetFilename-request>"
  "map_nav_manager/SetFilenameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilename-request)))
  "Returns string type for a service object of type 'SetFilename-request"
  "map_nav_manager/SetFilenameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFilename-request>)))
  "Returns md5sum for a message object of type '<SetFilename-request>"
  "0e2ab6c0c250dbb3b3cac558b01494a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFilename-request)))
  "Returns md5sum for a message object of type 'SetFilename-request"
  "0e2ab6c0c250dbb3b3cac558b01494a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFilename-request>)))
  "Returns full string definition for message of type '<SetFilename-request>"
  (cl:format cl:nil "string name~%# used to use it this file by default~%bool use_it_by_default~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFilename-request)))
  "Returns full string definition for message of type 'SetFilename-request"
  (cl:format cl:nil "string name~%# used to use it this file by default~%bool use_it_by_default~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFilename-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFilename-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFilename-request
    (cl:cons ':name (name msg))
    (cl:cons ':use_it_by_default (use_it_by_default msg))
))
;//! \htmlinclude SetFilename-response.msg.html

(cl:defclass <SetFilename-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetFilename-response (<SetFilename-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFilename-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFilename-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_nav_manager-srv:<SetFilename-response> is deprecated: use map_nav_manager-srv:SetFilename-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetFilename-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-srv:ret-val is deprecated.  Use map_nav_manager-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetFilename-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-srv:msg-val is deprecated.  Use map_nav_manager-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFilename-response>) ostream)
  "Serializes a message object of type '<SetFilename-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFilename-response>) istream)
  "Deserializes a message object of type '<SetFilename-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFilename-response>)))
  "Returns string type for a service object of type '<SetFilename-response>"
  "map_nav_manager/SetFilenameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilename-response)))
  "Returns string type for a service object of type 'SetFilename-response"
  "map_nav_manager/SetFilenameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFilename-response>)))
  "Returns md5sum for a message object of type '<SetFilename-response>"
  "0e2ab6c0c250dbb3b3cac558b01494a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFilename-response)))
  "Returns md5sum for a message object of type 'SetFilename-response"
  "0e2ab6c0c250dbb3b3cac558b01494a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFilename-response>)))
  "Returns full string definition for message of type '<SetFilename-response>"
  (cl:format cl:nil "bool ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFilename-response)))
  "Returns full string definition for message of type 'SetFilename-response"
  (cl:format cl:nil "bool ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFilename-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFilename-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFilename-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFilename)))
  'SetFilename-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFilename)))
  'SetFilename-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFilename)))
  "Returns string type for a service object of type '<SetFilename>"
  "map_nav_manager/SetFilename")