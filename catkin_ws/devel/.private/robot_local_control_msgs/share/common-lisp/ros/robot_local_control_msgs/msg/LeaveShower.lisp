; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude LeaveShower.msg.html

(cl:defclass <LeaveShower> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LeaveShower (<LeaveShower>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeaveShower>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeaveShower)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<LeaveShower> is deprecated: use robot_local_control_msgs-msg:LeaveShower instead.")))

(cl:ensure-generic-function 'from-val :lambda-list '(m))
(cl:defmethod from-val ((m <LeaveShower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:from-val is deprecated.  Use robot_local_control_msgs-msg:from instead.")
  (from m))

(cl:ensure-generic-function 'door-val :lambda-list '(m))
(cl:defmethod door-val ((m <LeaveShower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:door-val is deprecated.  Use robot_local_control_msgs-msg:door instead.")
  (door m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeaveShower>) ostream)
  "Serializes a message object of type '<LeaveShower>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeaveShower>) istream)
  "Deserializes a message object of type '<LeaveShower>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeaveShower>)))
  "Returns string type for a message object of type '<LeaveShower>"
  "robot_local_control_msgs/LeaveShower")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeaveShower)))
  "Returns string type for a message object of type 'LeaveShower"
  "robot_local_control_msgs/LeaveShower")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeaveShower>)))
  "Returns md5sum for a message object of type '<LeaveShower>"
  "9cc80ebefcfb199be1c6890e9744d51c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeaveShower)))
  "Returns md5sum for a message object of type 'LeaveShower"
  "9cc80ebefcfb199be1c6890e9744d51c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeaveShower>)))
  "Returns full string definition for message of type '<LeaveShower>"
  (cl:format cl:nil "# valid values: warehouse, production~%string from~%# valid values: left, right, as seen from warehouse side~%string door~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeaveShower)))
  "Returns full string definition for message of type 'LeaveShower"
  (cl:format cl:nil "# valid values: warehouse, production~%string from~%# valid values: left, right, as seen from warehouse side~%string door~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeaveShower>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'from))
     4 (cl:length (cl:slot-value msg 'door))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeaveShower>))
  "Converts a ROS message object to a list"
  (cl:list 'LeaveShower
    (cl:cons ':from (from msg))
    (cl:cons ':door (door msg))
))
