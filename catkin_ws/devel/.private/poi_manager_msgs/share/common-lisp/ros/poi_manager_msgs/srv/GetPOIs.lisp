; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude GetPOIs-request.msg.html

(cl:defclass <GetPOIs-request> (roslisp-msg-protocol:ros-message)
  ((environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform ""))
)

(cl:defclass GetPOIs-request (<GetPOIs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOIs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOIs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetPOIs-request> is deprecated: use poi_manager_msgs-srv:GetPOIs-request instead.")))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <GetPOIs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:environment-val is deprecated.  Use poi_manager_msgs-srv:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOIs-request>) ostream)
  "Serializes a message object of type '<GetPOIs-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOIs-request>) istream)
  "Deserializes a message object of type '<GetPOIs-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOIs-request>)))
  "Returns string type for a service object of type '<GetPOIs-request>"
  "poi_manager_msgs/GetPOIsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOIs-request)))
  "Returns string type for a service object of type 'GetPOIs-request"
  "poi_manager_msgs/GetPOIsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOIs-request>)))
  "Returns md5sum for a message object of type '<GetPOIs-request>"
  "3a7e9332c1f7391c48b76fbd997c4c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOIs-request)))
  "Returns md5sum for a message object of type 'GetPOIs-request"
  "3a7e9332c1f7391c48b76fbd997c4c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOIs-request>)))
  "Returns full string definition for message of type '<GetPOIs-request>"
  (cl:format cl:nil "string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOIs-request)))
  "Returns full string definition for message of type 'GetPOIs-request"
  (cl:format cl:nil "string environment~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOIs-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'environment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOIs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOIs-request
    (cl:cons ':environment (environment msg))
))
;//! \htmlinclude GetPOIs-response.msg.html

(cl:defclass <GetPOIs-response> (roslisp-msg-protocol:ros-message)
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
   (p_list
    :reader p_list
    :initarg :p_list
    :type (cl:vector poi_manager_msgs-msg:LabeledPose)
   :initform (cl:make-array 0 :element-type 'poi_manager_msgs-msg:LabeledPose :initial-element (cl:make-instance 'poi_manager_msgs-msg:LabeledPose))))
)

(cl:defclass GetPOIs-response (<GetPOIs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOIs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOIs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetPOIs-response> is deprecated: use poi_manager_msgs-srv:GetPOIs-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetPOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'p_list-val :lambda-list '(m))
(cl:defmethod p_list-val ((m <GetPOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:p_list-val is deprecated.  Use poi_manager_msgs-srv:p_list instead.")
  (p_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOIs-response>) ostream)
  "Serializes a message object of type '<GetPOIs-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'p_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'p_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOIs-response>) istream)
  "Deserializes a message object of type '<GetPOIs-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'p_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'p_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'poi_manager_msgs-msg:LabeledPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOIs-response>)))
  "Returns string type for a service object of type '<GetPOIs-response>"
  "poi_manager_msgs/GetPOIsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOIs-response)))
  "Returns string type for a service object of type 'GetPOIs-response"
  "poi_manager_msgs/GetPOIsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOIs-response>)))
  "Returns md5sum for a message object of type '<GetPOIs-response>"
  "3a7e9332c1f7391c48b76fbd997c4c8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOIs-response)))
  "Returns md5sum for a message object of type 'GetPOIs-response"
  "3a7e9332c1f7391c48b76fbd997c4c8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOIs-response>)))
  "Returns full string definition for message of type '<GetPOIs-response>"
  (cl:format cl:nil "bool success~%string message~%poi_manager_msgs/LabeledPose[] p_list~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOIs-response)))
  "Returns full string definition for message of type 'GetPOIs-response"
  (cl:format cl:nil "bool success~%string message~%poi_manager_msgs/LabeledPose[] p_list~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOIs-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'p_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOIs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOIs-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':p_list (p_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPOIs)))
  'GetPOIs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPOIs)))
  'GetPOIs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOIs)))
  "Returns string type for a service object of type '<GetPOIs>"
  "poi_manager_msgs/GetPOIs")