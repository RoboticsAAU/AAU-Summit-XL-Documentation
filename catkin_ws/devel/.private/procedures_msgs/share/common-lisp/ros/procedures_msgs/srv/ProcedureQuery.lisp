; Auto-generated. Do not edit!


(cl:in-package procedures_msgs-srv)


;//! \htmlinclude ProcedureQuery-request.msg.html

(cl:defclass <ProcedureQuery-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type procedures_msgs-msg:ProcedureHeader
    :initform (cl:make-instance 'procedures_msgs-msg:ProcedureHeader)))
)

(cl:defclass ProcedureQuery-request (<ProcedureQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcedureQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcedureQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name procedures_msgs-srv:<ProcedureQuery-request> is deprecated: use procedures_msgs-srv:ProcedureQuery-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProcedureQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-srv:header-val is deprecated.  Use procedures_msgs-srv:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcedureQuery-request>) ostream)
  "Serializes a message object of type '<ProcedureQuery-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcedureQuery-request>) istream)
  "Deserializes a message object of type '<ProcedureQuery-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcedureQuery-request>)))
  "Returns string type for a service object of type '<ProcedureQuery-request>"
  "procedures_msgs/ProcedureQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcedureQuery-request)))
  "Returns string type for a service object of type 'ProcedureQuery-request"
  "procedures_msgs/ProcedureQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcedureQuery-request>)))
  "Returns md5sum for a message object of type '<ProcedureQuery-request>"
  "ed5e053c790e6fde7d83c20c942744f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcedureQuery-request)))
  "Returns md5sum for a message object of type 'ProcedureQuery-request"
  "ed5e053c790e6fde7d83c20c942744f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcedureQuery-request>)))
  "Returns full string definition for message of type '<ProcedureQuery-request>"
  (cl:format cl:nil "ProcedureHeader header~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcedureQuery-request)))
  "Returns full string definition for message of type 'ProcedureQuery-request"
  (cl:format cl:nil "ProcedureHeader header~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcedureQuery-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcedureQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcedureQuery-request
    (cl:cons ':header (header msg))
))
;//! \htmlinclude ProcedureQuery-response.msg.html

(cl:defclass <ProcedureQuery-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type procedures_msgs-msg:ProcedureState
    :initform (cl:make-instance 'procedures_msgs-msg:ProcedureState))
   (result
    :reader result
    :initarg :result
    :type procedures_msgs-msg:ProcedureResult
    :initform (cl:make-instance 'procedures_msgs-msg:ProcedureResult))
   (last_message
    :reader last_message
    :initarg :last_message
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ProcedureQuery-response (<ProcedureQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcedureQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcedureQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name procedures_msgs-srv:<ProcedureQuery-response> is deprecated: use procedures_msgs-srv:ProcedureQuery-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ProcedureQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-srv:state-val is deprecated.  Use procedures_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ProcedureQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-srv:result-val is deprecated.  Use procedures_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'last_message-val :lambda-list '(m))
(cl:defmethod last_message-val ((m <ProcedureQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-srv:last_message-val is deprecated.  Use procedures_msgs-srv:last_message instead.")
  (last_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcedureQuery-response>) ostream)
  "Serializes a message object of type '<ProcedureQuery-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcedureQuery-response>) istream)
  "Deserializes a message object of type '<ProcedureQuery-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcedureQuery-response>)))
  "Returns string type for a service object of type '<ProcedureQuery-response>"
  "procedures_msgs/ProcedureQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcedureQuery-response)))
  "Returns string type for a service object of type 'ProcedureQuery-response"
  "procedures_msgs/ProcedureQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcedureQuery-response>)))
  "Returns md5sum for a message object of type '<ProcedureQuery-response>"
  "ed5e053c790e6fde7d83c20c942744f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcedureQuery-response)))
  "Returns md5sum for a message object of type 'ProcedureQuery-response"
  "ed5e053c790e6fde7d83c20c942744f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcedureQuery-response>)))
  "Returns full string definition for message of type '<ProcedureQuery-response>"
  (cl:format cl:nil "ProcedureState state~%ProcedureResult result~%std_msgs/String last_message~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcedureQuery-response)))
  "Returns full string definition for message of type 'ProcedureQuery-response"
  (cl:format cl:nil "ProcedureState state~%ProcedureResult result~%std_msgs/String last_message~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcedureQuery-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcedureQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcedureQuery-response
    (cl:cons ':state (state msg))
    (cl:cons ':result (result msg))
    (cl:cons ':last_message (last_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProcedureQuery)))
  'ProcedureQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProcedureQuery)))
  'ProcedureQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcedureQuery)))
  "Returns string type for a service object of type '<ProcedureQuery>"
  "procedures_msgs/ProcedureQuery")