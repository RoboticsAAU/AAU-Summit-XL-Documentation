; Auto-generated. Do not edit!


(cl:in-package robotnik_signal_msgs-msg)


;//! \htmlinclude SignalStatus.msg.html

(cl:defclass <SignalStatus> (roslisp-msg-protocol:ros-message)
  ((node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (active_signals
    :reader active_signals
    :initarg :active_signals
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SignalStatus (<SignalStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_signal_msgs-msg:<SignalStatus> is deprecated: use robotnik_signal_msgs-msg:SignalStatus instead.")))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_signal_msgs-msg:node_name-val is deprecated.  Use robotnik_signal_msgs-msg:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'active_signals-val :lambda-list '(m))
(cl:defmethod active_signals-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_signal_msgs-msg:active_signals-val is deprecated.  Use robotnik_signal_msgs-msg:active_signals instead.")
  (active_signals m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SignalStatus>)))
    "Constants for message type '<SignalStatus>"
  '((:SIGNAL_CHARGING . charging)
    (:SIGNAL_SAFETY_STANDBY . safety_standby)
    (:SIGNAL_EMERGENCY_STOP . emergency_stop)
    (:SIGNAL_SAFETY_OBSTACLE_DETECTED . safety_obstacle_detected)
    (:SIGNAL_LOW_BATTERY . low_battery)
    (:SIGNAL_BASE_CONTROLLER_ERROR . base_controller_error)
    (:SIGNAL_ARM_CONTROLLER_ERROR . arm_controller_error)
    (:SIGNAL_SENSOR_ERROR . sensor_error)
    (:SIGNAL_ROBOT_IDLE . robot_idle)
    (:SIGNAL_ROBOT_MOVING . robot_moving)
    (:SIGNAL_RAISING_ELEVATOR . raising_elevator)
    (:SIGNAL_LOWERING_ELEVATOR . lowering_elevator))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SignalStatus)))
    "Constants for message type 'SignalStatus"
  '((:SIGNAL_CHARGING . charging)
    (:SIGNAL_SAFETY_STANDBY . safety_standby)
    (:SIGNAL_EMERGENCY_STOP . emergency_stop)
    (:SIGNAL_SAFETY_OBSTACLE_DETECTED . safety_obstacle_detected)
    (:SIGNAL_LOW_BATTERY . low_battery)
    (:SIGNAL_BASE_CONTROLLER_ERROR . base_controller_error)
    (:SIGNAL_ARM_CONTROLLER_ERROR . arm_controller_error)
    (:SIGNAL_SENSOR_ERROR . sensor_error)
    (:SIGNAL_ROBOT_IDLE . robot_idle)
    (:SIGNAL_ROBOT_MOVING . robot_moving)
    (:SIGNAL_RAISING_ELEVATOR . raising_elevator)
    (:SIGNAL_LOWERING_ELEVATOR . lowering_elevator))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalStatus>) ostream)
  "Serializes a message object of type '<SignalStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'active_signals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'active_signals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalStatus>) istream)
  "Deserializes a message object of type '<SignalStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'active_signals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'active_signals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalStatus>)))
  "Returns string type for a message object of type '<SignalStatus>"
  "robotnik_signal_msgs/SignalStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalStatus)))
  "Returns string type for a message object of type 'SignalStatus"
  "robotnik_signal_msgs/SignalStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalStatus>)))
  "Returns md5sum for a message object of type '<SignalStatus>"
  "2253a41510a77ba43532efb9d5ddd8ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalStatus)))
  "Returns md5sum for a message object of type 'SignalStatus"
  "2253a41510a77ba43532efb9d5ddd8ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalStatus>)))
  "Returns full string definition for message of type '<SignalStatus>"
  (cl:format cl:nil "# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalStatus)))
  "Returns full string definition for message of type 'SignalStatus"
  (cl:format cl:nil "# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'active_signals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalStatus
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':active_signals (active_signals msg))
))
