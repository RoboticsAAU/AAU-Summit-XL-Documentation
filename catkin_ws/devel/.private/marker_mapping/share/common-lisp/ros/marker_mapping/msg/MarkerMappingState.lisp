; Auto-generated. Do not edit!


(cl:in-package marker_mapping-msg)


;//! \htmlinclude MarkerMappingState.msg.html

(cl:defclass <MarkerMappingState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robotnik_msgs-msg:State
    :initform (cl:make-instance 'robotnik_msgs-msg:State))
   (ids_recorded
    :reader ids_recorded
    :initarg :ids_recorded
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (ids_detected
    :reader ids_detected
    :initarg :ids_detected
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MarkerMappingState (<MarkerMappingState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerMappingState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerMappingState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-msg:<MarkerMappingState> is deprecated: use marker_mapping-msg:MarkerMappingState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MarkerMappingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:state-val is deprecated.  Use marker_mapping-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'ids_recorded-val :lambda-list '(m))
(cl:defmethod ids_recorded-val ((m <MarkerMappingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:ids_recorded-val is deprecated.  Use marker_mapping-msg:ids_recorded instead.")
  (ids_recorded m))

(cl:ensure-generic-function 'ids_detected-val :lambda-list '(m))
(cl:defmethod ids_detected-val ((m <MarkerMappingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-msg:ids_detected-val is deprecated.  Use marker_mapping-msg:ids_detected instead.")
  (ids_detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerMappingState>) ostream)
  "Serializes a message object of type '<MarkerMappingState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids_recorded))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids_recorded))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids_detected))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids_detected))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerMappingState>) istream)
  "Deserializes a message object of type '<MarkerMappingState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids_recorded) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids_recorded)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids_detected) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids_detected)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerMappingState>)))
  "Returns string type for a message object of type '<MarkerMappingState>"
  "marker_mapping/MarkerMappingState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerMappingState)))
  "Returns string type for a message object of type 'MarkerMappingState"
  "marker_mapping/MarkerMappingState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerMappingState>)))
  "Returns md5sum for a message object of type '<MarkerMappingState>"
  "eb3fc0eea314f2b16a963d2e0c2d2b3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerMappingState)))
  "Returns md5sum for a message object of type 'MarkerMappingState"
  "eb3fc0eea314f2b16a963d2e0c2d2b3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerMappingState>)))
  "Returns full string definition for message of type '<MarkerMappingState>"
  (cl:format cl:nil "robotnik_msgs/State state~%int32[] ids_recorded~%int32[] ids_detected~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerMappingState)))
  "Returns full string definition for message of type 'MarkerMappingState"
  (cl:format cl:nil "robotnik_msgs/State state~%int32[] ids_recorded~%int32[] ids_detected~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerMappingState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids_recorded) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids_detected) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerMappingState>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerMappingState
    (cl:cons ':state (state msg))
    (cl:cons ':ids_recorded (ids_recorded msg))
    (cl:cons ':ids_detected (ids_detected msg))
))
