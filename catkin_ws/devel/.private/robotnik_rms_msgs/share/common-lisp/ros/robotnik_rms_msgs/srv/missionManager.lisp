; Auto-generated. Do not edit!


(cl:in-package robotnik_rms_msgs-srv)


;//! \htmlinclude missionManager-request.msg.html

(cl:defclass <missionManager-request> (roslisp-msg-protocol:ros-message)
  ((mission
    :reader mission
    :initarg :mission
    :type robotnik_rms_msgs-msg:mission
    :initform (cl:make-instance 'robotnik_rms_msgs-msg:mission)))
)

(cl:defclass missionManager-request (<missionManager-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <missionManager-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'missionManager-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-srv:<missionManager-request> is deprecated: use robotnik_rms_msgs-srv:missionManager-request instead.")))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <missionManager-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:mission-val is deprecated.  Use robotnik_rms_msgs-srv:mission instead.")
  (mission m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <missionManager-request>) ostream)
  "Serializes a message object of type '<missionManager-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mission) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <missionManager-request>) istream)
  "Deserializes a message object of type '<missionManager-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mission) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<missionManager-request>)))
  "Returns string type for a service object of type '<missionManager-request>"
  "robotnik_rms_msgs/missionManagerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'missionManager-request)))
  "Returns string type for a service object of type 'missionManager-request"
  "robotnik_rms_msgs/missionManagerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<missionManager-request>)))
  "Returns md5sum for a message object of type '<missionManager-request>"
  "eed017ea040ecaef8187ff321acee5e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'missionManager-request)))
  "Returns md5sum for a message object of type 'missionManager-request"
  "eed017ea040ecaef8187ff321acee5e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<missionManager-request>)))
  "Returns full string definition for message of type '<missionManager-request>"
  (cl:format cl:nil "robotnik_rms_msgs/mission mission~%~%================================================================================~%MSG: robotnik_rms_msgs/mission~%string name_mission~%int32 id_mission~%string description~%robotnik_rms_msgs/action[] actions~%~%================================================================================~%MSG: robotnik_rms_msgs/action~%~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'missionManager-request)))
  "Returns full string definition for message of type 'missionManager-request"
  (cl:format cl:nil "robotnik_rms_msgs/mission mission~%~%================================================================================~%MSG: robotnik_rms_msgs/mission~%string name_mission~%int32 id_mission~%string description~%robotnik_rms_msgs/action[] actions~%~%================================================================================~%MSG: robotnik_rms_msgs/action~%~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <missionManager-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mission))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <missionManager-request>))
  "Converts a ROS message object to a list"
  (cl:list 'missionManager-request
    (cl:cons ':mission (mission msg))
))
;//! \htmlinclude missionManager-response.msg.html

(cl:defclass <missionManager-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass missionManager-response (<missionManager-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <missionManager-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'missionManager-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-srv:<missionManager-response> is deprecated: use robotnik_rms_msgs-srv:missionManager-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <missionManager-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:success-val is deprecated.  Use robotnik_rms_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <missionManager-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:message-val is deprecated.  Use robotnik_rms_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <missionManager-response>) ostream)
  "Serializes a message object of type '<missionManager-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <missionManager-response>) istream)
  "Deserializes a message object of type '<missionManager-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<missionManager-response>)))
  "Returns string type for a service object of type '<missionManager-response>"
  "robotnik_rms_msgs/missionManagerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'missionManager-response)))
  "Returns string type for a service object of type 'missionManager-response"
  "robotnik_rms_msgs/missionManagerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<missionManager-response>)))
  "Returns md5sum for a message object of type '<missionManager-response>"
  "eed017ea040ecaef8187ff321acee5e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'missionManager-response)))
  "Returns md5sum for a message object of type 'missionManager-response"
  "eed017ea040ecaef8187ff321acee5e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<missionManager-response>)))
  "Returns full string definition for message of type '<missionManager-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'missionManager-response)))
  "Returns full string definition for message of type 'missionManager-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <missionManager-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <missionManager-response>))
  "Converts a ROS message object to a list"
  (cl:list 'missionManager-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'missionManager)))
  'missionManager-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'missionManager)))
  'missionManager-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'missionManager)))
  "Returns string type for a service object of type '<missionManager>"
  "robotnik_rms_msgs/missionManager")