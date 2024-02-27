; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SetGoToPetition-request.msg.html

(cl:defclass <SetGoToPetition-request> (roslisp-msg-protocol:ros-message)
  ((action_namespace
    :reader action_namespace
    :initarg :action_namespace
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SetGoToPetition-request (<SetGoToPetition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoToPetition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoToPetition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetGoToPetition-request> is deprecated: use robot_local_control_msgs-srv:SetGoToPetition-request instead.")))

(cl:ensure-generic-function 'action_namespace-val :lambda-list '(m))
(cl:defmethod action_namespace-val ((m <SetGoToPetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:action_namespace-val is deprecated.  Use robot_local_control_msgs-srv:action_namespace instead.")
  (action_namespace m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetGoToPetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:frame_id-val is deprecated.  Use robot_local_control_msgs-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoToPetition-request>) ostream)
  "Serializes a message object of type '<SetGoToPetition-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_namespace))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoToPetition-request>) istream)
  "Deserializes a message object of type '<SetGoToPetition-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoToPetition-request>)))
  "Returns string type for a service object of type '<SetGoToPetition-request>"
  "robot_local_control_msgs/SetGoToPetitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoToPetition-request)))
  "Returns string type for a service object of type 'SetGoToPetition-request"
  "robot_local_control_msgs/SetGoToPetitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoToPetition-request>)))
  "Returns md5sum for a message object of type '<SetGoToPetition-request>"
  "113a2cfed66fa5447f35250c8468af29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoToPetition-request)))
  "Returns md5sum for a message object of type 'SetGoToPetition-request"
  "113a2cfed66fa5447f35250c8468af29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoToPetition-request>)))
  "Returns full string definition for message of type '<SetGoToPetition-request>"
  (cl:format cl:nil "string action_namespace  # this will be the new action_namespace of the move_base client~%string frame_id          # the new global frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoToPetition-request)))
  "Returns full string definition for message of type 'SetGoToPetition-request"
  (cl:format cl:nil "string action_namespace  # this will be the new action_namespace of the move_base client~%string frame_id          # the new global frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoToPetition-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_namespace))
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoToPetition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoToPetition-request
    (cl:cons ':action_namespace (action_namespace msg))
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SetGoToPetition-response.msg.html

(cl:defclass <SetGoToPetition-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetGoToPetition-response (<SetGoToPetition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoToPetition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoToPetition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetGoToPetition-response> is deprecated: use robot_local_control_msgs-srv:SetGoToPetition-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetGoToPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetGoToPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoToPetition-response>) ostream)
  "Serializes a message object of type '<SetGoToPetition-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoToPetition-response>) istream)
  "Deserializes a message object of type '<SetGoToPetition-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoToPetition-response>)))
  "Returns string type for a service object of type '<SetGoToPetition-response>"
  "robot_local_control_msgs/SetGoToPetitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoToPetition-response)))
  "Returns string type for a service object of type 'SetGoToPetition-response"
  "robot_local_control_msgs/SetGoToPetitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoToPetition-response>)))
  "Returns md5sum for a message object of type '<SetGoToPetition-response>"
  "113a2cfed66fa5447f35250c8468af29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoToPetition-response)))
  "Returns md5sum for a message object of type 'SetGoToPetition-response"
  "113a2cfed66fa5447f35250c8468af29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoToPetition-response>)))
  "Returns full string definition for message of type '<SetGoToPetition-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoToPetition-response)))
  "Returns full string definition for message of type 'SetGoToPetition-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoToPetition-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoToPetition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoToPetition-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoToPetition)))
  'SetGoToPetition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoToPetition)))
  'SetGoToPetition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoToPetition)))
  "Returns string type for a service object of type '<SetGoToPetition>"
  "robot_local_control_msgs/SetGoToPetition")