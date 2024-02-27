; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude ChargePetition-request.msg.html

(cl:defclass <ChargePetition-request> (roslisp-msg-protocol:ros-message)
  ((procedure
    :reader procedure
    :initarg :procedure
    :type robot_local_control_msgs-msg:Charge
    :initform (cl:make-instance 'robot_local_control_msgs-msg:Charge)))
)

(cl:defclass ChargePetition-request (<ChargePetition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChargePetition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChargePetition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<ChargePetition-request> is deprecated: use robot_local_control_msgs-srv:ChargePetition-request instead.")))

(cl:ensure-generic-function 'procedure-val :lambda-list '(m))
(cl:defmethod procedure-val ((m <ChargePetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:procedure-val is deprecated.  Use robot_local_control_msgs-srv:procedure instead.")
  (procedure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChargePetition-request>) ostream)
  "Serializes a message object of type '<ChargePetition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'procedure) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChargePetition-request>) istream)
  "Deserializes a message object of type '<ChargePetition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'procedure) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChargePetition-request>)))
  "Returns string type for a service object of type '<ChargePetition-request>"
  "robot_local_control_msgs/ChargePetitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargePetition-request)))
  "Returns string type for a service object of type 'ChargePetition-request"
  "robot_local_control_msgs/ChargePetitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChargePetition-request>)))
  "Returns md5sum for a message object of type '<ChargePetition-request>"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChargePetition-request)))
  "Returns md5sum for a message object of type 'ChargePetition-request"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChargePetition-request>)))
  "Returns full string definition for message of type '<ChargePetition-request>"
  (cl:format cl:nil "Charge procedure ~%~%================================================================================~%MSG: robot_local_control_msgs/Charge~%string charge_station~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChargePetition-request)))
  "Returns full string definition for message of type 'ChargePetition-request"
  (cl:format cl:nil "Charge procedure ~%~%================================================================================~%MSG: robot_local_control_msgs/Charge~%string charge_station~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChargePetition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'procedure))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChargePetition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChargePetition-request
    (cl:cons ':procedure (procedure msg))
))
;//! \htmlinclude ChargePetition-response.msg.html

(cl:defclass <ChargePetition-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type procedures_msgs-msg:ProcedureState
    :initform (cl:make-instance 'procedures_msgs-msg:ProcedureState))
   (result
    :reader result
    :initarg :result
    :type procedures_msgs-msg:ProcedureResult
    :initform (cl:make-instance 'procedures_msgs-msg:ProcedureResult)))
)

(cl:defclass ChargePetition-response (<ChargePetition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChargePetition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChargePetition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<ChargePetition-response> is deprecated: use robot_local_control_msgs-srv:ChargePetition-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChargePetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:state-val is deprecated.  Use robot_local_control_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChargePetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:result-val is deprecated.  Use robot_local_control_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChargePetition-response>) ostream)
  "Serializes a message object of type '<ChargePetition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChargePetition-response>) istream)
  "Deserializes a message object of type '<ChargePetition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChargePetition-response>)))
  "Returns string type for a service object of type '<ChargePetition-response>"
  "robot_local_control_msgs/ChargePetitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargePetition-response)))
  "Returns string type for a service object of type 'ChargePetition-response"
  "robot_local_control_msgs/ChargePetitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChargePetition-response>)))
  "Returns md5sum for a message object of type '<ChargePetition-response>"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChargePetition-response)))
  "Returns md5sum for a message object of type 'ChargePetition-response"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChargePetition-response>)))
  "Returns full string definition for message of type '<ChargePetition-response>"
  (cl:format cl:nil "procedures_msgs/ProcedureState state~%procedures_msgs/ProcedureResult result~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChargePetition-response)))
  "Returns full string definition for message of type 'ChargePetition-response"
  (cl:format cl:nil "procedures_msgs/ProcedureState state~%procedures_msgs/ProcedureResult result~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChargePetition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChargePetition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChargePetition-response
    (cl:cons ':state (state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChargePetition)))
  'ChargePetition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChargePetition)))
  'ChargePetition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargePetition)))
  "Returns string type for a service object of type '<ChargePetition>"
  "robot_local_control_msgs/ChargePetition")