; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-srv)


;//! \htmlinclude GetEnvironments-request.msg.html

(cl:defclass <GetEnvironments-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEnvironments-request (<GetEnvironments-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvironments-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvironments-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetEnvironments-request> is deprecated: use poi_manager_msgs-srv:GetEnvironments-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvironments-request>) ostream)
  "Serializes a message object of type '<GetEnvironments-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvironments-request>) istream)
  "Deserializes a message object of type '<GetEnvironments-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvironments-request>)))
  "Returns string type for a service object of type '<GetEnvironments-request>"
  "poi_manager_msgs/GetEnvironmentsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironments-request)))
  "Returns string type for a service object of type 'GetEnvironments-request"
  "poi_manager_msgs/GetEnvironmentsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvironments-request>)))
  "Returns md5sum for a message object of type '<GetEnvironments-request>"
  "8a31ffa69fc51dd8da4b6db62e868d0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvironments-request)))
  "Returns md5sum for a message object of type 'GetEnvironments-request"
  "8a31ffa69fc51dd8da4b6db62e868d0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvironments-request>)))
  "Returns full string definition for message of type '<GetEnvironments-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvironments-request)))
  "Returns full string definition for message of type 'GetEnvironments-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvironments-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvironments-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvironments-request
))
;//! \htmlinclude GetEnvironments-response.msg.html

(cl:defclass <GetEnvironments-response> (roslisp-msg-protocol:ros-message)
  ((environments
    :reader environments
    :initarg :environments
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetEnvironments-response (<GetEnvironments-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEnvironments-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEnvironments-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-srv:<GetEnvironments-response> is deprecated: use poi_manager_msgs-srv:GetEnvironments-response instead.")))

(cl:ensure-generic-function 'environments-val :lambda-list '(m))
(cl:defmethod environments-val ((m <GetEnvironments-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-srv:environments-val is deprecated.  Use poi_manager_msgs-srv:environments instead.")
  (environments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEnvironments-response>) ostream)
  "Serializes a message object of type '<GetEnvironments-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'environments))))
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
   (cl:slot-value msg 'environments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEnvironments-response>) istream)
  "Deserializes a message object of type '<GetEnvironments-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'environments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'environments)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEnvironments-response>)))
  "Returns string type for a service object of type '<GetEnvironments-response>"
  "poi_manager_msgs/GetEnvironmentsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironments-response)))
  "Returns string type for a service object of type 'GetEnvironments-response"
  "poi_manager_msgs/GetEnvironmentsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEnvironments-response>)))
  "Returns md5sum for a message object of type '<GetEnvironments-response>"
  "8a31ffa69fc51dd8da4b6db62e868d0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEnvironments-response)))
  "Returns md5sum for a message object of type 'GetEnvironments-response"
  "8a31ffa69fc51dd8da4b6db62e868d0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEnvironments-response>)))
  "Returns full string definition for message of type '<GetEnvironments-response>"
  (cl:format cl:nil "string[] environments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEnvironments-response)))
  "Returns full string definition for message of type 'GetEnvironments-response"
  (cl:format cl:nil "string[] environments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEnvironments-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'environments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEnvironments-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEnvironments-response
    (cl:cons ':environments (environments msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEnvironments)))
  'GetEnvironments-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEnvironments)))
  'GetEnvironments-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEnvironments)))
  "Returns string type for a service object of type '<GetEnvironments>"
  "poi_manager_msgs/GetEnvironments")