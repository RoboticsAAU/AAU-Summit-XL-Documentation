; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude PostPlace.msg.html

(cl:defclass <PostPlace> (roslisp-msg-protocol:ros-message)
  ((turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type cl:string
    :initform ""))
)

(cl:defclass PostPlace (<PostPlace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PostPlace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PostPlace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<PostPlace> is deprecated: use robot_local_control_msgs-msg:PostPlace instead.")))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <PostPlace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:turn_direction-val is deprecated.  Use robot_local_control_msgs-msg:turn_direction instead.")
  (turn_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PostPlace>) ostream)
  "Serializes a message object of type '<PostPlace>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn_direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PostPlace>) istream)
  "Deserializes a message object of type '<PostPlace>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turn_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PostPlace>)))
  "Returns string type for a message object of type '<PostPlace>"
  "robot_local_control_msgs/PostPlace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PostPlace)))
  "Returns string type for a message object of type 'PostPlace"
  "robot_local_control_msgs/PostPlace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PostPlace>)))
  "Returns md5sum for a message object of type '<PostPlace>"
  "b601e40d4e05ee7ec9ac6a6e0a8142c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PostPlace)))
  "Returns md5sum for a message object of type 'PostPlace"
  "b601e40d4e05ee7ec9ac6a6e0a8142c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PostPlace>)))
  "Returns full string definition for message of type '<PostPlace>"
  (cl:format cl:nil "string turn_direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PostPlace)))
  "Returns full string definition for message of type 'PostPlace"
  (cl:format cl:nil "string turn_direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PostPlace>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turn_direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PostPlace>))
  "Converts a ROS message object to a list"
  (cl:list 'PostPlace
    (cl:cons ':turn_direction (turn_direction msg))
))
