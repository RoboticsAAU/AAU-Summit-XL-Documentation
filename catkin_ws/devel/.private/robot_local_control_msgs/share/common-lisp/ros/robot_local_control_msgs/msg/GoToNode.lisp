; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude GoToNode.msg.html

(cl:defclass <GoToNode> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:fixnum
    :initform 0)
   (orientation_offset
    :reader orientation_offset
    :initarg :orientation_offset
    :type cl:float
    :initform 0.0)
   (position_offset
    :reader position_offset
    :initarg :position_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass GoToNode (<GoToNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<GoToNode> is deprecated: use robot_local_control_msgs-msg:GoToNode instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <GoToNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:node-val is deprecated.  Use robot_local_control_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'orientation_offset-val :lambda-list '(m))
(cl:defmethod orientation_offset-val ((m <GoToNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:orientation_offset-val is deprecated.  Use robot_local_control_msgs-msg:orientation_offset instead.")
  (orientation_offset m))

(cl:ensure-generic-function 'position_offset-val :lambda-list '(m))
(cl:defmethod position_offset-val ((m <GoToNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:position_offset-val is deprecated.  Use robot_local_control_msgs-msg:position_offset instead.")
  (position_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToNode>) ostream)
  "Serializes a message object of type '<GoToNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToNode>) istream)
  "Deserializes a message object of type '<GoToNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToNode>)))
  "Returns string type for a message object of type '<GoToNode>"
  "robot_local_control_msgs/GoToNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToNode)))
  "Returns string type for a message object of type 'GoToNode"
  "robot_local_control_msgs/GoToNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToNode>)))
  "Returns md5sum for a message object of type '<GoToNode>"
  "509df8f1262ef6d589b41c15ff4e1f1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToNode)))
  "Returns md5sum for a message object of type 'GoToNode"
  "509df8f1262ef6d589b41c15ff4e1f1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToNode>)))
  "Returns full string definition for message of type '<GoToNode>"
  (cl:format cl:nil "uint16 node~%float32 orientation_offset~%float32 position_offset~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToNode)))
  "Returns full string definition for message of type 'GoToNode"
  (cl:format cl:nil "uint16 node~%float32 orientation_offset~%float32 position_offset~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToNode>))
  (cl:+ 0
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToNode>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToNode
    (cl:cons ':node (node msg))
    (cl:cons ':orientation_offset (orientation_offset msg))
    (cl:cons ':position_offset (position_offset msg))
))
