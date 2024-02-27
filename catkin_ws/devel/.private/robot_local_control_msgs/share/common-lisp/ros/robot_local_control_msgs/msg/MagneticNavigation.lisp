; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MagneticNavigation.msg.html

(cl:defclass <MagneticNavigation> (roslisp-msg-protocol:ros-message)
  ((cart_position
    :reader cart_position
    :initarg :cart_position
    :type cl:integer
    :initform 0))
)

(cl:defclass MagneticNavigation (<MagneticNavigation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticNavigation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticNavigation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MagneticNavigation> is deprecated: use robot_local_control_msgs-msg:MagneticNavigation instead.")))

(cl:ensure-generic-function 'cart_position-val :lambda-list '(m))
(cl:defmethod cart_position-val ((m <MagneticNavigation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:cart_position-val is deprecated.  Use robot_local_control_msgs-msg:cart_position instead.")
  (cart_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticNavigation>) ostream)
  "Serializes a message object of type '<MagneticNavigation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cart_position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticNavigation>) istream)
  "Deserializes a message object of type '<MagneticNavigation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticNavigation>)))
  "Returns string type for a message object of type '<MagneticNavigation>"
  "robot_local_control_msgs/MagneticNavigation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticNavigation)))
  "Returns string type for a message object of type 'MagneticNavigation"
  "robot_local_control_msgs/MagneticNavigation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticNavigation>)))
  "Returns md5sum for a message object of type '<MagneticNavigation>"
  "4da27e813bf08746398944b7800a7f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticNavigation)))
  "Returns md5sum for a message object of type 'MagneticNavigation"
  "4da27e813bf08746398944b7800a7f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticNavigation>)))
  "Returns full string definition for message of type '<MagneticNavigation>"
  (cl:format cl:nil "uint32 cart_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticNavigation)))
  "Returns full string definition for message of type 'MagneticNavigation"
  (cl:format cl:nil "uint32 cart_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticNavigation>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticNavigation>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticNavigation
    (cl:cons ':cart_position (cart_position msg))
))
