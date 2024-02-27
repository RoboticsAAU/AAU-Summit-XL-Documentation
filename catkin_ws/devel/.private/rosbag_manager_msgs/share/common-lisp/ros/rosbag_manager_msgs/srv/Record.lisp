; Auto-generated. Do not edit!


(cl:in-package rosbag_manager_msgs-srv)


;//! \htmlinclude Record-request.msg.html

(cl:defclass <Record-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass Record-request (<Record-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Record-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Record-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbag_manager_msgs-srv:<Record-request> is deprecated: use rosbag_manager_msgs-srv:Record-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-srv:action-val is deprecated.  Use rosbag_manager_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-srv:name-val is deprecated.  Use rosbag_manager_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-srv:path-val is deprecated.  Use rosbag_manager_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Record-request>)))
    "Constants for message type '<Record-request>"
  '((:STOP . stop)
    (:START . start)
    (:DISCARD . discard))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Record-request)))
    "Constants for message type 'Record-request"
  '((:STOP . stop)
    (:START . start)
    (:DISCARD . discard))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Record-request>) ostream)
  "Serializes a message object of type '<Record-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Record-request>) istream)
  "Deserializes a message object of type '<Record-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Record-request>)))
  "Returns string type for a service object of type '<Record-request>"
  "rosbag_manager_msgs/RecordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record-request)))
  "Returns string type for a service object of type 'Record-request"
  "rosbag_manager_msgs/RecordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Record-request>)))
  "Returns md5sum for a message object of type '<Record-request>"
  "4e9e87c0bc4f22477e40498e7966c984")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Record-request)))
  "Returns md5sum for a message object of type 'Record-request"
  "4e9e87c0bc4f22477e40498e7966c984")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Record-request>)))
  "Returns full string definition for message of type '<Record-request>"
  (cl:format cl:nil "# START: start recording~%# STOP: stop recording~%# DISCARD: stop and discard recording~%string STOP=stop~%string START=start~%string DISCARD=discard~%string action~%~%# Name of the bag file. If empty string, bag file will be named with date and time~%string name~%# Absolute path location folder to save the camera recordings~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Record-request)))
  "Returns full string definition for message of type 'Record-request"
  (cl:format cl:nil "# START: start recording~%# STOP: stop recording~%# DISCARD: stop and discard recording~%string STOP=stop~%string START=start~%string DISCARD=discard~%string action~%~%# Name of the bag file. If empty string, bag file will be named with date and time~%string name~%# Absolute path location folder to save the camera recordings~%string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Record-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Record-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Record-request
    (cl:cons ':action (action msg))
    (cl:cons ':name (name msg))
    (cl:cons ':path (path msg))
))
;//! \htmlinclude Record-response.msg.html

(cl:defclass <Record-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Record-response (<Record-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Record-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Record-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbag_manager_msgs-srv:<Record-response> is deprecated: use rosbag_manager_msgs-srv:Record-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Record-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-srv:success-val is deprecated.  Use rosbag_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Record-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_manager_msgs-srv:message-val is deprecated.  Use rosbag_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Record-response>) ostream)
  "Serializes a message object of type '<Record-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Record-response>) istream)
  "Deserializes a message object of type '<Record-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Record-response>)))
  "Returns string type for a service object of type '<Record-response>"
  "rosbag_manager_msgs/RecordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record-response)))
  "Returns string type for a service object of type 'Record-response"
  "rosbag_manager_msgs/RecordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Record-response>)))
  "Returns md5sum for a message object of type '<Record-response>"
  "4e9e87c0bc4f22477e40498e7966c984")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Record-response)))
  "Returns md5sum for a message object of type 'Record-response"
  "4e9e87c0bc4f22477e40498e7966c984")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Record-response>)))
  "Returns full string definition for message of type '<Record-response>"
  (cl:format cl:nil "# returns 0 if ok, -1 otherwise~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Record-response)))
  "Returns full string definition for message of type 'Record-response"
  (cl:format cl:nil "# returns 0 if ok, -1 otherwise~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Record-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Record-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Record-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Record)))
  'Record-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Record)))
  'Record-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Record)))
  "Returns string type for a service object of type '<Record>"
  "rosbag_manager_msgs/Record")