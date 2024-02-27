; Auto-generated. Do not edit!


(cl:in-package marker_mapping-srv)


;//! \htmlinclude SetFrameId-request.msg.html

(cl:defclass <SetFrameId-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SetFrameId-request (<SetFrameId-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFrameId-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFrameId-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<SetFrameId-request> is deprecated: use marker_mapping-srv:SetFrameId-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetFrameId-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:frame_id-val is deprecated.  Use marker_mapping-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFrameId-request>) ostream)
  "Serializes a message object of type '<SetFrameId-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFrameId-request>) istream)
  "Deserializes a message object of type '<SetFrameId-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFrameId-request>)))
  "Returns string type for a service object of type '<SetFrameId-request>"
  "marker_mapping/SetFrameIdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFrameId-request)))
  "Returns string type for a service object of type 'SetFrameId-request"
  "marker_mapping/SetFrameIdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFrameId-request>)))
  "Returns md5sum for a message object of type '<SetFrameId-request>"
  "8f31220030fae0baa0b9a03e2cca0af8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFrameId-request)))
  "Returns md5sum for a message object of type 'SetFrameId-request"
  "8f31220030fae0baa0b9a03e2cca0af8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFrameId-request>)))
  "Returns full string definition for message of type '<SetFrameId-request>"
  (cl:format cl:nil "string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFrameId-request)))
  "Returns full string definition for message of type 'SetFrameId-request"
  (cl:format cl:nil "string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFrameId-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFrameId-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFrameId-request
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SetFrameId-response.msg.html

(cl:defclass <SetFrameId-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetFrameId-response (<SetFrameId-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFrameId-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFrameId-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<SetFrameId-response> is deprecated: use marker_mapping-srv:SetFrameId-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetFrameId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:ret-val is deprecated.  Use marker_mapping-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetFrameId-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:message-val is deprecated.  Use marker_mapping-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFrameId-response>) ostream)
  "Serializes a message object of type '<SetFrameId-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFrameId-response>) istream)
  "Deserializes a message object of type '<SetFrameId-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFrameId-response>)))
  "Returns string type for a service object of type '<SetFrameId-response>"
  "marker_mapping/SetFrameIdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFrameId-response)))
  "Returns string type for a service object of type 'SetFrameId-response"
  "marker_mapping/SetFrameIdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFrameId-response>)))
  "Returns md5sum for a message object of type '<SetFrameId-response>"
  "8f31220030fae0baa0b9a03e2cca0af8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFrameId-response)))
  "Returns md5sum for a message object of type 'SetFrameId-response"
  "8f31220030fae0baa0b9a03e2cca0af8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFrameId-response>)))
  "Returns full string definition for message of type '<SetFrameId-response>"
  (cl:format cl:nil "bool ret~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFrameId-response)))
  "Returns full string definition for message of type 'SetFrameId-response"
  (cl:format cl:nil "bool ret~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFrameId-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFrameId-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFrameId-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFrameId)))
  'SetFrameId-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFrameId)))
  'SetFrameId-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFrameId)))
  "Returns string type for a service object of type '<SetFrameId>"
  "marker_mapping/SetFrameId")