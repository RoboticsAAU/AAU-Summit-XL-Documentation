; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude FindMagneticGuide.msg.html

(cl:defclass <FindMagneticGuide> (roslisp-msg-protocol:ros-message)
  ((turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type cl:string
    :initform "")
   (in_distance
    :reader in_distance
    :initarg :in_distance
    :type cl:float
    :initform 0.0)
   (lane
    :reader lane
    :initarg :lane
    :type cl:integer
    :initform 0))
)

(cl:defclass FindMagneticGuide (<FindMagneticGuide>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindMagneticGuide>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindMagneticGuide)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<FindMagneticGuide> is deprecated: use robot_local_control_msgs-msg:FindMagneticGuide instead.")))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <FindMagneticGuide>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:turn_direction-val is deprecated.  Use robot_local_control_msgs-msg:turn_direction instead.")
  (turn_direction m))

(cl:ensure-generic-function 'in_distance-val :lambda-list '(m))
(cl:defmethod in_distance-val ((m <FindMagneticGuide>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:in_distance-val is deprecated.  Use robot_local_control_msgs-msg:in_distance instead.")
  (in_distance m))

(cl:ensure-generic-function 'lane-val :lambda-list '(m))
(cl:defmethod lane-val ((m <FindMagneticGuide>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:lane-val is deprecated.  Use robot_local_control_msgs-msg:lane instead.")
  (lane m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindMagneticGuide>) ostream)
  "Serializes a message object of type '<FindMagneticGuide>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turn_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turn_direction))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'in_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindMagneticGuide>) istream)
  "Deserializes a message object of type '<FindMagneticGuide>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turn_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'in_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lane)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lane)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindMagneticGuide>)))
  "Returns string type for a message object of type '<FindMagneticGuide>"
  "robot_local_control_msgs/FindMagneticGuide")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindMagneticGuide)))
  "Returns string type for a message object of type 'FindMagneticGuide"
  "robot_local_control_msgs/FindMagneticGuide")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindMagneticGuide>)))
  "Returns md5sum for a message object of type '<FindMagneticGuide>"
  "be301344d82db2581c38425519475c66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindMagneticGuide)))
  "Returns md5sum for a message object of type 'FindMagneticGuide"
  "be301344d82db2581c38425519475c66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindMagneticGuide>)))
  "Returns full string definition for message of type '<FindMagneticGuide>"
  (cl:format cl:nil "#maximum distance to search the guide~%string turn_direction~%float32 in_distance~%uint32 lane~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindMagneticGuide)))
  "Returns full string definition for message of type 'FindMagneticGuide"
  (cl:format cl:nil "#maximum distance to search the guide~%string turn_direction~%float32 in_distance~%uint32 lane~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindMagneticGuide>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turn_direction))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindMagneticGuide>))
  "Converts a ROS message object to a list"
  (cl:list 'FindMagneticGuide
    (cl:cons ':turn_direction (turn_direction msg))
    (cl:cons ':in_distance (in_distance msg))
    (cl:cons ':lane (lane msg))
))
