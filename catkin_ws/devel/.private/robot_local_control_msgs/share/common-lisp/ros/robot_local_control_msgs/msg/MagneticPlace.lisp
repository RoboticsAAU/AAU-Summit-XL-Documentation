; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MagneticPlace.msg.html

(cl:defclass <MagneticPlace> (roslisp-msg-protocol:ros-message)
  ((cart_position
    :reader cart_position
    :initarg :cart_position
    :type cl:integer
    :initform 0))
)

(cl:defclass MagneticPlace (<MagneticPlace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagneticPlace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagneticPlace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MagneticPlace> is deprecated: use robot_local_control_msgs-msg:MagneticPlace instead.")))

(cl:ensure-generic-function 'cart_position-val :lambda-list '(m))
(cl:defmethod cart_position-val ((m <MagneticPlace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:cart_position-val is deprecated.  Use robot_local_control_msgs-msg:cart_position instead.")
  (cart_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagneticPlace>) ostream)
  "Serializes a message object of type '<MagneticPlace>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cart_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cart_position)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagneticPlace>) istream)
  "Deserializes a message object of type '<MagneticPlace>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cart_position)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagneticPlace>)))
  "Returns string type for a message object of type '<MagneticPlace>"
  "robot_local_control_msgs/MagneticPlace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagneticPlace)))
  "Returns string type for a message object of type 'MagneticPlace"
  "robot_local_control_msgs/MagneticPlace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagneticPlace>)))
  "Returns md5sum for a message object of type '<MagneticPlace>"
  "4da27e813bf08746398944b7800a7f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagneticPlace)))
  "Returns md5sum for a message object of type 'MagneticPlace"
  "4da27e813bf08746398944b7800a7f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagneticPlace>)))
  "Returns full string definition for message of type '<MagneticPlace>"
  (cl:format cl:nil "uint32 cart_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagneticPlace)))
  "Returns full string definition for message of type 'MagneticPlace"
  (cl:format cl:nil "uint32 cart_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagneticPlace>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagneticPlace>))
  "Converts a ROS message object to a list"
  (cl:list 'MagneticPlace
    (cl:cons ':cart_position (cart_position msg))
))
