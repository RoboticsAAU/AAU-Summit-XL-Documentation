; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SetFrameID-request.msg.html

(cl:defclass <SetFrameID-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SetFrameID-request (<SetFrameID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFrameID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFrameID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetFrameID-request> is deprecated: use robot_local_control_msgs-srv:SetFrameID-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetFrameID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:frame_id-val is deprecated.  Use robot_local_control_msgs-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFrameID-request>) ostream)
  "Serializes a message object of type '<SetFrameID-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFrameID-request>) istream)
  "Deserializes a message object of type '<SetFrameID-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFrameID-request>)))
  "Returns string type for a service object of type '<SetFrameID-request>"
  "robot_local_control_msgs/SetFrameIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFrameID-request)))
  "Returns string type for a service object of type 'SetFrameID-request"
  "robot_local_control_msgs/SetFrameIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFrameID-request>)))
  "Returns md5sum for a message object of type '<SetFrameID-request>"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFrameID-request)))
  "Returns md5sum for a message object of type 'SetFrameID-request"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFrameID-request>)))
  "Returns full string definition for message of type '<SetFrameID-request>"
  (cl:format cl:nil "string frame_id   # the new global frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFrameID-request)))
  "Returns full string definition for message of type 'SetFrameID-request"
  (cl:format cl:nil "string frame_id   # the new global frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFrameID-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFrameID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFrameID-request
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SetFrameID-response.msg.html

(cl:defclass <SetFrameID-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetFrameID-response (<SetFrameID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFrameID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFrameID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SetFrameID-response> is deprecated: use robot_local_control_msgs-srv:SetFrameID-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetFrameID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:success-val is deprecated.  Use robot_local_control_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetFrameID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:message-val is deprecated.  Use robot_local_control_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFrameID-response>) ostream)
  "Serializes a message object of type '<SetFrameID-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFrameID-response>) istream)
  "Deserializes a message object of type '<SetFrameID-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFrameID-response>)))
  "Returns string type for a service object of type '<SetFrameID-response>"
  "robot_local_control_msgs/SetFrameIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFrameID-response)))
  "Returns string type for a service object of type 'SetFrameID-response"
  "robot_local_control_msgs/SetFrameIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFrameID-response>)))
  "Returns md5sum for a message object of type '<SetFrameID-response>"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFrameID-response)))
  "Returns md5sum for a message object of type 'SetFrameID-response"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFrameID-response>)))
  "Returns full string definition for message of type '<SetFrameID-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFrameID-response)))
  "Returns full string definition for message of type 'SetFrameID-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFrameID-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFrameID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFrameID-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFrameID)))
  'SetFrameID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFrameID)))
  'SetFrameID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFrameID)))
  "Returns string type for a service object of type '<SetFrameID>"
  "robot_local_control_msgs/SetFrameID")