;; Auto-generated. Do not edit!


(when (boundp 'robotnik_signal_msgs::SignalStatusArray)
  (if (not (find-package "ROBOTNIK_SIGNAL_MSGS"))
    (make-package "ROBOTNIK_SIGNAL_MSGS"))
  (shadow 'SignalStatusArray (find-package "ROBOTNIK_SIGNAL_MSGS")))
(unless (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUSARRAY")
  (make-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUSARRAY"))

(in-package "ROS")
;;//! \htmlinclude SignalStatusArray.msg.html


(defclass robotnik_signal_msgs::SignalStatusArray
  :super ros::object
  :slots (_signals_status ))

(defmethod robotnik_signal_msgs::SignalStatusArray
  (:init
   (&key
    ((:signals_status __signals_status) (let (r) (dotimes (i 0) (push (instance robotnik_signal_msgs::SignalStatus :init) r)) r))
    )
   (send-super :init)
   (setq _signals_status __signals_status)
   self)
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
    ;; robotnik_signal_msgs/SignalStatus[] _signals_status
    (apply #'+ (send-all _signals_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_signal_msgs/SignalStatus[] _signals_status
     (write-long (length _signals_status) s)
     (dolist (elem _signals_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get robotnik_signal_msgs::SignalStatusArray :md5sum-) "81ce5948f89ed4887bfc312100eeff57")
(setf (get robotnik_signal_msgs::SignalStatusArray :datatype-) "robotnik_signal_msgs/SignalStatusArray")
(setf (get robotnik_signal_msgs::SignalStatusArray :definition-)
      "
SignalStatus[] signals_status
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



(provide :robotnik_signal_msgs/SignalStatusArray "81ce5948f89ed4887bfc312100eeff57")


