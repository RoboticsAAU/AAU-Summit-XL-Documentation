; Auto-generated. Do not edit!


(cl:in-package robotnik_rms_msgs-srv)


;//! \htmlinclude idMission-request.msg.html

(cl:defclass <idMission-request> (roslisp-msg-protocol:ros-message)
  ((id_mission
    :reader id_mission
    :initarg :id_mission
    :type cl:integer
    :initform 0))
)

(cl:defclass idMission-request (<idMission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <idMission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'idMission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-srv:<idMission-request> is deprecated: use robotnik_rms_msgs-srv:idMission-request instead.")))

(cl:ensure-generic-function 'id_mission-val :lambda-list '(m))
(cl:defmethod id_mission-val ((m <idMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:id_mission-val is deprecated.  Use robotnik_rms_msgs-srv:id_mission instead.")
  (id_mission m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <idMission-request>) ostream)
  "Serializes a message object of type '<idMission-request>"
  (cl:let* ((signed (cl:slot-value msg 'id_mission)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <idMission-request>) istream)
  "Deserializes a message object of type '<idMission-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_mission) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<idMission-request>)))
  "Returns string type for a service object of type '<idMission-request>"
  "robotnik_rms_msgs/idMissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'idMission-request)))
  "Returns string type for a service object of type 'idMission-request"
  "robotnik_rms_msgs/idMissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<idMission-request>)))
  "Returns md5sum for a message object of type '<idMission-request>"
  "dd122c1dfe0519ae39ecbff2cc0c577f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'idMission-request)))
  "Returns md5sum for a message object of type 'idMission-request"
  "dd122c1dfe0519ae39ecbff2cc0c577f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<idMission-request>)))
  "Returns full string definition for message of type '<idMission-request>"
  (cl:format cl:nil "int32 id_mission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'idMission-request)))
  "Returns full string definition for message of type 'idMission-request"
  (cl:format cl:nil "int32 id_mission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <idMission-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <idMission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'idMission-request
    (cl:cons ':id_mission (id_mission msg))
))
;//! \htmlinclude idMission-response.msg.html

(cl:defclass <idMission-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass idMission-response (<idMission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <idMission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'idMission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-srv:<idMission-response> is deprecated: use robotnik_rms_msgs-srv:idMission-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <idMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:success-val is deprecated.  Use robotnik_rms_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <idMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:message-val is deprecated.  Use robotnik_rms_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <idMission-response>) ostream)
  "Serializes a message object of type '<idMission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <idMission-response>) istream)
  "Deserializes a message object of type '<idMission-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<idMission-response>)))
  "Returns string type for a service object of type '<idMission-response>"
  "robotnik_rms_msgs/idMissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'idMission-response)))
  "Returns string type for a service object of type 'idMission-response"
  "robotnik_rms_msgs/idMissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<idMission-response>)))
  "Returns md5sum for a message object of type '<idMission-response>"
  "dd122c1dfe0519ae39ecbff2cc0c577f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'idMission-response)))
  "Returns md5sum for a message object of type 'idMission-response"
  "dd122c1dfe0519ae39ecbff2cc0c577f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<idMission-response>)))
  "Returns full string definition for message of type '<idMission-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'idMission-response)))
  "Returns full string definition for message of type 'idMission-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <idMission-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <idMission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'idMission-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'idMission)))
  'idMission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'idMission)))
  'idMission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'idMission)))
  "Returns string type for a service object of type '<idMission>"
  "robotnik_rms_msgs/idMission")