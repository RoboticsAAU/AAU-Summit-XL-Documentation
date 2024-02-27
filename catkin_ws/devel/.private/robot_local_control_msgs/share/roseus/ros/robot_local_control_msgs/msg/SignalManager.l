;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SignalManager)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SignalManager (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SIGNALMANAGER")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SIGNALMANAGER"))

(in-package "ROS")
;;//! \htmlinclude SignalManager.msg.html
(if (not (find-package "ROBOTNIK_SIGNAL_MSGS"))
  (ros::roseus-add-msgs "robotnik_signal_msgs"))


(defclass robot_local_control_msgs::SignalManager
  :super ros::object
  :slots (_state _signal_state _signals_status ))

(defmethod robot_local_control_msgs::SignalManager
  (:init
   (&key
    ((:state __state) "")
    ((:signal_state __signal_state) "")
    ((:signals_status __signals_status) (let (r) (dotimes (i 0) (push (instance robotnik_signal_msgs::SignalStatus :init) r)) r))
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _signal_state (string __signal_state))
   (setq _signals_status __signals_status)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:signal_state
   (&optional __signal_state)
   (if __signal_state (setq _signal_state __signal_state)) _signal_state)
  (:signals_status
   (&rest __signals_status)
   (if (keywordp (car __signals_status))
       (send* _signals_status __signals_status)
     (progn
       (if __signals_status (setq _signals_status (car __signals_status)))
       _signals_status)))
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _signal_state
    4 (length _signal_state)
    ;; robotnik_signal_msgs/SignalStatus[] _signals_status
    (apply #'+ (send-all _signals_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _signal_state
       (write-long (length _signal_state) s) (princ _signal_state s)
     ;; robotnik_signal_msgs/SignalStatus[] _signals_status
     (write-long (length _signals_status) s)
     (dolist (elem _signals_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _signal_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robotnik_signal_msgs/SignalStatus[] _signals_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signals_status (let (r) (dotimes (i n) (push (instance robotnik_signal_msgs::SignalStatus :init) r)) r))
     (dolist (elem- _signals_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::SignalManager :md5sum-) "1d72476a1dfab8768093789a2dcd679e")
(setf (get robot_local_control_msgs::SignalManager :datatype-) "robot_local_control_msgs/SignalManager")
(setf (get robot_local_control_msgs::SignalManager :definition-)
      "# INIT, READY, EMERGENCY, FAILURE
string state
# The state of the global signal
string signal_state
# The state of each signal_manager node
robotnik_signal_msgs/SignalStatus[] signals_status
================================================================================
MSG: robotnik_signal_msgs/SignalStatus
# signal_names
string SIGNAL_CHARGING=charging
string SIGNAL_SAFETY_STANDBY=safety_standby
string SIGNAL_EMERGENCY_STOP=emergency_stop
string SIGNAL_SAFETY_OBSTACLE_DETECTED=safety_obstacle_detected
string SIGNAL_LOW_BATTERY=low_battery
string SIGNAL_BASE_CONTROLLER_ERROR=base_controller_error
string SIGNAL_ARM_CONTROLLER_ERROR=arm_controller_error
string SIGNAL_SENSOR_ERROR=sensor_error
string SIGNAL_ROBOT_IDLE=robot_idle
string SIGNAL_ROBOT_MOVING=robot_moving
string SIGNAL_RAISING_ELEVATOR=raising_elevator
string SIGNAL_LOWERING_ELEVATOR=lowering_elevator

string node_name
string[] active_signals
")



(provide :robot_local_control_msgs/SignalManager "1d72476a1dfab8768093789a2dcd679e")


