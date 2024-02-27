; Auto-generated. Do not edit!


(cl:in-package robotnik_rms_msgs-srv)


;//! \htmlinclude getMissions-request.msg.html

(cl:defclass <getMissions-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getMissions-request (<getMissions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMissions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMissions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-srv:<getMissions-request> is deprecated: use robotnik_rms_msgs-srv:getMissions-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMissions-request>) ostream)
  "Serializes a message object of type '<getMissions-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMissions-request>) istream)
  "Deserializes a message object of type '<getMissions-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMissions-request>)))
  "Returns string type for a service object of type '<getMissions-request>"
  "robotnik_rms_msgs/getMissionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMissions-request)))
  "Returns string type for a service object of type 'getMissions-request"
  "robotnik_rms_msgs/getMissionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMissions-request>)))
  "Returns md5sum for a message object of type '<getMissions-request>"
  "b76c60d5e61505e4ed284f030715b867")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMissions-request)))
  "Returns md5sum for a message object of type 'getMissions-request"
  "b76c60d5e61505e4ed284f030715b867")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMissions-request>)))
  "Returns full string definition for message of type '<getMissions-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMissions-request)))
  "Returns full string definition for message of type 'getMissions-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMissions-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMissions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getMissions-request
))
;//! \htmlinclude getMissions-response.msg.html

(cl:defclass <getMissions-response> (roslisp-msg-protocol:ros-message)
  ((missions
    :reader missions
    :initarg :missions
    :type (cl:vector robotnik_rms_msgs-msg:mission)
   :initform (cl:make-array 0 :element-type 'robotnik_rms_msgs-msg:mission :initial-element (cl:make-instance 'robotnik_rms_msgs-msg:mission)))
   (success
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

(cl:defclass getMissions-response (<getMissions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMissions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMissions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-srv:<getMissions-response> is deprecated: use robotnik_rms_msgs-srv:getMissions-response instead.")))

(cl:ensure-generic-function 'missions-val :lambda-list '(m))
(cl:defmethod missions-val ((m <getMissions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:missions-val is deprecated.  Use robotnik_rms_msgs-srv:missions instead.")
  (missions m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <getMissions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:success-val is deprecated.  Use robotnik_rms_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <getMissions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-srv:message-val is deprecated.  Use robotnik_rms_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMissions-response>) ostream)
  "Serializes a message object of type '<getMissions-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'missions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'missions))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMissions-response>) istream)
  "Deserializes a message object of type '<getMissions-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'missions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'missions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_rms_msgs-msg:mission))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMissions-response>)))
  "Returns string type for a service object of type '<getMissions-response>"
  "robotnik_rms_msgs/getMissionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMissions-response)))
  "Returns string type for a service object of type 'getMissions-response"
  "robotnik_rms_msgs/getMissionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMissions-response>)))
  "Returns md5sum for a message object of type '<getMissions-response>"
  "b76c60d5e61505e4ed284f030715b867")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMissions-response)))
  "Returns md5sum for a message object of type 'getMissions-response"
  "b76c60d5e61505e4ed284f030715b867")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMissions-response>)))
  "Returns full string definition for message of type '<getMissions-response>"
  (cl:format cl:nil "robotnik_rms_msgs/mission[] missions~%bool success~%string message~%~%================================================================================~%MSG: robotnik_rms_msgs/mission~%string name_mission~%int32 id_mission~%string description~%robotnik_rms_msgs/action[] actions~%~%================================================================================~%MSG: robotnik_rms_msgs/action~%~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMissions-response)))
  "Returns full string definition for message of type 'getMissions-response"
  (cl:format cl:nil "robotnik_rms_msgs/mission[] missions~%bool success~%string message~%~%================================================================================~%MSG: robotnik_rms_msgs/mission~%string name_mission~%int32 id_mission~%string description~%robotnik_rms_msgs/action[] actions~%~%================================================================================~%MSG: robotnik_rms_msgs/action~%~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMissions-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'missions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMissions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getMissions-response
    (cl:cons ':missions (missions msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getMissions)))
  'getMissions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getMissions)))
  'getMissions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMissions)))
  "Returns string type for a service object of type '<getMissions>"
  "robotnik_rms_msgs/getMissions")