; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MissionParamFloat.msg.html

(cl:defclass <MissionParamFloat> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionParamFloat (<MissionParamFloat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionParamFloat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionParamFloat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MissionParamFloat> is deprecated: use robot_local_control_msgs-msg:MissionParamFloat instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <MissionParamFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:name-val is deprecated.  Use robot_local_control_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MissionParamFloat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:value-val is deprecated.  Use robot_local_control_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionParamFloat>) ostream)
  "Serializes a message object of type '<MissionParamFloat>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionParamFloat>) istream)
  "Deserializes a message object of type '<MissionParamFloat>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionParamFloat>)))
  "Returns string type for a message object of type '<MissionParamFloat>"
  "robot_local_control_msgs/MissionParamFloat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionParamFloat)))
  "Returns string type for a message object of type 'MissionParamFloat"
  "robot_local_control_msgs/MissionParamFloat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionParamFloat>)))
  "Returns md5sum for a message object of type '<MissionParamFloat>"
  "db3486341a840969e8845548decf6f11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionParamFloat)))
  "Returns md5sum for a message object of type 'MissionParamFloat"
  "db3486341a840969e8845548decf6f11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionParamFloat>)))
  "Returns full string definition for message of type '<MissionParamFloat>"
  (cl:format cl:nil "# param name~%string name~%# param value~%float32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionParamFloat)))
  "Returns full string definition for message of type 'MissionParamFloat"
  (cl:format cl:nil "# param name~%string name~%# param value~%float32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionParamFloat>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionParamFloat>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionParamFloat
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
