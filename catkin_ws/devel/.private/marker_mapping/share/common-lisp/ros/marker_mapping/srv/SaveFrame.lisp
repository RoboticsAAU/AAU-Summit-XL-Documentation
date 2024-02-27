; Auto-generated. Do not edit!


(cl:in-package marker_mapping-srv)


;//! \htmlinclude SaveFrame-request.msg.html

(cl:defclass <SaveFrame-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SaveFrame-request (<SaveFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<SaveFrame-request> is deprecated: use marker_mapping-srv:SaveFrame-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SaveFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:frame_id-val is deprecated.  Use marker_mapping-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveFrame-request>) ostream)
  "Serializes a message object of type '<SaveFrame-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveFrame-request>) istream)
  "Deserializes a message object of type '<SaveFrame-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveFrame-request>)))
  "Returns string type for a service object of type '<SaveFrame-request>"
  "marker_mapping/SaveFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFrame-request)))
  "Returns string type for a service object of type 'SaveFrame-request"
  "marker_mapping/SaveFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveFrame-request>)))
  "Returns md5sum for a message object of type '<SaveFrame-request>"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveFrame-request)))
  "Returns md5sum for a message object of type 'SaveFrame-request"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveFrame-request>)))
  "Returns full string definition for message of type '<SaveFrame-request>"
  (cl:format cl:nil "# frame to save~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveFrame-request)))
  "Returns full string definition for message of type 'SaveFrame-request"
  (cl:format cl:nil "# frame to save~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveFrame-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveFrame-request
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SaveFrame-response.msg.html

(cl:defclass <SaveFrame-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveFrame-response (<SaveFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<SaveFrame-response> is deprecated: use marker_mapping-srv:SaveFrame-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:success-val is deprecated.  Use marker_mapping-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:message-val is deprecated.  Use marker_mapping-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveFrame-response>) ostream)
  "Serializes a message object of type '<SaveFrame-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveFrame-response>) istream)
  "Deserializes a message object of type '<SaveFrame-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveFrame-response>)))
  "Returns string type for a service object of type '<SaveFrame-response>"
  "marker_mapping/SaveFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFrame-response)))
  "Returns string type for a service object of type 'SaveFrame-response"
  "marker_mapping/SaveFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveFrame-response>)))
  "Returns md5sum for a message object of type '<SaveFrame-response>"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveFrame-response)))
  "Returns md5sum for a message object of type 'SaveFrame-response"
  "35f2ba3133054633678b5f61278846ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveFrame-response>)))
  "Returns full string definition for message of type '<SaveFrame-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveFrame-response)))
  "Returns full string definition for message of type 'SaveFrame-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveFrame-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveFrame-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveFrame)))
  'SaveFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveFrame)))
  'SaveFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveFrame)))
  "Returns string type for a service object of type '<SaveFrame>"
  "marker_mapping/SaveFrame")