; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-srv)


;//! \htmlinclude SwitchMapPetition-request.msg.html

(cl:defclass <SwitchMapPetition-request> (roslisp-msg-protocol:ros-message)
  ((procedure
    :reader procedure
    :initarg :procedure
    :type robot_local_control_msgs-msg:SwitchMap
    :initform (cl:make-instance 'robot_local_control_msgs-msg:SwitchMap)))
)

(cl:defclass SwitchMapPetition-request (<SwitchMapPetition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMapPetition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMapPetition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SwitchMapPetition-request> is deprecated: use robot_local_control_msgs-srv:SwitchMapPetition-request instead.")))

(cl:ensure-generic-function 'procedure-val :lambda-list '(m))
(cl:defmethod procedure-val ((m <SwitchMapPetition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:procedure-val is deprecated.  Use robot_local_control_msgs-srv:procedure instead.")
  (procedure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMapPetition-request>) ostream)
  "Serializes a message object of type '<SwitchMapPetition-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'procedure) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMapPetition-request>) istream)
  "Deserializes a message object of type '<SwitchMapPetition-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'procedure) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMapPetition-request>)))
  "Returns string type for a service object of type '<SwitchMapPetition-request>"
  "robot_local_control_msgs/SwitchMapPetitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMapPetition-request)))
  "Returns string type for a service object of type 'SwitchMapPetition-request"
  "robot_local_control_msgs/SwitchMapPetitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMapPetition-request>)))
  "Returns md5sum for a message object of type '<SwitchMapPetition-request>"
  "2bfe0dcd456b842958098fba699b2d25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMapPetition-request)))
  "Returns md5sum for a message object of type 'SwitchMapPetition-request"
  "2bfe0dcd456b842958098fba699b2d25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMapPetition-request>)))
  "Returns full string definition for message of type '<SwitchMapPetition-request>"
  (cl:format cl:nil "SwitchMap procedure ~%~%================================================================================~%MSG: robot_local_control_msgs/SwitchMap~%# sample values: floor_0, floor_1~%string map~%~%# position and orentation on the new floor~%std_msgs/Float32 x ~%std_msgs/Float32 y~%std_msgs/Float32 theta~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMapPetition-request)))
  "Returns full string definition for message of type 'SwitchMapPetition-request"
  (cl:format cl:nil "SwitchMap procedure ~%~%================================================================================~%MSG: robot_local_control_msgs/SwitchMap~%# sample values: floor_0, floor_1~%string map~%~%# position and orentation on the new floor~%std_msgs/Float32 x ~%std_msgs/Float32 y~%std_msgs/Float32 theta~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMapPetition-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'procedure))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMapPetition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMapPetition-request
    (cl:cons ':procedure (procedure msg))
))
;//! \htmlinclude SwitchMapPetition-response.msg.html

(cl:defclass <SwitchMapPetition-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SwitchMapPetition-response (<SwitchMapPetition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMapPetition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMapPetition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-srv:<SwitchMapPetition-response> is deprecated: use robot_local_control_msgs-srv:SwitchMapPetition-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SwitchMapPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:state-val is deprecated.  Use robot_local_control_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SwitchMapPetition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-srv:result-val is deprecated.  Use robot_local_control_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMapPetition-response>) ostream)
  "Serializes a message object of type '<SwitchMapPetition-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMapPetition-response>) istream)
  "Deserializes a message object of type '<SwitchMapPetition-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMapPetition-response>)))
  "Returns string type for a service object of type '<SwitchMapPetition-response>"
  "robot_local_control_msgs/SwitchMapPetitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMapPetition-response)))
  "Returns string type for a service object of type 'SwitchMapPetition-response"
  "robot_local_control_msgs/SwitchMapPetitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMapPetition-response>)))
  "Returns md5sum for a message object of type '<SwitchMapPetition-response>"
  "2bfe0dcd456b842958098fba699b2d25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMapPetition-response)))
  "Returns md5sum for a message object of type 'SwitchMapPetition-response"
  "2bfe0dcd456b842958098fba699b2d25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMapPetition-response>)))
  "Returns full string definition for message of type '<SwitchMapPetition-response>"
  (cl:format cl:nil "procedures_msgs/ProcedureState state~%procedures_msgs/ProcedureResult result~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMapPetition-response)))
  "Returns full string definition for message of type 'SwitchMapPetition-response"
  (cl:format cl:nil "procedures_msgs/ProcedureState state~%procedures_msgs/ProcedureResult result~%~%~%================================================================================~%MSG: procedures_msgs/ProcedureState~%# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message~%string QUEUED=queued~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%~%# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message~%# events triggered from outside~%string ADDED=added~%string START=start~%string STOP=stop~%string CANCEL=cancel~%string PAUSE=pause~%string RESUME=resume~%# self triggered events~%string FINISH=finish~%string ABORT=abort~%~%# additionally, both state and event can be UNKNOW~%string UNKNOWN=unknown~%~%ProcedureHeader header~%string current_state~%string last_event~%~%================================================================================~%MSG: procedures_msgs/ProcedureHeader~%# id: identifies the procedure in the robot context.~%# user should do not set this, but the proceduremanager~%# TODO: may be replaced with uuid_msgs/UniqueID.~%int32 id~%# priority: priority of the current procedure. used in case procedure preemption is allowed~%int32 priority~%# stamp: timestamp when procedure was started.~%# may be used by the procedure manager.~%time stamp~%# name: human readable identificator.~%# set by the user, can be empty~%# not used by the procedure manager to identify the procedure~%string name~%~%================================================================================~%MSG: procedures_msgs/ProcedureResult~%# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMapPetition-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMapPetition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMapPetition-response
    (cl:cons ':state (state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchMapPetition)))
  'SwitchMapPetition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchMapPetition)))
  'SwitchMapPetition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMapPetition)))
  "Returns string type for a service object of type '<SwitchMapPetition>"
  "robot_local_control_msgs/SwitchMapPetition")