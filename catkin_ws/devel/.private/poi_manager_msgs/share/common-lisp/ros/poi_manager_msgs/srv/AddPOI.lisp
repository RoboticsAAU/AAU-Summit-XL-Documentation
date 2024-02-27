; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude AddPOI-request.msg.html

(cl:defclass <AddPOI-request> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type poi_manager_msgs-msg:LabeledPose
    :initform (cl:make-instance 'poi_manager_msgs-msg:LabeledPose)))
)

(cl:defclass AddPOI-request (<AddPOI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddPOI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddPOI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<AddPOI-request> is deprecated: use poi_manager_msgs-srv:AddPOI-request instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <AddPOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:p-val is deprecated.  Use poi_manager_msgs-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddPOI-request>) ostream)
  "Serializes a message object of type '<AddPOI-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddPOI-request>) istream)
  "Deserializes a message object of type '<AddPOI-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddPOI-request>)))
  "Returns string type for a service object of type '<AddPOI-request>"
  "poi_manager_msgs/AddPOIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPOI-request)))
  "Returns string type for a service object of type 'AddPOI-request"
  "poi_manager_msgs/AddPOIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddPOI-request>)))
  "Returns md5sum for a message object of type '<AddPOI-request>"
  "31c6c5ebe956d1a071c7fa7bf0f79398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddPOI-request)))
  "Returns md5sum for a message object of type 'AddPOI-request"
  "31c6c5ebe956d1a071c7fa7bf0f79398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddPOI-request>)))
  "Returns full string definition for message of type '<AddPOI-request>"
  (cl:format cl:nil "poi_manager_msgs/LabeledPose p~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddPOI-request)))
  "Returns full string definition for message of type 'AddPOI-request"
  (cl:format cl:nil "poi_manager_msgs/LabeledPose p~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddPOI-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddPOI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddPOI-request
    (cl:cons ':p (p msg))
))
;//! \htmlinclude AddPOI-response.msg.html

(cl:defclass <AddPOI-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass AddPOI-response (<AddPOI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddPOI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddPOI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<AddPOI-response> is deprecated: use poi_manager_msgs-srv:AddPOI-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddPOI-response>) ostream)
  "Serializes a message object of type '<AddPOI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddPOI-response>) istream)
  "Deserializes a message object of type '<AddPOI-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddPOI-response>)))
  "Returns string type for a service object of type '<AddPOI-response>"
  "poi_manager_msgs/AddPOIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPOI-response)))
  "Returns string type for a service object of type 'AddPOI-response"
  "poi_manager_msgs/AddPOIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddPOI-response>)))
  "Returns md5sum for a message object of type '<AddPOI-response>"
  "31c6c5ebe956d1a071c7fa7bf0f79398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddPOI-response)))
  "Returns md5sum for a message object of type 'AddPOI-response"
  "31c6c5ebe956d1a071c7fa7bf0f79398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddPOI-response>)))
  "Returns full string definition for message of type '<AddPOI-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddPOI-response)))
  "Returns full string definition for message of type 'AddPOI-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddPOI-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddPOI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddPOI-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddPOI)))
  'AddPOI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddPOI)))
  'AddPOI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPOI)))
  "Returns string type for a service object of type '<AddPOI>"
  "poi_manager_msgs/AddPOI")