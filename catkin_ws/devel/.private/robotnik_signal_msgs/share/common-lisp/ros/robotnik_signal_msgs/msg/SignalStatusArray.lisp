; Auto-generated. Do not edit!


(cl:in-package robotnik_signal_msgs-msg)


;//! \htmlinclude SignalStatusArray.msg.html

(cl:defclass <SignalStatusArray> (roslisp-msg-protocol:ros-message)
  ((signals_status
    :reader signals_status
    :initarg :signals_status
    :type (cl:vector robotnik_signal_msgs-msg:SignalStatus)
   :initform (cl:make-array 0 :element-type 'robotnik_signal_msgs-msg:SignalStatus :initial-element (cl:make-instance 'robotnik_signal_msgs-msg:SignalStatus))))
)

(cl:defclass SignalStatusArray (<SignalStatusArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalStatusArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalStatusArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_signal_msgs-msg:<SignalStatusArray> is deprecated: use robotnik_signal_msgs-msg:SignalStatusArray instead.")))

(cl:ensure-generic-function 'signals_status-val :lambda-list '(m))
(cl:defmethod signals_status-val ((m <SignalStatusArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_signal_msgs-msg:signals_status-val is deprecated.  Use robotnik_signal_msgs-msg:signals_status instead.")
  (signals_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalStatusArray>) ostream)
  "Serializes a message object of type '<SignalStatusArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'signals_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'signals_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalStatusArray>) istream)
  "Deserializes a message object of type '<SignalStatusArray>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalStatusArray>)))
  "Returns string type for a message object of type '<SignalStatusArray>"
  "robotnik_signal_msgs/SignalStatusArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalStatusArray)))
  "Returns string type for a message object of type 'SignalStatusArray"
  "robotnik_signal_msgs/SignalStatusArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalStatusArray>)))
  "Returns md5sum for a message object of type '<SignalStatusArray>"
  "81ce5948f89ed4887bfc312100eeff57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalStatusArray)))
  "Returns md5sum for a message object of type 'SignalStatusArray"
  "81ce5948f89ed4887bfc312100eeff57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalStatusArray>)))
  "Returns full string definition for message of type '<SignalStatusArray>"
  (cl:format cl:nil "~%SignalStatus[] signals_status~%================================================================================~%MSG: robotnik_signal_msgs/SignalStatus~%# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalStatusArray)))
  "Returns full string definition for message of type 'SignalStatusArray"
  (cl:format cl:nil "~%SignalStatus[] signals_status~%================================================================================~%MSG: robotnik_signal_msgs/SignalStatus~%# signal_names~%string SIGNAL_CHARGING=charging~%string SIGNAL_SAFETY_STANDBY=safety_standby~%string SIGNAL_EMERGENCY_STOP=emergency_stop~%string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected~%string SIGNAL_LOW_BATTERY=low_battery~%string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error~%string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error~%string SIGNAL_SENSOR_ERROR=sensor_error~%string SIGNAL_ROBOT_IDLE=robot_idle~%string SIGNAL_ROBOT_MOVING=robot_moving~%string SIGNAL_RAISING_ELEVATOR=raising_elevator~%string SIGNAL_LOWERING_ELEVATOR=lowering_elevator~%~%string node_name~%string[] active_signals~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalStatusArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'signals_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalStatusArray>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalStatusArray
    (cl:cons ':signals_status (signals_status msg))
))
