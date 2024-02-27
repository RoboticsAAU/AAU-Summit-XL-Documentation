; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude SignalManager.msg.html

(cl:defclass <SignalManager> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (signal_state
    :reader signal_state
    :initarg :signal_state
    :type cl:string
    :initform "")
   (signals_status
    :reader signals_status
    :initarg :signals_status
    :type (cl:vector robotnik_signal_msgs-msg:SignalStatus)
   :initform (cl:make-array 0 :element-type 'robotnik_signal_msgs-msg:SignalStatus :initial-element (cl:make-instance 'robotnik_signal_msgs-msg:SignalStatus))))
)

(cl:defclass SignalManager (<SignalManager>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalManager>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalManager)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<SignalManager> is deprecated: use robot_local_control_msgs-msg:SignalManager instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SignalManager>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:state-val is deprecated.  Use robot_local_control_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'signal_state-val :lambda-list '(m))
(cl:defmethod signal_state-val ((m <SignalManager>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:signal_state-val is deprecated.  Use robot_local_control_msgs-msg:signal_state instead.")
  (signal_state m))

(cl:ensure-generic-function 'signals_status-val :lambda-list '(m))
(cl:defmethod signals_status-val ((m <SignalManager>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:signals_status-val is deprecated.  Use robot_local_control_msgs-msg:signals_status instead.")
  (signals_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalManager>) ostream)
  "Serializes a message object of type '<SignalManager>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signals_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'signals_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalManager>) istream)
  "Deserializes a message object of type '<SignalManager>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'signals_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'signals_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_signal_msgs-msg:SignalStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalManager>)))
  "Returns string type for a message object of type '<SignalManager>"
  "robot_local_control_msgs/SignalManager")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalManager)))
  "Returns string type for a message object of type 'SignalManager"
  "robot_local_control_msgs/SignalManager")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalManager>)))
  "Returns md5sum for a message object of type '<SignalManager>"
  "1d72476a1dfab8768093789a2dcd679e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalManager)))
  "Returns md5sum for a message object of type 'SignalManager"
  "1d72476a1dfab8768093789a2dcd679e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalManager>)))
  "Returns full string definition for message of type '<SignalManager>"
  (cl:format cl:nil "# INIT, READY, EMERGENCY, FAILURE~%string state~%# The state of the global signal~%string signal_state~%# The state of each signal_manager node~%robotnik_signal_msgs/SignalStatus[] signals_status~%================================================================================~%MSG: robotnik_signal_msgs/SignalStatus~%# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalManager)))
  "Returns full string definition for message of type 'SignalManager"
  (cl:format cl:nil "# INIT, READY, EMERGENCY, FAILURE~%string state~%# The state of the global signal~%string signal_state~%# The state of each signal_manager node~%robotnik_signal_msgs/SignalStatus[] signals_status~%================================================================================~%MSG: robotnik_signal_msgs/SignalStatus~%# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalManager>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'signal_state))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signals_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalManager>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalManager
    (cl:cons ':state (state msg))
    (cl:cons ':signal_state (signal_state msg))
    (cl:cons ':signals_status (signals_status msg))
))