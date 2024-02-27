; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude EnterShower.msg.html

(cl:defclass <EnterShower> (roslisp-msg-protocol:ros-message)
  ((from
    :reader from
    :initarg :from
    :type cl:string
    :initform "")
   (door
    :reader door
    :initarg :door
    :type cl:string
    :initform ""))
)

(cl:defclass EnterShower (<EnterShower>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnterShower>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnterShower)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<EnterShower> is deprecated: use robot_local_control_msgs-msg:EnterShower instead.")))

(cl:ensure-generic-function 'from-val :lambda-list '(m))
(cl:defmethod from-val ((m <EnterShower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:from-val is deprecated.  Use robot_local_control_msgs-msg:from instead.")
  (from m))

(cl:ensure-generic-function 'door-val :lambda-list '(m))
(cl:defmethod door-val ((m <EnterShower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:door-val is deprecated.  Use robot_local_control_msgs-msg:door instead.")
  (door m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnterShower>) ostream)
  "Serializes a message object of type '<EnterShower>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'door))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'door))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnterShower>) istream)
  "Deserializes a message object of type '<EnterShower>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'door) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'door) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnterShower>)))
  "Returns string type for a message object of type '<EnterShower>"
  "robot_local_control_msgs/EnterShower")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnterShower)))
  "Returns string type for a message object of type 'EnterShower"
  "robot_local_control_msgs/EnterShower")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnterShower>)))
  "Returns md5sum for a message object of type '<EnterShower>"
  "9cc80ebefcfb199be1c6890e9744d51c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnterShower)))
  "Returns md5sum for a message object of type 'EnterShower"
  "9cc80ebefcfb199be1c6890e9744d51c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnterShower>)))
  "Returns full string definition for message of type '<EnterShower>"
  (cl:format cl:nil "# valid values: warehouse, production~%string from~%# valid values: left, right, as seen from warehouse side~%string door~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnterShower)))
  "Returns full string definition for message of type 'EnterShower"
  (cl:format cl:nil "# valid values: warehouse, production~%string from~%# valid values: left, right, as seen from warehouse side~%string door~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnterShower>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'from))
     4 (cl:length (cl:slot-value msg 'door))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnterShower>))
  "Converts a ROS message object to a list"
  (cl:list 'EnterShower
    (cl:cons ':from (from msg))
    (cl:cons ':door (door msg))
))
