; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude Charge.msg.html

(cl:defclass <Charge> (roslisp-msg-protocol:ros-message)
  ((charge_station
    :reader charge_station
    :initarg :charge_station
    :type cl:string
    :initform ""))
)

(cl:defclass Charge (<Charge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Charge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Charge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<Charge> is deprecated: use robot_local_control_msgs-msg:Charge instead.")))

(cl:ensure-generic-function 'charge_station-val :lambda-list '(m))
(cl:defmethod charge_station-val ((m <Charge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:charge_station-val is deprecated.  Use robot_local_control_msgs-msg:charge_station instead.")
  (charge_station m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Charge>) ostream)
  "Serializes a message object of type '<Charge>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'charge_station))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'charge_station))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Charge>) istream)
  "Deserializes a message object of type '<Charge>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_station) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'charge_station) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Charge>)))
  "Returns string type for a message object of type '<Charge>"
  "robot_local_control_msgs/Charge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Charge)))
  "Returns string type for a message object of type 'Charge"
  "robot_local_control_msgs/Charge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Charge>)))
  "Returns md5sum for a message object of type '<Charge>"
  "010959f65202c06bff3a36da5001d5c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Charge)))
  "Returns md5sum for a message object of type 'Charge"
  "010959f65202c06bff3a36da5001d5c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Charge>)))
  "Returns full string definition for message of type '<Charge>"
  (cl:format cl:nil "string charge_station~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Charge)))
  "Returns full string definition for message of type 'Charge"
  (cl:format cl:nil "string charge_station~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Charge>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'charge_station))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Charge>))
  "Converts a ROS message object to a list"
  (cl:list 'Charge
    (cl:cons ':charge_station (charge_station msg))
))
