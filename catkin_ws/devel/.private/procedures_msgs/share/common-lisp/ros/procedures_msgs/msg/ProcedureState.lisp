; Auto-generated. Do not edit!


(cl:in-package procedures_msgs-msg)


;//! \htmlinclude ProcedureState.msg.html

(cl:defclass <ProcedureState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type procedures_msgs-msg:ProcedureHeader
    :initform (cl:make-instance 'procedures_msgs-msg:ProcedureHeader))
   (current_state
    :reader current_state
    :initarg :current_state
    :type cl:string
    :initform "")
   (last_event
    :reader last_event
    :initarg :last_event
    :type cl:string
    :initform ""))
)

(cl:defclass ProcedureState (<ProcedureState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcedureState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcedureState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name procedures_msgs-msg:<ProcedureState> is deprecated: use procedures_msgs-msg:ProcedureState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProcedureState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-msg:header-val is deprecated.  Use procedures_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <ProcedureState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-msg:current_state-val is deprecated.  Use procedures_msgs-msg:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'last_event-val :lambda-list '(m))
(cl:defmethod last_event-val ((m <ProcedureState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-msg:last_event-val is deprecated.  Use procedures_msgs-msg:last_event instead.")
  (last_event m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProcedureState>)))
    "Constants for message type '<ProcedureState>"
  '((:QUEUED . queued)
    (:RUNNING . running)
    (:PAUSED . paused)
    (:FINISHED . finished)
    (:ADDED . added)
    (:START . start)
    (:STOP . stop)
    (:CANCEL . cancel)
    (:PAUSE . pause)
    (:RESUME . resume)
    (:FINISH . finish)
    (:ABORT . abort)
    (:UNKNOWN . unknown))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProcedureState)))
    "Constants for message type 'ProcedureState"
  '((:QUEUED . queued)
    (:RUNNING . running)
    (:PAUSED . paused)
    (:FINISHED . finished)
    (:ADDED . added)
    (:START . start)
    (:STOP . stop)
    (:CANCEL . cancel)
    (:PAUSE . pause)
    (:RESUME . resume)
    (:FINISH . finish)
    (:ABORT . abort)
    (:UNKNOWN . unknown))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcedureState>) ostream)
  "Serializes a message object of type '<ProcedureState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_event))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_event))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcedureState>) istream)
  "Deserializes a message object of type '<ProcedureState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_event) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_event) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcedureState>)))
  "Returns string type for a message object of type '<ProcedureState>"
  "procedures_msgs/ProcedureState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcedureState)))
  "Returns string type for a message object of type 'ProcedureState"
  "procedures_msgs/ProcedureState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcedureState>)))
  "Returns md5sum for a message object of type '<ProcedureState>"
  "6979cad7e83ce5406a65ccecf3686f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcedureState)))
  "Returns md5sum for a message object of type 'ProcedureState"
  "6979cad7e83ce5406a65ccecf3686f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcedureState>)))
  "Returns full string definition for message of type '<ProcedureState>"
  (cl:format cl:nil "# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcedureState)))
  "Returns full string definition for message of type 'ProcedureState"
  (cl:format cl:nil "# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcedureState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'current_state))
     4 (cl:length (cl:slot-value msg 'last_event))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcedureState>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcedureState
    (cl:cons ':header (header msg))
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':last_event (last_event msg))
))
