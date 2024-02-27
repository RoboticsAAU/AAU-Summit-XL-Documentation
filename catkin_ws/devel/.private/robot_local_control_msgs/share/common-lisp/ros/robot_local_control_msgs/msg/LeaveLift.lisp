; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude LeaveLift.msg.html

(cl:defclass <LeaveLift> (roslisp-msg-protocol:ros-message)
  ((floor
    :reader floor
    :initarg :floor
    :type cl:string
    :initform ""))
)

(cl:defclass LeaveLift (<LeaveLift>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeaveLift>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeaveLift)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<LeaveLift> is deprecated: use robot_local_control_msgs-msg:LeaveLift instead.")))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <LeaveLift>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:floor-val is deprecated.  Use robot_local_control_msgs-msg:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeaveLift>) ostream)
  "Serializes a message object of type '<LeaveLift>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeaveLift>) istream)
  "Deserializes a message object of type '<LeaveLift>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeaveLift>)))
  "Returns string type for a message object of type '<LeaveLift>"
  "robot_local_control_msgs/LeaveLift")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeaveLift)))
  "Returns string type for a message object of type 'LeaveLift"
  "robot_local_control_msgs/LeaveLift")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeaveLift>)))
  "Returns md5sum for a message object of type '<LeaveLift>"
  "080ca89808f79b4dda698c3815d2f4aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeaveLift)))
  "Returns md5sum for a message object of type 'LeaveLift"
  "080ca89808f79b4dda698c3815d2f4aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeaveLift>)))
  "Returns full string definition for message of type '<LeaveLift>"
  (cl:format cl:nil "# valid values: floor_0, floor_1~%string floor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeaveLift)))
  "Returns full string definition for message of type 'LeaveLift"
  (cl:format cl:nil "# valid values: floor_0, floor_1~%string floor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeaveLift>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'floor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeaveLift>))
  "Converts a ROS message object to a list"
  (cl:list 'LeaveLift
    (cl:cons ':floor (floor msg))
))
