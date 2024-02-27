; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude UnchargePetition-request.msg.html

(cl:defclass <UnchargePetition-request> (roslisp-msg-protocol:ros-message)
  ((procedure
    :reader procedure
    :initarg :procedure
    :type robot_local_control_msgs-msg:Uncharge
    :initform (cl:make-instance 'robot_local_control_msgs-msg:Uncharge)))
)

(cl:defclass UnchargePetition-request (<UnchargePetition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnchargePetition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnchargePetition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<UnchargePetition-request> is deprecated: use robot_local_control_msgs-srv:UnchargePetition-request instead.")))

(cl:ensure-generic-function 'procedure-val :lambda-list '(m))
(cl:defmethod procedure-val ((m <UnchargePetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:procedure-val is deprecated.  Use robot_local_control_msgs-srv:procedure instead.")
  (procedure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnchargePetition-request>) ostream)
  "Serializes a message object of type '<UnchargePetition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'procedure) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnchargePetition-request>) istream)
  "Deserializes a message object of type '<UnchargePetition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'procedure) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnchargePetition-request>)))
  "Returns string type for a service object of type '<UnchargePetition-request>"
  "robot_local_control_msgs/UnchargePetitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnchargePetition-request)))
  "Returns string type for a service object of type 'UnchargePetition-request"
  "robot_local_control_msgs/UnchargePetitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnchargePetition-request>)))
  "Returns md5sum for a message object of type '<UnchargePetition-request>"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnchargePetition-request)))
  "Returns md5sum for a message object of type 'UnchargePetition-request"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnchargePetition-request>)))
  "Returns full string definition for message of type '<UnchargePetition-request>"
  (cl:format cl:nil "Uncharge procedure ~%~%================================================================================~%MSG: robot_local_control_msgs/Uncharge~%string charge_station~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnchargePetition-request)))
  "Returns full string definition for message of type 'UnchargePetition-request"
  (cl:format cl:nil "Uncharge procedure ~%~%================================================================================~%MSG: robot_local_control_msgs/Uncharge~%string charge_station~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnchargePetition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'procedure))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnchargePetition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UnchargePetition-request
    (cl:cons ':procedure (procedure msg))
))
;//! \htmlinclude UnchargePetition-response.msg.html

(cl:defclass <UnchargePetition-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UnchargePetition-response (<UnchargePetition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnchargePetition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnchargePetition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<UnchargePetition-response> is deprecated: use robot_local_control_msgs-srv:UnchargePetition-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <UnchargePetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:state-val is deprecated.  Use robot_local_control_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <UnchargePetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:result-val is deprecated.  Use robot_local_control_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnchargePetition-response>) ostream)
  "Serializes a message object of type '<UnchargePetition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnchargePetition-response>) istream)
  "Deserializes a message object of type '<UnchargePetition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnchargePetition-response>)))
  "Returns string type for a service object of type '<UnchargePetition-response>"
  "robot_local_control_msgs/UnchargePetitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnchargePetition-response)))
  "Returns string type for a service object of type 'UnchargePetition-response"
  "robot_local_control_msgs/UnchargePetitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnchargePetition-response>)))
  "Returns md5sum for a message object of type '<UnchargePetition-response>"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnchargePetition-response)))
  "Returns md5sum for a message object of type 'UnchargePetition-response"
  "d6d7f27a9204b33d4b52fe501814a3cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnchargePetition-response>)))
  "Returns full string definition for message of type '<UnchargePetition-response>"
  (cl:format cl:nil "procedures_msgs/ProcedureState state~%procedures_msgs/ProcedureResult result~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnchargePetition-response)))
  "Returns full string definition for message of type 'UnchargePetition-response"
  (cl:format cl:nil "procedures_msgs/ProcedureState state~%procedures_msgs/ProcedureResult result~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnchargePetition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnchargePetition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UnchargePetition-response
    (cl:cons ':state (state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UnchargePetition)))
  'UnchargePetition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UnchargePetition)))
  'UnchargePetition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnchargePetition)))
  "Returns string type for a service object of type '<UnchargePetition>"
  "robot_local_control_msgs/UnchargePetition")