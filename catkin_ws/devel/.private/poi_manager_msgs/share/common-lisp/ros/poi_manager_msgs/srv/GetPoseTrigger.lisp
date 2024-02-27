; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude GetPoseTrigger-request.msg.html

(cl:defclass <GetPoseTrigger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPoseTrigger-request (<GetPoseTrigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoseTrigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoseTrigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetPoseTrigger-request> is deprecated: use poi_manager_msgs-srv:GetPoseTrigger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoseTrigger-request>) ostream)
  "Serializes a message object of type '<GetPoseTrigger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoseTrigger-request>) istream)
  "Deserializes a message object of type '<GetPoseTrigger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoseTrigger-request>)))
  "Returns string type for a service object of type '<GetPoseTrigger-request>"
  "poi_manager_msgs/GetPoseTriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoseTrigger-request)))
  "Returns string type for a service object of type 'GetPoseTrigger-request"
  "poi_manager_msgs/GetPoseTriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoseTrigger-request>)))
  "Returns md5sum for a message object of type '<GetPoseTrigger-request>"
  "8f0d03246ce395c1277b17dc21fa64a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoseTrigger-request)))
  "Returns md5sum for a message object of type 'GetPoseTrigger-request"
  "8f0d03246ce395c1277b17dc21fa64a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoseTrigger-request>)))
  "Returns full string definition for message of type '<GetPoseTrigger-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoseTrigger-request)))
  "Returns full string definition for message of type 'GetPoseTrigger-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoseTrigger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoseTrigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoseTrigger-request
))
;//! \htmlinclude GetPoseTrigger-response.msg.html

(cl:defclass <GetPoseTrigger-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetPoseTrigger-response (<GetPoseTrigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoseTrigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoseTrigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetPoseTrigger-response> is deprecated: use poi_manager_msgs-srv:GetPoseTrigger-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetPoseTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:pose-val is deprecated.  Use poi_manager_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetPoseTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPoseTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoseTrigger-response>) ostream)
  "Serializes a message object of type '<GetPoseTrigger-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoseTrigger-response>) istream)
  "Deserializes a message object of type '<GetPoseTrigger-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoseTrigger-response>)))
  "Returns string type for a service object of type '<GetPoseTrigger-response>"
  "poi_manager_msgs/GetPoseTriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoseTrigger-response)))
  "Returns string type for a service object of type 'GetPoseTrigger-response"
  "poi_manager_msgs/GetPoseTriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoseTrigger-response>)))
  "Returns md5sum for a message object of type '<GetPoseTrigger-response>"
  "8f0d03246ce395c1277b17dc21fa64a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoseTrigger-response)))
  "Returns md5sum for a message object of type 'GetPoseTrigger-response"
  "8f0d03246ce395c1277b17dc21fa64a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoseTrigger-response>)))
  "Returns full string definition for message of type '<GetPoseTrigger-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string message~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoseTrigger-response)))
  "Returns full string definition for message of type 'GetPoseTrigger-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string message~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoseTrigger-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoseTrigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoseTrigger-response
    (cl:cons ':pose (pose msg))
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPoseTrigger)))
  'GetPoseTrigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPoseTrigger)))
  'GetPoseTrigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoseTrigger)))
  "Returns string type for a service object of type '<GetPoseTrigger>"
  "poi_manager_msgs/GetPoseTrigger")