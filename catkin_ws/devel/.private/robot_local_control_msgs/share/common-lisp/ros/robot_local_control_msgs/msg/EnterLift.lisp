; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude EnterLift.msg.html

(cl:defclass <EnterLift> (roslisp-msg-protocol:ros-message)
  ((floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform ""))
)

(cl:defclass EnterLift (<EnterLift>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnterLift>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnterLift)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<EnterLift> is deprecated: use robot_local_control_msgs-msg:EnterLift instead.")))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <EnterLift>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:floor-val is deprecated.  Use robot_local_control_msgs-msg:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnterLift>) ostream)
  "Serializes a message object of type '<EnterLift>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnterLift>) istream)
  "Deserializes a message object of type '<EnterLift>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnterLift>)))
  "Returns string type for a message object of type '<EnterLift>"
  "robot_local_control_msgs/EnterLift")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnterLift)))
  "Returns string type for a message object of type 'EnterLift"
  "robot_local_control_msgs/EnterLift")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnterLift>)))
  "Returns md5sum for a message object of type '<EnterLift>"
  "080ca89808f79b4dda698c3815d2f4aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnterLift)))
  "Returns md5sum for a message object of type 'EnterLift"
  "080ca89808f79b4dda698c3815d2f4aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnterLift>)))
  "Returns full string definition for message of type '<EnterLift>"
  (cl:format cl:nil "# valid values: floor_0, floor_1~%string floor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnterLift)))
  "Returns full string definition for message of type 'EnterLift"
  (cl:format cl:nil "# valid values: floor_0, floor_1~%string floor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnterLift>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'floor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnterLift>))
  "Converts a ROS message object to a list"
  (cl:list 'EnterLift
    (cl:cons ':floor (floor msg))
))
