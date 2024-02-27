; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude GetHandlers-request.msg.html

(cl:defclass <GetHandlers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHandlers-request (<GetHandlers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHandlers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHandlers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetHandlers-request> is deprecated: use robot_simple_command_manager_msgs-srv:GetHandlers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHandlers-request>) ostream)
  "Serializes a message object of type '<GetHandlers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHandlers-request>) istream)
  "Deserializes a message object of type '<GetHandlers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHandlers-request>)))
  "Returns string type for a service object of type '<GetHandlers-request>"
  "robot_simple_command_manager_msgs/GetHandlersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHandlers-request)))
  "Returns string type for a service object of type 'GetHandlers-request"
  "robot_simple_command_manager_msgs/GetHandlersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHandlers-request>)))
  "Returns md5sum for a message object of type '<GetHandlers-request>"
  "dd8c5aa023d5f8392d90b9573cfc34a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHandlers-request)))
  "Returns md5sum for a message object of type 'GetHandlers-request"
  "dd8c5aa023d5f8392d90b9573cfc34a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHandlers-request>)))
  "Returns full string definition for message of type '<GetHandlers-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHandlers-request)))
  "Returns full string definition for message of type 'GetHandlers-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHandlers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHandlers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHandlers-request
))
;//! \htmlinclude GetHandlers-response.msg.html

(cl:defclass <GetHandlers-response> (roslisp-msg-protocol:ros-message)
  ((handlers
    :reader handlers
    :initarg :handlers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetHandlers-response (<GetHandlers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHandlers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHandlers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetHandlers-response> is deprecated: use robot_simple_command_manager_msgs-srv:GetHandlers-response instead.")))

(cl:ensure-generic-function 'handlers-val :lambda-list '(m))
(cl:defmethod handlers-val ((m <GetHandlers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:handlers-val is deprecated.  Use robot_simple_command_manager_msgs-srv:handlers instead.")
  (handlers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHandlers-response>) ostream)
  "Serializes a message object of type '<GetHandlers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'handlers))))
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
   (cl:slot-value msg 'handlers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHandlers-response>) istream)
  "Deserializes a message object of type '<GetHandlers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'handlers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'handlers)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHandlers-response>)))
  "Returns string type for a service object of type '<GetHandlers-response>"
  "robot_simple_command_manager_msgs/GetHandlersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHandlers-response)))
  "Returns string type for a service object of type 'GetHandlers-response"
  "robot_simple_command_manager_msgs/GetHandlersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHandlers-response>)))
  "Returns md5sum for a message object of type '<GetHandlers-response>"
  "dd8c5aa023d5f8392d90b9573cfc34a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHandlers-response)))
  "Returns md5sum for a message object of type 'GetHandlers-response"
  "dd8c5aa023d5f8392d90b9573cfc34a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHandlers-response>)))
  "Returns full string definition for message of type '<GetHandlers-response>"
  (cl:format cl:nil "string[] handlers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHandlers-response)))
  "Returns full string definition for message of type 'GetHandlers-response"
  (cl:format cl:nil "string[] handlers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHandlers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'handlers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHandlers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHandlers-response
    (cl:cons ':handlers (handlers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHandlers)))
  'GetHandlers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHandlers)))
  'GetHandlers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHandlers)))
  "Returns string type for a service object of type '<GetHandlers>"
  "robot_simple_command_manager_msgs/GetHandlers")