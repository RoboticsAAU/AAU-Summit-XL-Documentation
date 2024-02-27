; Auto-generated. Do not edit!


(cl:in-package robotnik_signal_msgs-srv)


;//! \htmlinclude SetSignal-request.msg.html

(cl:defclass <SetSignal-request> (roslisp-msg-protocol:ros-message)
  ((signal_id
    :reader signal_id
    :initarg :signal_id
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetSignal-request (<SetSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_signal_msgs-srv:<SetSignal-request> is deprecated: use robotnik_signal_msgs-srv:SetSignal-request instead.")))

(cl:ensure-generic-function 'signal_id-val :lambda-list '(m))
(cl:defmethod signal_id-val ((m <SetSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_signal_msgs-srv:signal_id-val is deprecated.  Use robotnik_signal_msgs-srv:signal_id instead.")
  (signal_id m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_signal_msgs-srv:enable-val is deprecated.  Use robotnik_signal_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSignal-request>) ostream)
  "Serializes a message object of type '<SetSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSignal-request>) istream)
  "Deserializes a message object of type '<SetSignal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSignal-request>)))
  "Returns string type for a service object of type '<SetSignal-request>"
  "robotnik_signal_msgs/SetSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSignal-request)))
  "Returns string type for a service object of type 'SetSignal-request"
  "robotnik_signal_msgs/SetSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSignal-request>)))
  "Returns md5sum for a message object of type '<SetSignal-request>"
  "61deb6ba176fcf9f9ac3a7b750eb3f84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSignal-request)))
  "Returns md5sum for a message object of type 'SetSignal-request"
  "61deb6ba176fcf9f9ac3a7b750eb3f84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSignal-request>)))
  "Returns full string definition for message of type '<SetSignal-request>"
  (cl:format cl:nil "string signal_id~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSignal-request)))
  "Returns full string definition for message of type 'SetSignal-request"
  (cl:format cl:nil "string signal_id~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signal_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSignal-request
    (cl:cons ':signal_id (signal_id msg))
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetSignal-response.msg.html

(cl:defclass <SetSignal-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type robotnik_msgs-msg:ReturnMessage
    :initform (cl:make-instance 'robotnik_msgs-msg:ReturnMessage)))
)

(cl:defclass SetSignal-response (<SetSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_signal_msgs-srv:<SetSignal-response> is deprecated: use robotnik_signal_msgs-srv:SetSignal-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_signal_msgs-srv:ret-val is deprecated.  Use robotnik_signal_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSignal-response>) ostream)
  "Serializes a message object of type '<SetSignal-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ret) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSignal-response>) istream)
  "Deserializes a message object of type '<SetSignal-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ret) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSignal-response>)))
  "Returns string type for a service object of type '<SetSignal-response>"
  "robotnik_signal_msgs/SetSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSignal-response)))
  "Returns string type for a service object of type 'SetSignal-response"
  "robotnik_signal_msgs/SetSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSignal-response>)))
  "Returns md5sum for a message object of type '<SetSignal-response>"
  "61deb6ba176fcf9f9ac3a7b750eb3f84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSignal-response)))
  "Returns md5sum for a message object of type 'SetSignal-response"
  "61deb6ba176fcf9f9ac3a7b750eb3f84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSignal-response>)))
  "Returns full string definition for message of type '<SetSignal-response>"
  (cl:format cl:nil "robotnik_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robotnik_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSignal-response)))
  "Returns full string definition for message of type 'SetSignal-response"
  (cl:format cl:nil "robotnik_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robotnik_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSignal-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSignal-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSignal)))
  'SetSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSignal)))
  'SetSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSignal)))
  "Returns string type for a service object of type '<SetSignal>"
  "robotnik_signal_msgs/SetSignal")