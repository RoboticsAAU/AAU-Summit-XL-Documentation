; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MagneticPick.msg.html

(cl:defclass <MagneticPick> (roslisp-msg-protocol:ros-message)
  ((lane
    :reader lane
    :initarg :lane
    :type cl:integer
    :initform 0)
   (cart_position
    :reader cart_position
    :initarg :cart_position
    :type cl:integer
    :initform 0)
   (turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type cl:string
    :initform "")
   (allow_markers
    :reader allow_markers
    :initarg :allow_markers
    :type cl:boolean
    :initform cl:nil)
   (cart_id
    :reader cart_id
    :initarg :cart_id
    :type cl:string
    :initform ""))
)

(cl:defclass MagneticPick (<MagneticPick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticPick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticPick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MagneticPick> is deprecated: use robot_local_control_msgs-msg:MagneticPick instead.")))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <MagneticPick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:lane-val is deprecated.  Use robot_local_control_msgs-msg:lane instead.")
  (lane m))

(cl:ensure-generic-function 'cart_position-val :lambda-list '(m))
(cl:defmethod cart_position-val ((m <MagneticPick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:cart_position-val is deprecated.  Use robot_local_control_msgs-msg:cart_position instead.")
  (cart_position m))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <MagneticPick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:turn_direction-val is deprecated.  Use robot_local_control_msgs-msg:turn_direction instead.")
  (turn_direction m))

(cl:ensure-generic-function 'allow_markers-val :lambda-list '(m))
(cl:defmethod allow_markers-val ((m <MagneticPick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:allow_markers-val is deprecated.  Use robot_local_control_msgs-msg:allow_markers instead.")
  (allow_markers m))

(cl:ensure-generic-function 'cart_id-val :lambda-list '(m))
(cl:defmethod cart_id-val ((m <MagneticPick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:cart_id-val is deprecated.  Use robot_local_control_msgs-msg:cart_id instead.")
  (cart_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticPick>) ostream)
  "Serializes a message object of type '<MagneticPick>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cart_position)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn_direction))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_markers) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cart_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cart_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticPick>) istream)
  "Deserializes a message object of type '<MagneticPick>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turn_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'allow_markers) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cart_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cart_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticPick>)))
  "Returns string type for a message object of type '<MagneticPick>"
  "robot_local_control_msgs/MagneticPick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticPick)))
  "Returns string type for a message object of type 'MagneticPick"
  "robot_local_control_msgs/MagneticPick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticPick>)))
  "Returns md5sum for a message object of type '<MagneticPick>"
  "dbbbfba3c2d148076e68cb0bb8f8902d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticPick)))
  "Returns md5sum for a message object of type 'MagneticPick"
  "dbbbfba3c2d148076e68cb0bb8f8902d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticPick>)))
  "Returns full string definition for message of type '<MagneticPick>"
  (cl:format cl:nil "uint32 lane~%uint32 cart_position~%string turn_direction~%bool allow_markers~%string cart_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticPick)))
  "Returns full string definition for message of type 'MagneticPick"
  (cl:format cl:nil "uint32 lane~%uint32 cart_position~%string turn_direction~%bool allow_markers~%string cart_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticPick>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'turn_direction))
     1
     4 (cl:length (cl:slot-value msg 'cart_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticPick>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticPick
    (cl:cons ':lane (lane msg))
    (cl:cons ':cart_position (cart_position msg))
    (cl:cons ':turn_direction (turn_direction msg))
    (cl:cons ':allow_markers (allow_markers msg))
    (cl:cons ':cart_id (cart_id msg))
))
