; Auto-generated. Do not edit!


(cl:in-package fake_joint_position_publisher-srv)


;//! \htmlinclude SetJoints-request.msg.html

(cl:defclass <SetJoints-request> (roslisp-msg-protocol:ros-message)
  ((joints_names
    :reader joints_names
    :initarg :joints_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (positions
    :reader positions
    :initarg :positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetJoints-request (<SetJoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fake_joint_position_publisher-srv:<SetJoints-request> is deprecated: use fake_joint_position_publisher-srv:SetJoints-request instead.")))

(cl:ensure-generic-function 'joints_names-val :lambda-list '(m))
(cl:defmethod joints_names-val ((m <SetJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:joints_names-val is deprecated.  Use fake_joint_position_publisher-srv:joints_names instead.")
  (joints_names m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <SetJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:positions-val is deprecated.  Use fake_joint_position_publisher-srv:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJoints-request>) ostream)
  "Serializes a message object of type '<SetJoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joints_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJoints-request>) istream)
  "Deserializes a message object of type '<SetJoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJoints-request>)))
  "Returns string type for a service object of type '<SetJoints-request>"
  "fake_joint_position_publisher/SetJointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoints-request)))
  "Returns string type for a service object of type 'SetJoints-request"
  "fake_joint_position_publisher/SetJointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJoints-request>)))
  "Returns md5sum for a message object of type '<SetJoints-request>"
  "0f74c2ba51844f89cb01d50b436f6fba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJoints-request)))
  "Returns md5sum for a message object of type 'SetJoints-request"
  "0f74c2ba51844f89cb01d50b436f6fba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJoints-request>)))
  "Returns full string definition for message of type '<SetJoints-request>"
  (cl:format cl:nil "string[] joints_names~%float32[] positions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJoints-request)))
  "Returns full string definition for message of type 'SetJoints-request"
  (cl:format cl:nil "string[] joints_names~%float32[] positions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJoints-request
    (cl:cons ':joints_names (joints_names msg))
    (cl:cons ':positions (positions msg))
))
;//! \htmlinclude SetJoints-response.msg.html

(cl:defclass <SetJoints-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJoints-response (<SetJoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fake_joint_position_publisher-srv:<SetJoints-response> is deprecated: use fake_joint_position_publisher-srv:SetJoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:success-val is deprecated.  Use fake_joint_position_publisher-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fake_joint_position_publisher-srv:message-val is deprecated.  Use fake_joint_position_publisher-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJoints-response>) ostream)
  "Serializes a message object of type '<SetJoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJoints-response>) istream)
  "Deserializes a message object of type '<SetJoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJoints-response>)))
  "Returns string type for a service object of type '<SetJoints-response>"
  "fake_joint_position_publisher/SetJointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoints-response)))
  "Returns string type for a service object of type 'SetJoints-response"
  "fake_joint_position_publisher/SetJointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJoints-response>)))
  "Returns md5sum for a message object of type '<SetJoints-response>"
  "0f74c2ba51844f89cb01d50b436f6fba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJoints-response)))
  "Returns md5sum for a message object of type 'SetJoints-response"
  "0f74c2ba51844f89cb01d50b436f6fba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJoints-response>)))
  "Returns full string definition for message of type '<SetJoints-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJoints-response)))
  "Returns full string definition for message of type 'SetJoints-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJoints-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJoints-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJoints)))
  'SetJoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJoints)))
  'SetJoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoints)))
  "Returns string type for a service object of type '<SetJoints>"
  "fake_joint_position_publisher/SetJoints")