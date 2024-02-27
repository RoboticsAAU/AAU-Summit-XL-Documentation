; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MagneticGoTo.msg.html

(cl:defclass <MagneticGoTo> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform "")
   (speed_factor
    :reader speed_factor
    :initarg :speed_factor
    :type cl:float
    :initform 0.0)
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

(cl:defclass MagneticGoTo (<MagneticGoTo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticGoTo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticGoTo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MagneticGoTo> is deprecated: use robot_local_control_msgs-msg:MagneticGoTo instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <MagneticGoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:node-val is deprecated.  Use robot_local_control_msgs-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'speed_factor-val :lambda-list '(m))
(cl:defmethod speed_factor-val ((m <MagneticGoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:speed_factor-val is deprecated.  Use robot_local_control_msgs-msg:speed_factor instead.")
  (speed_factor m))

(cl:ensure-generic-function 'orientation_offset-val :lambda-list '(m))
(cl:defmethod orientation_offset-val ((m <MagneticGoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:orientation_offset-val is deprecated.  Use robot_local_control_msgs-msg:orientation_offset instead.")
  (orientation_offset m))

(cl:ensure-generic-function 'position_offset-val :lambda-list '(m))
(cl:defmethod position_offset-val ((m <MagneticGoTo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:position_offset-val is deprecated.  Use robot_local_control_msgs-msg:position_offset instead.")
  (position_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticGoTo>) ostream)
  "Serializes a message object of type '<MagneticGoTo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticGoTo>) istream)
  "Deserializes a message object of type '<MagneticGoTo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_factor) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticGoTo>)))
  "Returns string type for a message object of type '<MagneticGoTo>"
  "robot_local_control_msgs/MagneticGoTo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticGoTo)))
  "Returns string type for a message object of type 'MagneticGoTo"
  "robot_local_control_msgs/MagneticGoTo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticGoTo>)))
  "Returns md5sum for a message object of type '<MagneticGoTo>"
  "5510a782447d53208d368d42bcba9b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticGoTo)))
  "Returns md5sum for a message object of type 'MagneticGoTo"
  "5510a782447d53208d368d42bcba9b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticGoTo>)))
  "Returns full string definition for message of type '<MagneticGoTo>"
  (cl:format cl:nil "string node~%float32 speed_factor~%float32 orientation_offset~%float32 position_offset~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticGoTo)))
  "Returns full string definition for message of type 'MagneticGoTo"
  (cl:format cl:nil "string node~%float32 speed_factor~%float32 orientation_offset~%float32 position_offset~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticGoTo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticGoTo>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticGoTo
    (cl:cons ':node (node msg))
    (cl:cons ':speed_factor (speed_factor msg))
    (cl:cons ':orientation_offset (orientation_offset msg))
    (cl:cons ':position_offset (position_offset msg))
))
