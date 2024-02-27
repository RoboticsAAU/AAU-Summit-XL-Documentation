; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude MissionCommand.msg.html

(cl:defclass <MissionCommand> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (int_params
    :reader int_params
    :initarg :int_params
    :type (cl:vector robot_local_control_msgs-msg:MissionParamInt)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:MissionParamInt :initial-element (cl:make-instance 'robot_local_control_msgs-msg:MissionParamInt)))
   (float_params
    :reader float_params
    :initarg :float_params
    :type (cl:vector robot_local_control_msgs-msg:MissionParamFloat)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:MissionParamFloat :initial-element (cl:make-instance 'robot_local_control_msgs-msg:MissionParamFloat)))
   (string_params
    :reader string_params
    :initarg :string_params
    :type (cl:vector robot_local_control_msgs-msg:MissionParamString)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:MissionParamString :initial-element (cl:make-instance 'robot_local_control_msgs-msg:MissionParamString)))
   (bool_params
    :reader bool_params
    :initarg :bool_params
    :type (cl:vector robot_local_control_msgs-msg:MissionParamBool)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:MissionParamBool :initial-element (cl:make-instance 'robot_local_control_msgs-msg:MissionParamBool))))
)

(cl:defclass MissionCommand (<MissionCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<MissionCommand> is deprecated: use robot_local_control_msgs-msg:MissionCommand instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:id-val is deprecated.  Use robot_local_control_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <MissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:command-val is deprecated.  Use robot_local_control_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'int_params-val :lambda-list '(m))
(cl:defmethod int_params-val ((m <MissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:int_params-val is deprecated.  Use robot_local_control_msgs-msg:int_params instead.")
  (int_params m))

(cl:ensure-generic-function 'float_params-val :lambda-list '(m))
(cl:defmethod float_params-val ((m <MissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:float_params-val is deprecated.  Use robot_local_control_msgs-msg:float_params instead.")
  (float_params m))

(cl:ensure-generic-function 'string_params-val :lambda-list '(m))
(cl:defmethod string_params-val ((m <MissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:string_params-val is deprecated.  Use robot_local_control_msgs-msg:string_params instead.")
  (string_params m))

(cl:ensure-generic-function 'bool_params-val :lambda-list '(m))
(cl:defmethod bool_params-val ((m <MissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:bool_params-val is deprecated.  Use robot_local_control_msgs-msg:bool_params instead.")
  (bool_params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionCommand>)))
    "Constants for message type '<MissionCommand>"
  '((:GOTO_POSE . goto_pose)
    (:GOTO_TAG . goto_tag)
    (:GOTO_NODE . goto_node))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionCommand)))
    "Constants for message type 'MissionCommand"
  '((:GOTO_POSE . goto_pose)
    (:GOTO_TAG . goto_tag)
    (:GOTO_NODE . goto_node))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCommand>) ostream)
  "Serializes a message object of type '<MissionCommand>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'int_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'int_params))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'float_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'float_params))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'string_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'string_params))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bool_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bool_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCommand>) istream)
  "Deserializes a message object of type '<MissionCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'int_params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'int_params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:MissionParamInt))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'float_params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'float_params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:MissionParamFloat))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'string_params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'string_params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:MissionParamString))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bool_params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bool_params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:MissionParamBool))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCommand>)))
  "Returns string type for a message object of type '<MissionCommand>"
  "robot_local_control_msgs/MissionCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCommand)))
  "Returns string type for a message object of type 'MissionCommand"
  "robot_local_control_msgs/MissionCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCommand>)))
  "Returns md5sum for a message object of type '<MissionCommand>"
  "c34ea7f130e34df4f5f94460596dd71a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCommand)))
  "Returns md5sum for a message object of type 'MissionCommand"
  "c34ea7f130e34df4f5f94460596dd71a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCommand>)))
  "Returns full string definition for message of type '<MissionCommand>"
  (cl:format cl:nil "# XXX: DO NOT USE THIS MESSAGE~%# available commands~%string GOTO_POSE=goto_pose~%string GOTO_TAG=goto_tag~%string GOTO_NODE=goto_node~%~%# id set from the subsystem calling the service~%int32 id~%# command from the available commands~%string command~%~%MissionParamInt[] int_params~%MissionParamFloat[] float_params~%MissionParamString[] string_params~%MissionParamBool[] bool_params~%~%~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamInt~%# param name~%string name~%# param value~%int32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamFloat~%# param name~%string name~%# param value~%float32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamString~%# param name~%string name~%# param value~%string value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamBool~%# param name~%string name~%# param value~%bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCommand)))
  "Returns full string definition for message of type 'MissionCommand"
  (cl:format cl:nil "# XXX: DO NOT USE THIS MESSAGE~%# available commands~%string GOTO_POSE=goto_pose~%string GOTO_TAG=goto_tag~%string GOTO_NODE=goto_node~%~%# id set from the subsystem calling the service~%int32 id~%# command from the available commands~%string command~%~%MissionParamInt[] int_params~%MissionParamFloat[] float_params~%MissionParamString[] string_params~%MissionParamBool[] bool_params~%~%~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamInt~%# param name~%string name~%# param value~%int32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamFloat~%# param name~%string name~%# param value~%float32 value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamString~%# param name~%string name~%# param value~%string value~%~%~%================================================================================~%MSG: robot_local_control_msgs/MissionParamBool~%# param name~%string name~%# param value~%bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCommand>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'int_params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'float_params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'string_params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bool_params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCommand
    (cl:cons ':id (id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':int_params (int_params msg))
    (cl:cons ':float_params (float_params msg))
    (cl:cons ':string_params (string_params msg))
    (cl:cons ':bool_params (bool_params msg))
))
