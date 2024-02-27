; Auto-generated. Do not edit!


(cl:in-package fake_joint_position_publisher-srv)


;//! \htmlinclude SetJoint-request.msg.html

(cl:defclass <SetJoint-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetJoint-request (<SetJoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fake_joint_position_publisher-srv:<SetJoint-request> is deprecated: use fake_joint_position_publisher-srv:SetJoint-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <SetJoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:joint_name-val is deprecated.  Use fake_joint_position_publisher-srv:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SetJoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:position-val is deprecated.  Use fake_joint_position_publisher-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJoint-request>) ostream)
  "Serializes a message object of type '<SetJoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJoint-request>) istream)
  "Deserializes a message object of type '<SetJoint-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJoint-request>)))
  "Returns string type for a service object of type '<SetJoint-request>"
  "fake_joint_position_publisher/SetJointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoint-request)))
  "Returns string type for a service object of type 'SetJoint-request"
  "fake_joint_position_publisher/SetJointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJoint-request>)))
  "Returns md5sum for a message object of type '<SetJoint-request>"
  "2463b264eef9b352ee7f6a0b85cc616a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJoint-request)))
  "Returns md5sum for a message object of type 'SetJoint-request"
  "2463b264eef9b352ee7f6a0b85cc616a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJoint-request>)))
  "Returns full string definition for message of type '<SetJoint-request>"
  (cl:format cl:nil "string joint_name~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJoint-request)))
  "Returns full string definition for message of type 'SetJoint-request"
  (cl:format cl:nil "string joint_name~%float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJoint-request
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude SetJoint-response.msg.html

(cl:defclass <SetJoint-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJoint-response (<SetJoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fake_joint_position_publisher-srv:<SetJoint-response> is deprecated: use fake_joint_position_publisher-srv:SetJoint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:success-val is deprecated.  Use fake_joint_position_publisher-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetJoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:message-val is deprecated.  Use fake_joint_position_publisher-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJoint-response>) ostream)
  "Serializes a message object of type '<SetJoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJoint-response>) istream)
  "Deserializes a message object of type '<SetJoint-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJoint-response>)))
  "Returns string type for a service object of type '<SetJoint-response>"
  "fake_joint_position_publisher/SetJointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoint-response)))
  "Returns string type for a service object of type 'SetJoint-response"
  "fake_joint_position_publisher/SetJointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJoint-response>)))
  "Returns md5sum for a message object of type '<SetJoint-response>"
  "2463b264eef9b352ee7f6a0b85cc616a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJoint-response)))
  "Returns md5sum for a message object of type 'SetJoint-response"
  "2463b264eef9b352ee7f6a0b85cc616a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJoint-response>)))
  "Returns full string definition for message of type '<SetJoint-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJoint-response)))
  "Returns full string definition for message of type 'SetJoint-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJoint-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJoint-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJoint)))
  'SetJoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJoint)))
  'SetJoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoint)))
  "Returns string type for a service object of type '<SetJoint>"
  "fake_joint_position_publisher/SetJoint")