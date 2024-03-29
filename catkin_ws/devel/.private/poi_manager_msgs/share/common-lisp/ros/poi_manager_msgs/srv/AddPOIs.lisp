; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude AddPOIs-request.msg.html

(cl:defclass <AddPOIs-request> (roslisp-msg-protocol:ros-message)
  ((pose_list
    :reader pose_list
    :initarg :pose_list
    :type (cl:vector poi_manager_msgs-msg:LabeledPose)
   :initform (cl:make-array 0 :element-type 'poi_manager_msgs-msg:LabeledPose :initial-element (cl:make-instance 'poi_manager_msgs-msg:LabeledPose))))
)

(cl:defclass AddPOIs-request (<AddPOIs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddPOIs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddPOIs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<AddPOIs-request> is deprecated: use poi_manager_msgs-srv:AddPOIs-request instead.")))

(cl:ensure-generic-function 'pose_list-val :lambda-list '(m))
(cl:defmethod pose_list-val ((m <AddPOIs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:pose_list-val is deprecated.  Use poi_manager_msgs-srv:pose_list instead.")
  (pose_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddPOIs-request>) ostream)
  "Serializes a message object of type '<AddPOIs-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddPOIs-request>) istream)
  "Deserializes a message object of type '<AddPOIs-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'poi_manager_msgs-msg:LabeledPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddPOIs-request>)))
  "Returns string type for a service object of type '<AddPOIs-request>"
  "poi_manager_msgs/AddPOIsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPOIs-request)))
  "Returns string type for a service object of type 'AddPOIs-request"
  "poi_manager_msgs/AddPOIsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddPOIs-request>)))
  "Returns md5sum for a message object of type '<AddPOIs-request>"
  "2fdcbbb89e33323af0b594e7738c11a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddPOIs-request)))
  "Returns md5sum for a message object of type 'AddPOIs-request"
  "2fdcbbb89e33323af0b594e7738c11a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddPOIs-request>)))
  "Returns full string definition for message of type '<AddPOIs-request>"
  (cl:format cl:nil "poi_manager_msgs/LabeledPose[] pose_list~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddPOIs-request)))
  "Returns full string definition for message of type 'AddPOIs-request"
  (cl:format cl:nil "poi_manager_msgs/LabeledPose[] pose_list~%~%================================================================================~%MSG: poi_manager_msgs/LabeledPose~%string name~%string environment~%string params~%string frame_id~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddPOIs-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddPOIs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddPOIs-request
    (cl:cons ':pose_list (pose_list msg))
))
;//! \htmlinclude AddPOIs-response.msg.html

(cl:defclass <AddPOIs-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddPOIs-response (<AddPOIs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddPOIs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddPOIs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<AddPOIs-response> is deprecated: use poi_manager_msgs-srv:AddPOIs-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddPOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:success-val is deprecated.  Use poi_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddPOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:message-val is deprecated.  Use poi_manager_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddPOIs-response>) ostream)
  "Serializes a message object of type '<AddPOIs-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddPOIs-response>) istream)
  "Deserializes a message object of type '<AddPOIs-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddPOIs-response>)))
  "Returns string type for a service object of type '<AddPOIs-response>"
  "poi_manager_msgs/AddPOIsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPOIs-response)))
  "Returns string type for a service object of type 'AddPOIs-response"
  "poi_manager_msgs/AddPOIsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddPOIs-response>)))
  "Returns md5sum for a message object of type '<AddPOIs-response>"
  "2fdcbbb89e33323af0b594e7738c11a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddPOIs-response)))
  "Returns md5sum for a message object of type 'AddPOIs-response"
  "2fdcbbb89e33323af0b594e7738c11a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddPOIs-response>)))
  "Returns full string definition for message of type '<AddPOIs-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddPOIs-response)))
  "Returns full string definition for message of type 'AddPOIs-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddPOIs-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddPOIs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddPOIs-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddPOIs)))
  'AddPOIs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddPOIs)))
  'AddPOIs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddPOIs)))
  "Returns string type for a service object of type '<AddPOIs>"
  "poi_manager_msgs/AddPOIs")