; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SetControlState-request.msg.html

(cl:defclass <SetControlState-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass SetControlState-request (<SetControlState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControlState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControlState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetControlState-request> is deprecated: use robot_local_control_msgs-srv:SetControlState-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SetControlState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:command-val is deprecated.  Use robot_local_control_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControlState-request>) ostream)
  "Serializes a message object of type '<SetControlState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControlState-request>) istream)
  "Deserializes a message object of type '<SetControlState-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControlState-request>)))
  "Returns string type for a service object of type '<SetControlState-request>"
  "robot_local_control_msgs/SetControlStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlState-request)))
  "Returns string type for a service object of type 'SetControlState-request"
  "robot_local_control_msgs/SetControlStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControlState-request>)))
  "Returns md5sum for a message object of type '<SetControlState-request>"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControlState-request)))
  "Returns md5sum for a message object of type 'SetControlState-request"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControlState-request>)))
  "Returns full string definition for message of type '<SetControlState-request>"
  (cl:format cl:nil "# CONTROL STATES OF THE ROBOT~%# autonomous: the robot is moving autonomously~%# manual: the robot is being tele-operated by an operator~%# follow: the robot is following a person ~%~%# see robot_local_control_msgs/State for the CONTROL_STATE options/commands~%string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControlState-request)))
  "Returns full string definition for message of type 'SetControlState-request"
  (cl:format cl:nil "# CONTROL STATES OF THE ROBOT~%# autonomous: the robot is moving autonomously~%# manual: the robot is being tele-operated by an operator~%# follow: the robot is following a person ~%~%# see robot_local_control_msgs/State for the CONTROL_STATE options/commands~%string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControlState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControlState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControlState-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude SetControlState-response.msg.html

(cl:defclass <SetControlState-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetControlState-response (<SetControlState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControlState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControlState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetControlState-response> is deprecated: use robot_local_control_msgs-srv:SetControlState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetControlState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetControlState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControlState-response>) ostream)
  "Serializes a message object of type '<SetControlState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControlState-response>) istream)
  "Deserializes a message object of type '<SetControlState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControlState-response>)))
  "Returns string type for a service object of type '<SetControlState-response>"
  "robot_local_control_msgs/SetControlStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlState-response)))
  "Returns string type for a service object of type 'SetControlState-response"
  "robot_local_control_msgs/SetControlStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControlState-response>)))
  "Returns md5sum for a message object of type '<SetControlState-response>"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControlState-response)))
  "Returns md5sum for a message object of type 'SetControlState-response"
  "c348f8d8cd3a80f54328aa4159009109")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControlState-response>)))
  "Returns full string definition for message of type '<SetControlState-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControlState-response)))
  "Returns full string definition for message of type 'SetControlState-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControlState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControlState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControlState-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetControlState)))
  'SetControlState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetControlState)))
  'SetControlState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlState)))
  "Returns string type for a service object of type '<SetControlState>"
  "robot_local_control_msgs/SetControlState")