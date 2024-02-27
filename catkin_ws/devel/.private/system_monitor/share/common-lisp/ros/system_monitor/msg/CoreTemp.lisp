; Auto-generated. Do not edit!


(cl:in-package system_monitor-msg)


;//! \htmlinclude CoreTemp.msg.html

(cl:defclass <CoreTemp> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass CoreTemp (<CoreTemp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CoreTemp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CoreTemp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_monitor-msg:<CoreTemp> is deprecated: use system_monitor-msg:CoreTemp instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CoreTemp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:id-val is deprecated.  Use system_monitor-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <CoreTemp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_monitor-msg:temp-val is deprecated.  Use system_monitor-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CoreTemp>) ostream)
  "Serializes a message object of type '<CoreTemp>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CoreTemp>) istream)
  "Deserializes a message object of type '<CoreTemp>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CoreTemp>)))
  "Returns string type for a message object of type '<CoreTemp>"
  "system_monitor/CoreTemp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CoreTemp)))
  "Returns string type for a message object of type 'CoreTemp"
  "system_monitor/CoreTemp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CoreTemp>)))
  "Returns md5sum for a message object of type '<CoreTemp>"
  "77a1d734d3f9b0295efc9c0e8dbc0be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CoreTemp)))
  "Returns md5sum for a message object of type 'CoreTemp"
  "77a1d734d3f9b0295efc9c0e8dbc0be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CoreTemp>)))
  "Returns full string definition for message of type '<CoreTemp>"
  (cl:format cl:nil "int8 id~%#Temperature of the core in DegC~%float32 temp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CoreTemp)))
  "Returns full string definition for message of type 'CoreTemp"
  (cl:format cl:nil "int8 id~%#Temperature of the core in DegC~%float32 temp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CoreTemp>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CoreTemp>))
  "Converts a ROS message object to a list"
  (cl:list 'CoreTemp
    (cl:cons ':id (id msg))
    (cl:cons ':temp (temp msg))
))
