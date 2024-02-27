;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SafetyModuleStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SafetyModuleStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS")
  (make-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))

(in-package "ROS")
;;//! \htmlinclude SafetyModuleStatus.msg.html


(intern "*SAFE*" (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(shadow '*SAFE* (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(defconstant robotnik_msgs::SafetyModuleStatus::*SAFE* "safe")
(intern "*OVERRIDABLE*" (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(shadow '*OVERRIDABLE* (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(defconstant robotnik_msgs::SafetyModuleStatus::*OVERRIDABLE* "overridable")
(intern "*EMERGENCY*" (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(shadow '*EMERGENCY* (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(defconstant robotnik_msgs::SafetyModuleStatus::*EMERGENCY* "emergency")
(intern "*LASER_MUTE*" (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(shadow '*LASER_MUTE* (find-package "ROBOTNIK_MSGS::SAFETYMODULESTATUS"))
(defconstant robotnik_msgs::SafetyModuleStatus::*LASER_MUTE* "laser_mute")
(defclass robotnik_msgs::SafetyModuleStatus
  :super ros::object
  :slots (_safety_mode _charging _emergency_stop _safety_stop _safety_overrided _lasers_on_standby _current_speed _speed_at_safety_stop _lasers_mode _lasers_status ))

(defmethod robotnik_msgs::SafetyModuleStatus
  (:init
   (&key
    ((:safety_mode __safety_mode) "")
    ((:charging __charging) nil)
    ((:emergency_stop __emergency_stop) nil)
    ((:safety_stop __safety_stop) nil)
    ((:safety_overrided __safety_overrided) nil)
    ((:lasers_on_standby __lasers_on_standby) nil)
    ((:current_speed __current_speed) 0.0)
    ((:speed_at_safety_stop __speed_at_safety_stop) 0.0)
    ((:lasers_mode __lasers_mode) (instance robotnik_msgs::LaserMode :init))
    ((:lasers_status __lasers_status) (let (r) (dotimes (i 0) (push (instance robotnik_msgs::LaserStatus :init) r)) r))
    )
   (send-super :init)
   (setq _safety_mode (string __safety_mode))
   (setq _charging __charging)
   (setq _emergency_stop __emergency_stop)
   (setq _safety_stop __safety_stop)
   (setq _safety_overrided __safety_overrided)
   (setq _lasers_on_standby __lasers_on_standby)
   (setq _current_speed (float __current_speed))
   (setq _speed_at_safety_stop (float __speed_at_safety_stop))
   (setq _lasers_mode __lasers_mode)
   (setq _lasers_status __lasers_status)
   self)
  (:safety_mode
   (&optional __safety_mode)
   (if __safety_mode (setq _safety_mode __safety_mode)) _safety_mode)
  (:charging
   (&optional __charging)
   (if __charging (setq _charging __charging)) _charging)
  (:emergency_stop
   (&optional __emergency_stop)
   (if __emergency_stop (setq _emergency_stop __emergency_stop)) _emergency_stop)
  (:safety_stop
   (&optional __safety_stop)
   (if __safety_stop (setq _safety_stop __safety_stop)) _safety_stop)
  (:safety_overrided
   (&optional __safety_overrided)
   (if __safety_overrided (setq _safety_overrided __safety_overrided)) _safety_overrided)
  (:lasers_on_standby
   (&optional __lasers_on_standby)
   (if __lasers_on_standby (setq _lasers_on_standby __lasers_on_standby)) _lasers_on_standby)
  (:current_speed
   (&optional __current_speed)
   (if __current_speed (setq _current_speed __current_speed)) _current_speed)
  (:speed_at_safety_stop
   (&optional __speed_at_safety_stop)
   (if __speed_at_safety_stop (setq _speed_at_safety_stop __speed_at_safety_stop)) _speed_at_safety_stop)
  (:lasers_mode
   (&rest __lasers_mode)
   (if (keywordp (car __lasers_mode))
       (send* _lasers_mode __lasers_mode)
     (progn
       (if __lasers_mode (setq _lasers_mode (car __lasers_mode)))
       _lasers_mode)))
  (:lasers_status
   (&rest __lasers_status)
   (if (keywordp (car __lasers_status))
       (send* _lasers_status __lasers_status)
     (progn
       (if __lasers_status (setq _lasers_status (car __lasers_status)))
       _lasers_status)))
  (:serialization-length
   ()
   (+
    ;; string _safety_mode
    4 (length _safety_mode)
    ;; bool _charging
    1
    ;; bool _emergency_stop
    1
    ;; bool _safety_stop
    1
    ;; bool _safety_overrided
    1
    ;; bool _lasers_on_standby
    1
    ;; float64 _current_speed
    8
    ;; float64 _speed_at_safety_stop
    8
    ;; robotnik_msgs/LaserMode _lasers_mode
    (send _lasers_mode :serialization-length)
    ;; robotnik_msgs/LaserStatus[] _lasers_status
    (apply #'+ (send-all _lasers_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _safety_mode
       (write-long (length _safety_mode) s) (princ _safety_mode s)
     ;; bool _charging
       (if _charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_stop
       (if _emergency_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _safety_stop
       (if _safety_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _safety_overrided
       (if _safety_overrided (write-byte -1 s) (write-byte 0 s))
     ;; bool _lasers_on_standby
       (if _lasers_on_standby (write-byte -1 s) (write-byte 0 s))
     ;; float64 _current_speed
       (sys::poke _current_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_at_safety_stop
       (sys::poke _speed_at_safety_stop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; robotnik_msgs/LaserMode _lasers_mode
       (send _lasers_mode :serialize s)
     ;; robotnik_msgs/LaserStatus[] _lasers_status
     (write-long (length _lasers_status) s)
     (dolist (elem _lasers_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _safety_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _safety_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _charging
     (setq _charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_stop
     (setq _emergency_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _safety_stop
     (setq _safety_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _safety_overrided
     (setq _safety_overrided (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lasers_on_standby
     (setq _lasers_on_standby (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _current_speed
     (setq _current_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_at_safety_stop
     (setq _speed_at_safety_stop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; robotnik_msgs/LaserMode _lasers_mode
     (send _lasers_mode :deserialize buf ptr-) (incf ptr- (send _lasers_mode :serialization-length))
   ;; robotnik_msgs/LaserStatus[] _lasers_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lasers_status (let (r) (dotimes (i n) (push (instance robotnik_msgs::LaserStatus :init) r)) r))
     (dolist (elem- _lasers_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::SafetyModuleStatus :md5sum-) "983aa60eea0a480ee824be99a1c903a6")
(setf (get robotnik_msgs::SafetyModuleStatus :datatype-) "robotnik_msgs/SafetyModuleStatus")
(setf (get robotnik_msgs::SafetyModuleStatus :definition-)
      "# robot safety mode
string SAFE=safe
string OVERRIDABLE=overridable
string EMERGENCY=emergency
string LASER_MUTE=laser_mute

string safety_mode
bool charging
bool emergency_stop        # if e-stop is pressed
bool safety_stop           # if system is stopped due to safety system
bool safety_overrided      # if safety system is overrided
bool lasers_on_standby     # if lasers don't have power
float64 current_speed       # current speed measured by safety system
float64 speed_at_safety_stop  # speed measured at last safety stop by safety system

robotnik_msgs/LaserMode lasers_mode
robotnik_msgs/LaserStatus[] lasers_status

================================================================================
MSG: robotnik_msgs/LaserMode
string STANDARD=standard
string DOCKING_STATION=docking_station
string CART=cart
string CART_DOCKING_CART=cart_docking_cart
string DOCKING_CART=docking_cart
string REDUCED=reduced
string INVALID=invalid

string name

================================================================================
MSG: robotnik_msgs/LaserStatus
string name
bool detecting_obstacles
bool contaminated
bool free_warning
# one input per each warning zone.
# first areas are closer to the robot (i.e. more restrictive)
bool[] warning_zones 

")



(provide :robotnik_msgs/SafetyModuleStatus "983aa60eea0a480ee824be99a1c903a6")


