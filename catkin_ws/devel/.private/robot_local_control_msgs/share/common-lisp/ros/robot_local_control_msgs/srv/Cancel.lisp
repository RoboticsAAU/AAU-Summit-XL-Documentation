; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude Cancel-request.msg.html

(cl:defclass <Cancel-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass Cancel-request (<Cancel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cancel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cancel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<Cancel-request> is deprecated: use robot_local_control_msgs-srv:Cancel-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Cancel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:command-val is deprecated.  Use robot_local_control_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cancel-request>) ostream)
  "Serializes a message object of type '<Cancel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cancel-request>) istream)
  "Deserializes a message object of type '<Cancel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cancel-request>)))
  "Returns string type for a service object of type '<Cancel-request>"
  "robot_local_control_msgs/CancelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cancel-request)))
  "Returns string type for a service object of type 'Cancel-request"
  "robot_local_control_msgs/CancelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cancel-request>)))
  "Returns md5sum for a message object of type '<Cancel-request>"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cancel-request)))
  "Returns md5sum for a message object of type 'Cancel-request"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cancel-request>)))
  "Returns full string definition for message of type '<Cancel-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cancel-request)))
  "Returns full string definition for message of type 'Cancel-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cancel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cancel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Cancel-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude Cancel-response.msg.html

(cl:defclass <Cancel-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Cancel-response (<Cancel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cancel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cancel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<Cancel-response> is deprecated: use robot_local_control_msgs-srv:Cancel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Cancel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Cancel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cancel-response>) ostream)
  "Serializes a message object of type '<Cancel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cancel-response>) istream)
  "Deserializes a message object of type '<Cancel-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cancel-response>)))
  "Returns string type for a service object of type '<Cancel-response>"
  "robot_local_control_msgs/CancelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cancel-response)))
  "Returns string type for a service object of type 'Cancel-response"
  "robot_local_control_msgs/CancelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cancel-response>)))
  "Returns md5sum for a message object of type '<Cancel-response>"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cancel-response)))
  "Returns md5sum for a message object of type 'Cancel-response"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cancel-response>)))
  "Returns full string definition for message of type '<Cancel-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cancel-response)))
  "Returns full string definition for message of type 'Cancel-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cancel-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cancel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Cancel-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Cancel)))
  'Cancel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Cancel)))
  'Cancel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cancel)))
  "Returns string type for a service object of type '<Cancel>"
  "robot_local_control_msgs/Cancel")