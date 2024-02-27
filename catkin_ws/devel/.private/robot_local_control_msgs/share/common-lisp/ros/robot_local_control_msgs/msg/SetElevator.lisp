; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude SetElevator.msg.html

(cl:defclass <SetElevator> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetElevator (<SetElevator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetElevator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetElevator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<SetElevator> is deprecated: use robot_local_control_msgs-msg:SetElevator instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SetElevator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:height-val is deprecated.  Use robot_local_control_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetElevator>) ostream)
  "Serializes a message object of type '<SetElevator>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetElevator>) istream)
  "Deserializes a message object of type '<SetElevator>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetElevator>)))
  "Returns string type for a message object of type '<SetElevator>"
  "robot_local_control_msgs/SetElevator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevator)))
  "Returns string type for a message object of type 'SetElevator"
  "robot_local_control_msgs/SetElevator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetElevator>)))
  "Returns md5sum for a message object of type '<SetElevator>"
  "384d8dd5cbcb4f6e145e6b246fa635b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetElevator)))
  "Returns md5sum for a message object of type 'SetElevator"
  "384d8dd5cbcb4f6e145e6b246fa635b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetElevator>)))
  "Returns full string definition for message of type '<SetElevator>"
  (cl:format cl:nil "float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetElevator)))
  "Returns full string definition for message of type 'SetElevator"
  (cl:format cl:nil "float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetElevator>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetElevator>))
  "Converts a ROS message object to a list"
  (cl:list 'SetElevator
    (cl:cons ':height (height msg))
))
