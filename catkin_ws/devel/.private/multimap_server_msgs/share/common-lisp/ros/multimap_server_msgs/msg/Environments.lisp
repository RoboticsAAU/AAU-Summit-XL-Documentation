; Auto-generated. Do not edit!


(cl:in-package multimap_server_msgs-msg)


;//! \htmlinclude Environments.msg.html

(cl:defclass <Environments> (roslisp-msg-protocol:ros-message)
  ((environments
    :reader environments
    :initarg :environments
    :type (cl:vector multimap_server_msgs-msg:Environment)
   :initform (cl:make-array 0 :element-type 'multimap_server_msgs-msg:Environment :initial-element (cl:make-instance 'multimap_server_msgs-msg:Environment))))
)

(cl:defclass Environments (<Environments>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Environments>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Environments)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimap_server_msgs-msg:<Environments> is deprecated: use multimap_server_msgs-msg:Environments instead.")))

(cl:ensure-generic-function 'environments-val :lambda-list '(m))
(cl:defmethod environments-val ((m <Environments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimap_server_msgs-msg:environments-val is deprecated.  Use multimap_server_msgs-msg:environments instead.")
  (environments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Environments>) ostream)
  "Serializes a message object of type '<Environments>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'environments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'environments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Environments>) istream)
  "Deserializes a message object of type '<Environments>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'environments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'environments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimap_server_msgs-msg:Environment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Environments>)))
  "Returns string type for a message object of type '<Environments>"
  "multimap_server_msgs/Environments")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Environments)))
  "Returns string type for a message object of type 'Environments"
  "multimap_server_msgs/Environments")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Environments>)))
  "Returns md5sum for a message object of type '<Environments>"
  "a38a933443cfbee1aab1953a7c63dd5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Environments)))
  "Returns md5sum for a message object of type 'Environments"
  "a38a933443cfbee1aab1953a7c63dd5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Environments>)))
  "Returns full string definition for message of type '<Environments>"
  (cl:format cl:nil "Environment[] environments~%~%================================================================================~%MSG: multimap_server_msgs/Environment~%string name~%string global_frame~%string[] map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Environments)))
  "Returns full string definition for message of type 'Environments"
  (cl:format cl:nil "Environment[] environments~%~%================================================================================~%MSG: multimap_server_msgs/Environment~%string name~%string global_frame~%string[] map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Environments>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'environments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Environments>))
  "Converts a ROS message object to a list"
  (cl:list 'Environments
    (cl:cons ':environments (environments msg))
))
