; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude Place.msg.html

(cl:defclass <Place> (roslisp-msg-protocol:ros-message)
  ((pick_frame_id
    :reader pick_frame_id
    :initarg :pick_frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass Place (<Place>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Place>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Place)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<Place> is deprecated: use robot_local_control_msgs-msg:Place instead.")))

(cl:ensure-generic-function 'pick_frame_id-val :lambda-list '(m))
(cl:defmethod pick_frame_id-val ((m <Place>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:pick_frame_id-val is deprecated.  Use robot_local_control_msgs-msg:pick_frame_id instead.")
  (pick_frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Place>) ostream)
  "Serializes a message object of type '<Place>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pick_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pick_frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Place>) istream)
  "Deserializes a message object of type '<Place>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pick_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Place>)))
  "Returns string type for a message object of type '<Place>"
  "robot_local_control_msgs/Place")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place)))
  "Returns string type for a message object of type 'Place"
  "robot_local_control_msgs/Place")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Place>)))
  "Returns md5sum for a message object of type '<Place>"
  "39794562465f5c9f200e6d805267c9b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Place)))
  "Returns md5sum for a message object of type 'Place"
  "39794562465f5c9f200e6d805267c9b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Place>)))
  "Returns full string definition for message of type '<Place>"
  (cl:format cl:nil "string pick_frame_id # object, represented by its frame, that is to be picked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Place)))
  "Returns full string definition for message of type 'Place"
  (cl:format cl:nil "string pick_frame_id # object, represented by its frame, that is to be picked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Place>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pick_frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Place>))
  "Converts a ROS message object to a list"
  (cl:list 'Place
    (cl:cons ':pick_frame_id (pick_frame_id msg))
))
