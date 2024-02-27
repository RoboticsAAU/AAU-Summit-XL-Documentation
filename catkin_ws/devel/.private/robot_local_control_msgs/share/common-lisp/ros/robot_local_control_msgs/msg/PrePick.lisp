; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude PrePick.msg.html

(cl:defclass <PrePick> (roslisp-msg-protocol:ros-message)
  ((turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type cl:string
    :initform ""))
)

(cl:defclass PrePick (<PrePick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrePick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrePick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<PrePick> is deprecated: use robot_local_control_msgs-msg:PrePick instead.")))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <PrePick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:turn_direction-val is deprecated.  Use robot_local_control_msgs-msg:turn_direction instead.")
  (turn_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrePick>) ostream)
  "Serializes a message object of type '<PrePick>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn_direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrePick>) istream)
  "Deserializes a message object of type '<PrePick>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrePick>)))
  "Returns string type for a message object of type '<PrePick>"
  "robot_local_control_msgs/PrePick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrePick)))
  "Returns string type for a message object of type 'PrePick"
  "robot_local_control_msgs/PrePick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrePick>)))
  "Returns md5sum for a message object of type '<PrePick>"
  "b601e40d4e05ee7ec9ac6a6e0a8142c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrePick)))
  "Returns md5sum for a message object of type 'PrePick"
  "b601e40d4e05ee7ec9ac6a6e0a8142c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrePick>)))
  "Returns full string definition for message of type '<PrePick>"
  (cl:format cl:nil "string turn_direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrePick)))
  "Returns full string definition for message of type 'PrePick"
  (cl:format cl:nil "string turn_direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrePick>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turn_direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrePick>))
  "Converts a ROS message object to a list"
  (cl:list 'PrePick
    (cl:cons ':turn_direction (turn_direction msg))
))
