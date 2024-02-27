; Auto-generated. Do not edit!


(cl:in-package robotnik_leds_msgs-srv)


;//! \htmlinclude LedReset-request.msg.html

(cl:defclass <LedReset-request> (roslisp-msg-protocol:ros-message)
  ((password
    :reader password
    :initarg :password
    :type cl:string
    :initform "")
   (reset
    :reader reset
    :initarg :reset
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LedReset-request (<LedReset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedReset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedReset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_leds_msgs-srv:<LedReset-request> is deprecated: use robotnik_leds_msgs-srv:LedReset-request instead.")))

(cl:ensure-generic-function 'password-val :lambda-list '(m))
(cl:defmethod password-val ((m <LedReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:password-val is deprecated.  Use robotnik_leds_msgs-srv:password instead.")
  (password m))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <LedReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:reset-val is deprecated.  Use robotnik_leds_msgs-srv:reset instead.")
  (reset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedReset-request>) ostream)
  "Serializes a message object of type '<LedReset-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'password))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'password))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedReset-request>) istream)
  "Deserializes a message object of type '<LedReset-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'password) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'password) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'reset) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedReset-request>)))
  "Returns string type for a service object of type '<LedReset-request>"
  "robotnik_leds_msgs/LedResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedReset-request)))
  "Returns string type for a service object of type 'LedReset-request"
  "robotnik_leds_msgs/LedResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedReset-request>)))
  "Returns md5sum for a message object of type '<LedReset-request>"
  "6dc4366229cc625582e84d622d779bfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedReset-request)))
  "Returns md5sum for a message object of type 'LedReset-request"
  "6dc4366229cc625582e84d622d779bfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedReset-request>)))
  "Returns full string definition for message of type '<LedReset-request>"
  (cl:format cl:nil "string password  # Same password used on robotnik robots~%bool   reset     # Flag to reset the hardware board~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedReset-request)))
  "Returns full string definition for message of type 'LedReset-request"
  (cl:format cl:nil "string password  # Same password used on robotnik robots~%bool   reset     # Flag to reset the hardware board~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedReset-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'password))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedReset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedReset-request
    (cl:cons ':password (password msg))
    (cl:cons ':reset (reset msg))
))
;//! \htmlinclude LedReset-response.msg.html

(cl:defclass <LedReset-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass LedReset-response (<LedReset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedReset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedReset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_leds_msgs-srv:<LedReset-response> is deprecated: use robotnik_leds_msgs-srv:LedReset-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LedReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:message-val is deprecated.  Use robotnik_leds_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedReset-response>) ostream)
  "Serializes a message object of type '<LedReset-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedReset-response>) istream)
  "Deserializes a message object of type '<LedReset-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedReset-response>)))
  "Returns string type for a service object of type '<LedReset-response>"
  "robotnik_leds_msgs/LedResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedReset-response)))
  "Returns string type for a service object of type 'LedReset-response"
  "robotnik_leds_msgs/LedResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedReset-response>)))
  "Returns md5sum for a message object of type '<LedReset-response>"
  "6dc4366229cc625582e84d622d779bfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedReset-response)))
  "Returns md5sum for a message object of type 'LedReset-response"
  "6dc4366229cc625582e84d622d779bfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedReset-response>)))
  "Returns full string definition for message of type '<LedReset-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedReset-response)))
  "Returns full string definition for message of type 'LedReset-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedReset-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedReset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedReset-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedReset)))
  'LedReset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedReset)))
  'LedReset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedReset)))
  "Returns string type for a service object of type '<LedReset>"
  "robotnik_leds_msgs/LedReset")