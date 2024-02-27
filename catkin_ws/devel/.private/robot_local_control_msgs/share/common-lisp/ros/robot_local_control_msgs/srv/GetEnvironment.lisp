; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude GetEnvironment-request.msg.html

(cl:defclass <GetEnvironment-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEnvironment-request (<GetEnvironment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvironment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvironment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<GetEnvironment-request> is deprecated: use robot_local_control_msgs-srv:GetEnvironment-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvironment-request>) ostream)
  "Serializes a message object of type '<GetEnvironment-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvironment-request>) istream)
  "Deserializes a message object of type '<GetEnvironment-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvironment-request>)))
  "Returns string type for a service object of type '<GetEnvironment-request>"
  "robot_local_control_msgs/GetEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironment-request)))
  "Returns string type for a service object of type 'GetEnvironment-request"
  "robot_local_control_msgs/GetEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvironment-request>)))
  "Returns md5sum for a message object of type '<GetEnvironment-request>"
  "18e10632e78694f7360539cc210ec71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvironment-request)))
  "Returns md5sum for a message object of type 'GetEnvironment-request"
  "18e10632e78694f7360539cc210ec71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvironment-request>)))
  "Returns full string definition for message of type '<GetEnvironment-request>"
  (cl:format cl:nil "# returns a list of environments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvironment-request)))
  "Returns full string definition for message of type 'GetEnvironment-request"
  (cl:format cl:nil "# returns a list of environments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvironment-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvironment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvironment-request
))
;//! \htmlinclude GetEnvironment-response.msg.html

(cl:defclass <GetEnvironment-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (environment
    :reader environment
    :initarg :environment
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetEnvironment-response (<GetEnvironment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvironment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvironment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<GetEnvironment-response> is deprecated: use robot_local_control_msgs-srv:GetEnvironment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <GetEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:environment-val is deprecated.  Use robot_local_control_msgs-srv:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvironment-response>) ostream)
  "Serializes a message object of type '<GetEnvironment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvironment-response>) istream)
  "Deserializes a message object of type '<GetEnvironment-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'environment) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'environment)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvironment-response>)))
  "Returns string type for a service object of type '<GetEnvironment-response>"
  "robot_local_control_msgs/GetEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironment-response)))
  "Returns string type for a service object of type 'GetEnvironment-response"
  "robot_local_control_msgs/GetEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvironment-response>)))
  "Returns md5sum for a message object of type '<GetEnvironment-response>"
  "18e10632e78694f7360539cc210ec71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvironment-response)))
  "Returns md5sum for a message object of type 'GetEnvironment-response"
  "18e10632e78694f7360539cc210ec71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvironment-response>)))
  "Returns full string definition for message of type '<GetEnvironment-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%string[] environment ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvironment-response)))
  "Returns full string definition for message of type 'GetEnvironment-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%string[] environment ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvironment-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'environment) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvironment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvironment-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':environment (environment msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEnvironment)))
  'GetEnvironment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEnvironment)))
  'GetEnvironment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironment)))
  "Returns string type for a service object of type '<GetEnvironment>"
  "robot_local_control_msgs/GetEnvironment")