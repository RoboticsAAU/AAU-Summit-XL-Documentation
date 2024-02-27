;; Auto-generated. Do not edit!


(when (boundp 'robotnik_signal_msgs::SignalStatus)
  (if (not (find-package "ROBOTNIK_SIGNAL_MSGS"))
    (make-package "ROBOTNIK_SIGNAL_MSGS"))
  (shadow 'SignalStatus (find-package "ROBOTNIK_SIGNAL_MSGS")))
(unless (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS")
  (make-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SignalStatus.msg.html


(intern "*SIGNAL_CHARGING*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_CHARGING* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_CHARGING* "charging")
(intern "*SIGNAL_SAFETY_STANDBY*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_SAFETY_STANDBY* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_SAFETY_STANDBY* "safety_standby")
(intern "*SIGNAL_EMERGENCY_STOP*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_EMERGENCY_STOP* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_EMERGENCY_STOP* "emergency_stop")
(intern "*SIGNAL_SAFETY_OBSTACLE_DETECTED*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_SAFETY_OBSTACLE_DETECTED* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_SAFETY_OBSTACLE_DETECTED* "safety_obstacle_detected")
(intern "*SIGNAL_LOW_BATTERY*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_LOW_BATTERY* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_LOW_BATTERY* "low_battery")
(intern "*SIGNAL_BASE_CONTROLLER_ERROR*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_BASE_CONTROLLER_ERROR* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_BASE_CONTROLLER_ERROR* "base_controller_error")
(intern "*SIGNAL_ARM_CONTROLLER_ERROR*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_ARM_CONTROLLER_ERROR* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_ARM_CONTROLLER_ERROR* "arm_controller_error")
(intern "*SIGNAL_SENSOR_ERROR*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_SENSOR_ERROR* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_SENSOR_ERROR* "sensor_error")
(intern "*SIGNAL_ROBOT_IDLE*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_ROBOT_IDLE* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_ROBOT_IDLE* "robot_idle")
(intern "*SIGNAL_ROBOT_MOVING*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_ROBOT_MOVING* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_ROBOT_MOVING* "robot_moving")
(intern "*SIGNAL_RAISING_ELEVATOR*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_RAISING_ELEVATOR* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_RAISING_ELEVATOR* "raising_elevator")
(intern "*SIGNAL_LOWERING_ELEVATOR*" (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(shadow '*SIGNAL_LOWERING_ELEVATOR* (find-package "ROBOTNIK_SIGNAL_MSGS::SIGNALSTATUS"))
(defconstant robotnik_signal_msgs::SignalStatus::*SIGNAL_LOWERING_ELEVATOR* "lowering_elevator")
(defclass robotnik_signal_msgs::SignalStatus
  :super ros::object
  :slots (_node_name _active_signals ))

(defmethod robotnik_signal_msgs::SignalStatus
  (:init
   (&key
    ((:node_name __node_name) "")
    ((:active_signals __active_signals) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _node_name (string __node_name))
   (setq _active_signals __active_signals)
   self)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:active_signals
   (&optional __active_signals)
   (if __active_signals (setq _active_signals __active_signals)) _active_signals)
  (:serialization-length
   ()
   (+
    ;; string _node_name
    4 (length _node_name)
    ;; string[] _active_signals
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _active_signals)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; string[] _active_signals
     (write-long (length _active_signals) s)
     (dolist (elem _active_signals)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _active_signals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active_signals (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _active_signals i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get robotnik_signal_msgs::SignalStatus :md5sum-) "2253a41510a77ba43532efb9d5ddd8ef")
(setf (get robotnik_signal_msgs::SignalStatus :datatype-) "robotnik_signal_msgs/SignalStatus")
(setf (get robotnik_signal_msgs::SignalStatus :definition-)
      "# signal_names
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



(provide :robotnik_signal_msgs/SignalStatus "2253a41510a77ba43532efb9d5ddd8ef")


