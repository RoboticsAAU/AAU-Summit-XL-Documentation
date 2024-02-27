; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SimpleGoToWithValidation-request.msg.html

(cl:defclass <SimpleGoToWithValidation-request> (roslisp-msg-protocol:ros-message)
  ((max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type cl:float
    :initform 0.0)
   (validation
    :reader validation
    :initarg :validation
    :type cl:boolean
    :initform cl:nil)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass SimpleGoToWithValidation-request (<SimpleGoToWithValidation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleGoToWithValidation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleGoToWithValidation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SimpleGoToWithValidation-request> is deprecated: use robot_local_control_msgs-srv:SimpleGoToWithValidation-request instead.")))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <SimpleGoToWithValidation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:max_velocity-val is deprecated.  Use robot_local_control_msgs-srv:max_velocity instead.")
  (max_velocity m))

(cl:ensure-generic-function 'validation-val :lambda-list '(m))
(cl:defmethod validation-val ((m <SimpleGoToWithValidation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:validation-val is deprecated.  Use robot_local_control_msgs-srv:validation instead.")
  (validation m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SimpleGoToWithValidation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:command-val is deprecated.  Use robot_local_control_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SimpleGoToWithValidation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:goal-val is deprecated.  Use robot_local_control_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleGoToWithValidation-request>) ostream)
  "Serializes a message object of type '<SimpleGoToWithValidation-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'validation) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleGoToWithValidation-request>) istream)
  "Deserializes a message object of type '<SimpleGoToWithValidation-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'validation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleGoToWithValidation-request>)))
  "Returns string type for a service object of type '<SimpleGoToWithValidation-request>"
  "robot_local_control_msgs/SimpleGoToWithValidationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleGoToWithValidation-request)))
  "Returns string type for a service object of type 'SimpleGoToWithValidation-request"
  "robot_local_control_msgs/SimpleGoToWithValidationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleGoToWithValidation-request>)))
  "Returns md5sum for a message object of type '<SimpleGoToWithValidation-request>"
  "46d9f1402ff63aa3569c867ae6540606")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleGoToWithValidation-request)))
  "Returns md5sum for a message object of type 'SimpleGoToWithValidation-request"
  "46d9f1402ff63aa3569c867ae6540606")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleGoToWithValidation-request>)))
  "Returns full string definition for message of type '<SimpleGoToWithValidation-request>"
  (cl:format cl:nil "float32 max_velocity~%bool validation~%string command~%geometry_msgs/Pose2D goal~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleGoToWithValidation-request)))
  "Returns full string definition for message of type 'SimpleGoToWithValidation-request"
  (cl:format cl:nil "float32 max_velocity~%bool validation~%string command~%geometry_msgs/Pose2D goal~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleGoToWithValidation-request>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleGoToWithValidation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleGoToWithValidation-request
    (cl:cons ':max_velocity (max_velocity msg))
    (cl:cons ':validation (validation msg))
    (cl:cons ':command (command msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude SimpleGoToWithValidation-response.msg.html

(cl:defclass <SimpleGoToWithValidation-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SimpleGoToWithValidation-response (<SimpleGoToWithValidation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleGoToWithValidation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleGoToWithValidation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SimpleGoToWithValidation-response> is deprecated: use robot_local_control_msgs-srv:SimpleGoToWithValidation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SimpleGoToWithValidation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SimpleGoToWithValidation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleGoToWithValidation-response>) ostream)
  "Serializes a message object of type '<SimpleGoToWithValidation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleGoToWithValidation-response>) istream)
  "Deserializes a message object of type '<SimpleGoToWithValidation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleGoToWithValidation-response>)))
  "Returns string type for a service object of type '<SimpleGoToWithValidation-response>"
  "robot_local_control_msgs/SimpleGoToWithValidationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleGoToWithValidation-response)))
  "Returns string type for a service object of type 'SimpleGoToWithValidation-response"
  "robot_local_control_msgs/SimpleGoToWithValidationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleGoToWithValidation-response>)))
  "Returns md5sum for a message object of type '<SimpleGoToWithValidation-response>"
  "46d9f1402ff63aa3569c867ae6540606")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleGoToWithValidation-response)))
  "Returns md5sum for a message object of type 'SimpleGoToWithValidation-response"
  "46d9f1402ff63aa3569c867ae6540606")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleGoToWithValidation-response>)))
  "Returns full string definition for message of type '<SimpleGoToWithValidation-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleGoToWithValidation-response)))
  "Returns full string definition for message of type 'SimpleGoToWithValidation-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleGoToWithValidation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleGoToWithValidation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleGoToWithValidation-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimpleGoToWithValidation)))
  'SimpleGoToWithValidation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimpleGoToWithValidation)))
  'SimpleGoToWithValidation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleGoToWithValidation)))
  "Returns string type for a service object of type '<SimpleGoToWithValidation>"
  "robot_local_control_msgs/SimpleGoToWithValidation")