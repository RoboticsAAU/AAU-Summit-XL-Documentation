; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude GetHandlerInfo-request.msg.html

(cl:defclass <GetHandlerInfo-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetHandlerInfo-request (<GetHandlerInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHandlerInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHandlerInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetHandlerInfo-request> is deprecated: use robot_simple_command_manager_msgs-srv:GetHandlerInfo-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetHandlerInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:name-val is deprecated.  Use robot_simple_command_manager_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHandlerInfo-request>) ostream)
  "Serializes a message object of type '<GetHandlerInfo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHandlerInfo-request>) istream)
  "Deserializes a message object of type '<GetHandlerInfo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHandlerInfo-request>)))
  "Returns string type for a service object of type '<GetHandlerInfo-request>"
  "robot_simple_command_manager_msgs/GetHandlerInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHandlerInfo-request)))
  "Returns string type for a service object of type 'GetHandlerInfo-request"
  "robot_simple_command_manager_msgs/GetHandlerInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHandlerInfo-request>)))
  "Returns md5sum for a message object of type '<GetHandlerInfo-request>"
  "5255a97f7f207306f16086ffc767a36b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHandlerInfo-request)))
  "Returns md5sum for a message object of type 'GetHandlerInfo-request"
  "5255a97f7f207306f16086ffc767a36b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHandlerInfo-request>)))
  "Returns full string definition for message of type '<GetHandlerInfo-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHandlerInfo-request)))
  "Returns full string definition for message of type 'GetHandlerInfo-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHandlerInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHandlerInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHandlerInfo-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetHandlerInfo-response.msg.html

(cl:defclass <GetHandlerInfo-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (description
    :reader description
    :initarg :description
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (types
    :reader types
    :initarg :types
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetHandlerInfo-response (<GetHandlerInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHandlerInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHandlerInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<GetHandlerInfo-response> is deprecated: use robot_simple_command_manager_msgs-srv:GetHandlerInfo-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetHandlerInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:success-val is deprecated.  Use robot_simple_command_manager_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <GetHandlerInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:description-val is deprecated.  Use robot_simple_command_manager_msgs-srv:description instead.")
  (description m))

(cl:ensure-generic-function 'types-val :lambda-list '(m))
(cl:defmethod types-val ((m <GetHandlerInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:types-val is deprecated.  Use robot_simple_command_manager_msgs-srv:types instead.")
  (types m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHandlerInfo-response>) ostream)
  "Serializes a message object of type '<GetHandlerInfo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'description))))
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
   (cl:slot-value msg 'description))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'types))))
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
   (cl:slot-value msg 'types))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHandlerInfo-response>) istream)
  "Deserializes a message object of type '<GetHandlerInfo-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'description) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'description)))
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
  (cl:setf (cl:slot-value msg 'types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHandlerInfo-response>)))
  "Returns string type for a service object of type '<GetHandlerInfo-response>"
  "robot_simple_command_manager_msgs/GetHandlerInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHandlerInfo-response)))
  "Returns string type for a service object of type 'GetHandlerInfo-response"
  "robot_simple_command_manager_msgs/GetHandlerInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHandlerInfo-response>)))
  "Returns md5sum for a message object of type '<GetHandlerInfo-response>"
  "5255a97f7f207306f16086ffc767a36b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHandlerInfo-response)))
  "Returns md5sum for a message object of type 'GetHandlerInfo-response"
  "5255a97f7f207306f16086ffc767a36b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHandlerInfo-response>)))
  "Returns full string definition for message of type '<GetHandlerInfo-response>"
  (cl:format cl:nil "bool success~%string[] description~%string[] types~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHandlerInfo-response)))
  "Returns full string definition for message of type 'GetHandlerInfo-response"
  (cl:format cl:nil "bool success~%string[] description~%string[] types~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHandlerInfo-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'description) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHandlerInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHandlerInfo-response
    (cl:cons ':success (success msg))
    (cl:cons ':description (description msg))
    (cl:cons ':types (types msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHandlerInfo)))
  'GetHandlerInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHandlerInfo)))
  'GetHandlerInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHandlerInfo)))
  "Returns string type for a service object of type '<GetHandlerInfo>"
  "robot_simple_command_manager_msgs/GetHandlerInfo")