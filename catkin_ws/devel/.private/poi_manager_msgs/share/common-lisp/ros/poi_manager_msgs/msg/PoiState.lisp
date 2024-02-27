; Auto-generated. Do not edit!


(cl:in-package poi_manager_msgs-msg)


;//! \htmlinclude PoiState.msg.html

(cl:defclass <PoiState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robotnik_msgs-msg:State
    :initform (cl:make-instance 'robotnik_msgs-msg:State))
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass PoiState (<PoiState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoiState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoiState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager_msgs-msg:<PoiState> is deprecated: use poi_manager_msgs-msg:PoiState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PoiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-msg:state-val is deprecated.  Use poi_manager_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PoiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager_msgs-msg:action-val is deprecated.  Use poi_manager_msgs-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PoiState>)))
    "Constants for message type '<PoiState>"
  '((:IDLE . idle)
    (:GOTO . goto))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PoiState)))
    "Constants for message type 'PoiState"
  '((:IDLE . idle)
    (:GOTO . goto))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoiState>) ostream)
  "Serializes a message object of type '<PoiState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoiState>) istream)
  "Deserializes a message object of type '<PoiState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoiState>)))
  "Returns string type for a message object of type '<PoiState>"
  "poi_manager_msgs/PoiState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoiState)))
  "Returns string type for a message object of type 'PoiState"
  "poi_manager_msgs/PoiState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoiState>)))
  "Returns md5sum for a message object of type '<PoiState>"
  "101b52bedf2e3b0a4131fc9efb64a91c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoiState)))
  "Returns md5sum for a message object of type 'PoiState"
  "101b52bedf2e3b0a4131fc9efb64a91c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoiState>)))
  "Returns full string definition for message of type '<PoiState>"
  (cl:format cl:nil "string IDLE=idle~%string GOTO=goto~%~%robotnik_msgs/State state~%string action~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoiState)))
  "Returns full string definition for message of type 'PoiState"
  (cl:format cl:nil "string IDLE=idle~%string GOTO=goto~%~%robotnik_msgs/State state~%string action~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoiState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoiState>))
  "Converts a ROS message object to a list"
  (cl:list 'PoiState
    (cl:cons ':state (state msg))
    (cl:cons ':action (action msg))
))
