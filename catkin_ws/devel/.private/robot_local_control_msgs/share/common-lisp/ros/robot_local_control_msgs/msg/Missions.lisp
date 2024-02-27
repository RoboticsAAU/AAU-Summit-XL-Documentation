; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude Missions.msg.html

(cl:defclass <Missions> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type robot_local_control_msgs-msg:MissionStatus
    :initform (cl:make-instance 'robot_local_control_msgs-msg:MissionStatus))
   (last
    :reader last
    :initarg :last
    :type (cl:vector robot_local_control_msgs-msg:MissionStatus)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:MissionStatus :initial-element (cl:make-instance 'robot_local_control_msgs-msg:MissionStatus))))
)

(cl:defclass Missions (<Missions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Missions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Missions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<Missions> is deprecated: use robot_local_control_msgs-msg:Missions instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <Missions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:current-val is deprecated.  Use robot_local_control_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'last-val :lambda-list '(m))
(cl:defmethod last-val ((m <Missions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:last-val is deprecated.  Use robot_local_control_msgs-msg:last instead.")
  (last m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Missions>) ostream)
  "Serializes a message object of type '<Missions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'last))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'last))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Missions>) istream)
  "Deserializes a message object of type '<Missions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'last) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'last)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:MissionStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Missions>)))
  "Returns string type for a message object of type '<Missions>"
  "robot_local_control_msgs/Missions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Missions)))
  "Returns string type for a message object of type 'Missions"
  "robot_local_control_msgs/Missions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Missions>)))
  "Returns md5sum for a message object of type '<Missions>"
  "ce8a7c135707fc7974e11a568a86af9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Missions)))
  "Returns md5sum for a message object of type 'Missions"
  "ce8a7c135707fc7974e11a568a86af9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Missions>)))
  "Returns full string definition for message of type '<Missions>"
  (cl:format cl:nil "# current mission~%MissionStatus current~%# list of old missions~%MissionStatus[] last~%~%================================================================================~%MSG: robot_local_control_msgs/MissionStatus~%# MISSION STATES~%# States inside a mission~%string UNKNOWN=unknown~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%string CANCELLED=cancelled~%string ERROR=error~%string QUEUED=queued~%# running: mission is running~%# paused: mission is paused~%# finished: mission finished~%# canceled: mission has been canceled~%# error: an error occurred during the execution of the mission~%# queued: the mission is queued~%~%~%#~%int32 id~%~%# ID of the mision based on string format: GOTO [4,5,6]~%string description~%~%# running, paused, finished,...~%string state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Missions)))
  "Returns full string definition for message of type 'Missions"
  (cl:format cl:nil "# current mission~%MissionStatus current~%# list of old missions~%MissionStatus[] last~%~%================================================================================~%MSG: robot_local_control_msgs/MissionStatus~%# MISSION STATES~%# States inside a mission~%string UNKNOWN=unknown~%string RUNNING=running~%string PAUSED=paused~%string FINISHED=finished~%string CANCELLED=cancelled~%string ERROR=error~%string QUEUED=queued~%# running: mission is running~%# paused: mission is paused~%# finished: mission finished~%# canceled: mission has been canceled~%# error: an error occurred during the execution of the mission~%# queued: the mission is queued~%~%~%#~%int32 id~%~%# ID of the mision based on string format: GOTO [4,5,6]~%string description~%~%# running, paused, finished,...~%string state~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Missions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'last) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Missions>))
  "Converts a ROS message object to a list"
  (cl:list 'Missions
    (cl:cons ':current (current msg))
    (cl:cons ':last (last msg))
))
