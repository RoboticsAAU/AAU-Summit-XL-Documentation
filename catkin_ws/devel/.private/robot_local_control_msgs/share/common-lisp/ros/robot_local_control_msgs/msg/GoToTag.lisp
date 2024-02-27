; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude GoToTag.msg.html

(cl:defclass <GoToTag> (roslisp-msg-protocol:ros-message)
  ((tag_name
    :reader tag_name
    :initarg :tag_name
    :type cl:string
    :initform ""))
)

(cl:defclass GoToTag (<GoToTag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToTag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToTag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<GoToTag> is deprecated: use robot_local_control_msgs-msg:GoToTag instead.")))

(cl:ensure-generic-function 'tag_name-val :lambda-list '(m))
(cl:defmethod tag_name-val ((m <GoToTag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:tag_name-val is deprecated.  Use robot_local_control_msgs-msg:tag_name instead.")
  (tag_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToTag>) ostream)
  "Serializes a message object of type '<GoToTag>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToTag>) istream)
  "Deserializes a message object of type '<GoToTag>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToTag>)))
  "Returns string type for a message object of type '<GoToTag>"
  "robot_local_control_msgs/GoToTag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToTag)))
  "Returns string type for a message object of type 'GoToTag"
  "robot_local_control_msgs/GoToTag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToTag>)))
  "Returns md5sum for a message object of type '<GoToTag>"
  "64fe6f350e21c129c2de5c718c8c8ea0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToTag)))
  "Returns md5sum for a message object of type 'GoToTag"
  "64fe6f350e21c129c2de5c718c8c8ea0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToTag>)))
  "Returns full string definition for message of type '<GoToTag>"
  (cl:format cl:nil "string tag_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToTag)))
  "Returns full string definition for message of type 'GoToTag"
  (cl:format cl:nil "string tag_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToTag>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToTag>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToTag
    (cl:cons ':tag_name (tag_name msg))
))
