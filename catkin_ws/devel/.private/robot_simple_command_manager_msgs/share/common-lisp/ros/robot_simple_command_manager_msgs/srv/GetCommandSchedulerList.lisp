; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude GetCommandSchedulerList-request.msg.html

(cl:defclass <GetCommandSchedulerList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCommandSchedulerList-request (<GetCommandSchedulerList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCommandSchedulerList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCommandSchedulerList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetCommandSchedulerList-request> is deprecated: use robot_simple_command_manager_msgs-srv:GetCommandSchedulerList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCommandSchedulerList-request>) ostream)
  "Serializes a message object of type '<GetCommandSchedulerList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCommandSchedulerList-request>) istream)
  "Deserializes a message object of type '<GetCommandSchedulerList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCommandSchedulerList-request>)))
  "Returns string type for a service object of type '<GetCommandSchedulerList-request>"
  "robot_simple_command_manager_msgs/GetCommandSchedulerListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCommandSchedulerList-request)))
  "Returns string type for a service object of type 'GetCommandSchedulerList-request"
  "robot_simple_command_manager_msgs/GetCommandSchedulerListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCommandSchedulerList-request>)))
  "Returns md5sum for a message object of type '<GetCommandSchedulerList-request>"
  "eddf02e53400fb52131fc4d3a74bc6d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCommandSchedulerList-request)))
  "Returns md5sum for a message object of type 'GetCommandSchedulerList-request"
  "eddf02e53400fb52131fc4d3a74bc6d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCommandSchedulerList-request>)))
  "Returns full string definition for message of type '<GetCommandSchedulerList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCommandSchedulerList-request)))
  "Returns full string definition for message of type 'GetCommandSchedulerList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCommandSchedulerList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCommandSchedulerList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCommandSchedulerList-request
))
;//! \htmlinclude GetCommandSchedulerList-response.msg.html

(cl:defclass <GetCommandSchedulerList-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type robot_simple_command_manager_msgs-msg:EventSchedulerArray
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:EventSchedulerArray))
   (success
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

(cl:defclass GetCommandSchedulerList-response (<GetCommandSchedulerList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCommandSchedulerList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCommandSchedulerList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetCommandSchedulerList-response> is deprecated: use robot_simple_command_manager_msgs-srv:GetCommandSchedulerList-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <GetCommandSchedulerList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:list-val is deprecated.  Use robot_simple_command_manager_msgs-srv:list instead.")
  (list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCommandSchedulerList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:success-val is deprecated.  Use robot_simple_command_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCommandSchedulerList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:message-val is deprecated.  Use robot_simple_command_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCommandSchedulerList-response>) ostream)
  "Serializes a message object of type '<GetCommandSchedulerList-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'list) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCommandSchedulerList-response>) istream)
  "Deserializes a message object of type '<GetCommandSchedulerList-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'list) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCommandSchedulerList-response>)))
  "Returns string type for a service object of type '<GetCommandSchedulerList-response>"
  "robot_simple_command_manager_msgs/GetCommandSchedulerListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCommandSchedulerList-response)))
  "Returns string type for a service object of type 'GetCommandSchedulerList-response"
  "robot_simple_command_manager_msgs/GetCommandSchedulerListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCommandSchedulerList-response>)))
  "Returns md5sum for a message object of type '<GetCommandSchedulerList-response>"
  "eddf02e53400fb52131fc4d3a74bc6d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCommandSchedulerList-response)))
  "Returns md5sum for a message object of type 'GetCommandSchedulerList-response"
  "eddf02e53400fb52131fc4d3a74bc6d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCommandSchedulerList-response>)))
  "Returns full string definition for message of type '<GetCommandSchedulerList-response>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/EventSchedulerArray list~%bool success~%string message~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventSchedulerArray~%robot_simple_command_manager_msgs/EventScheduler[] Events~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCommandSchedulerList-response)))
  "Returns full string definition for message of type 'GetCommandSchedulerList-response"
  (cl:format cl:nil "robot_simple_command_manager_msgs/EventSchedulerArray list~%bool success~%string message~%~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventSchedulerArray~%robot_simple_command_manager_msgs/EventScheduler[] Events~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCommandSchedulerList-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'list))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCommandSchedulerList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCommandSchedulerList-response
    (cl:cons ':list (list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCommandSchedulerList)))
  'GetCommandSchedulerList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCommandSchedulerList)))
  'GetCommandSchedulerList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCommandSchedulerList)))
  "Returns string type for a service object of type '<GetCommandSchedulerList>"
  "robot_simple_command_manager_msgs/GetCommandSchedulerList")