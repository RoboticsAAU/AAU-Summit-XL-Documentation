; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude DeletePOI-request.msg.html

(cl:defclass <DeletePOI-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform ""))
)

(cl:defclass DeletePOI-request (<DeletePOI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeletePOI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeletePOI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<DeletePOI-request> is deprecated: use poi_manager_msgs-srv:DeletePOI-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeletePOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:name-val is deprecated.  Use poi_manager_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <DeletePOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:environment-val is deprecated.  Use poi_manager_msgs-srv:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeletePOI-request>) ostream)
  "Serializes a message object of type '<DeletePOI-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeletePOI-request>) istream)
  "Deserializes a message object of type '<DeletePOI-request>"
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
      (cl:setf (cl:slot-value msg 'environment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeletePOI-request>)))
  "Returns string type for a service object of type '<DeletePOI-request>"
  "poi_manager_msgs/DeletePOIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeletePOI-request)))
  "Returns string type for a service object of type 'DeletePOI-request"
  "poi_manager_msgs/DeletePOIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeletePOI-request>)))
  "Returns md5sum for a message object of type '<DeletePOI-request>"
  "f16ad5d167b1082eb672599a51de5cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeletePOI-request)))
  "Returns md5sum for a message object of type 'DeletePOI-request"
  "f16ad5d167b1082eb672599a51de5cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeletePOI-request>)))
  "Returns full string definition for message of type '<DeletePOI-request>"
  (cl:format cl:nil "string name~%string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeletePOI-request)))
  "Returns full string definition for message of type 'DeletePOI-request"
  (cl:format cl:nil "string name~%string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeletePOI-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'environment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeletePOI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeletePOI-request
    (cl:cons ':name (name msg))
    (cl:cons ':environment (environment msg))
))
;//! \htmlinclude DeletePOI-response.msg.html

(cl:defclass <DeletePOI-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeletePOI-response (<DeletePOI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeletePOI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeletePOI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<DeletePOI-response> is deprecated: use poi_manager_msgs-srv:DeletePOI-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeletePOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeletePOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeletePOI-response>) ostream)
  "Serializes a message object of type '<DeletePOI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeletePOI-response>) istream)
  "Deserializes a message object of type '<DeletePOI-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeletePOI-response>)))
  "Returns string type for a service object of type '<DeletePOI-response>"
  "poi_manager_msgs/DeletePOIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeletePOI-response)))
  "Returns string type for a service object of type 'DeletePOI-response"
  "poi_manager_msgs/DeletePOIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeletePOI-response>)))
  "Returns md5sum for a message object of type '<DeletePOI-response>"
  "f16ad5d167b1082eb672599a51de5cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeletePOI-response)))
  "Returns md5sum for a message object of type 'DeletePOI-response"
  "f16ad5d167b1082eb672599a51de5cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeletePOI-response>)))
  "Returns full string definition for message of type '<DeletePOI-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeletePOI-response)))
  "Returns full string definition for message of type 'DeletePOI-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeletePOI-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeletePOI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeletePOI-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeletePOI)))
  'DeletePOI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeletePOI)))
  'DeletePOI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeletePOI)))
  "Returns string type for a service object of type '<DeletePOI>"
  "poi_manager_msgs/DeletePOI")