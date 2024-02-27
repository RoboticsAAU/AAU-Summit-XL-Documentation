; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude GetPOI-request.msg.html

(cl:defclass <GetPOI-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform ""))
)

(cl:defclass GetPOI-request (<GetPOI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetPOI-request> is deprecated: use poi_manager_msgs-srv:GetPOI-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetPOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:name-val is deprecated.  Use poi_manager_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <GetPOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:environment-val is deprecated.  Use poi_manager_msgs-srv:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOI-request>) ostream)
  "Serializes a message object of type '<GetPOI-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOI-request>) istream)
  "Deserializes a message object of type '<GetPOI-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'environment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOI-request>)))
  "Returns string type for a service object of type '<GetPOI-request>"
  "poi_manager_msgs/GetPOIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI-request)))
  "Returns string type for a service object of type 'GetPOI-request"
  "poi_manager_msgs/GetPOIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOI-request>)))
  "Returns md5sum for a message object of type '<GetPOI-request>"
  "59770c338bcbe71fd18764ce06bf4b5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOI-request)))
  "Returns md5sum for a message object of type 'GetPOI-request"
  "59770c338bcbe71fd18764ce06bf4b5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOI-request>)))
  "Returns full string definition for message of type '<GetPOI-request>"
  (cl:format cl:nil "string name~%string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOI-request)))
  "Returns full string definition for message of type 'GetPOI-request"
  (cl:format cl:nil "string name~%string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOI-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'environment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOI-request
    (cl:cons ':name (name msg))
    (cl:cons ':environment (environment msg))
))
;//! \htmlinclude GetPOI-response.msg.html

(cl:defclass <GetPOI-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (p
    :reader p
    :initarg :p
    :type poi_manager_msgs-msg:LabeledPose
    :initform (cl:make-instance 'poi_manager_msgs-msg:LabeledPose)))
)

(cl:defclass GetPOI-response (<GetPOI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetPOI-response> is deprecated: use poi_manager_msgs-srv:GetPOI-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <GetPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:p-val is deprecated.  Use poi_manager_msgs-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOI-response>) ostream)
  "Serializes a message object of type '<GetPOI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOI-response>) istream)
  "Deserializes a message object of type '<GetPOI-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOI-response>)))
  "Returns string type for a service object of type '<GetPOI-response>"
  "poi_manager_msgs/GetPOIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI-response)))
  "Returns string type for a service object of type 'GetPOI-response"
  "poi_manager_msgs/GetPOIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOI-response>)))
  "Returns md5sum for a message object of type '<GetPOI-response>"
  "59770c338bcbe71fd18764ce06bf4b5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOI-response)))
  "Returns md5sum for a message object of type 'GetPOI-response"
  "59770c338bcbe71fd18764ce06bf4b5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOI-response>)))
  "Returns full string definition for message of type '<GetPOI-response>"
  (cl:format cl:nil "bool success~%string message~%poi_manager_msgs/LabeledPose p~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOI-response)))
  "Returns full string definition for message of type 'GetPOI-response"
  (cl:format cl:nil "bool success~%string message~%poi_manager_msgs/LabeledPose p~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOI-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOI-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':p (p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPOI)))
  'GetPOI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPOI)))
  'GetPOI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI)))
  "Returns string type for a service object of type '<GetPOI>"
  "poi_manager_msgs/GetPOI")