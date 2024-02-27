; Auto-generated. Do not edit!


(cl:in-package map_nav_manager-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robotnik_msgs-msg:State
    :initform (cl:make-instance 'robotnik_msgs-msg:State))
   (substate
    :reader substate
    :initarg :substate
    :type cl:string
    :initform "")
   (mapping
    :reader mapping
    :initarg :mapping
    :type cl:boolean
    :initform cl:nil)
   (navigation
    :reader navigation
    :initarg :navigation
    :type cl:boolean
    :initform cl:nil)
   (localization
    :reader localization
    :initarg :localization
    :type cl:boolean
    :initform cl:nil)
   (map_server
    :reader map_server
    :initarg :map_server
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_nav_manager-msg:<State> is deprecated: use map_nav_manager-msg:State instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-msg:state-val is deprecated.  Use map_nav_manager-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'substate-val :lambda-list '(m))
(cl:defmethod substate-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-msg:substate-val is deprecated.  Use map_nav_manager-msg:substate instead.")
  (substate m))

(cl:ensure-generic-function 'mapping-val :lambda-list '(m))
(cl:defmethod mapping-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-msg:mapping-val is deprecated.  Use map_nav_manager-msg:mapping instead.")
  (mapping m))

(cl:ensure-generic-function 'navigation-val :lambda-list '(m))
(cl:defmethod navigation-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-msg:navigation-val is deprecated.  Use map_nav_manager-msg:navigation instead.")
  (navigation m))

(cl:ensure-generic-function 'localization-val :lambda-list '(m))
(cl:defmethod localization-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-msg:localization-val is deprecated.  Use map_nav_manager-msg:localization instead.")
  (localization m))

(cl:ensure-generic-function 'map_server-val :lambda-list '(m))
(cl:defmethod map_server-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_nav_manager-msg:map_server-val is deprecated.  Use map_nav_manager-msg:map_server instead.")
  (map_server m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'substate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'substate))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mapping) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'navigation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'localization) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'map_server) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'substate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'substate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mapping) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'navigation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'localization) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'map_server) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "map_nav_manager/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "map_nav_manager/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "fb3247a8a50c3079508d6ddd0c93c134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "fb3247a8a50c3079508d6ddd0c93c134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "robotnik_msgs/State state~%string substate~%bool mapping~%bool navigation~%bool localization~%bool map_server~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "robotnik_msgs/State state~%string substate~%bool mapping~%bool navigation~%bool localization~%bool map_server~%~%================================================================================~%MSG: robotnik_msgs/State~%# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'substate))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':state (state msg))
    (cl:cons ':substate (substate msg))
    (cl:cons ':mapping (mapping msg))
    (cl:cons ':navigation (navigation msg))
    (cl:cons ':localization (localization msg))
    (cl:cons ':map_server (map_server msg))
))
