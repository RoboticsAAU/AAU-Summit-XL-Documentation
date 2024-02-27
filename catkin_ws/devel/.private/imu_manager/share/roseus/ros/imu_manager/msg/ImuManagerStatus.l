;; Auto-generated. Do not edit!


(when (boundp 'imu_manager::ImuManagerStatus)
  (if (not (find-package "IMU_MANAGER"))
    (make-package "IMU_MANAGER"))
  (shadow 'ImuManagerStatus (find-package "IMU_MANAGER")))
(unless (find-package "IMU_MANAGER::IMUMANAGERSTATUS")
  (make-package "IMU_MANAGER::IMUMANAGERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ImuManagerStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imu_manager::ImuManagerStatus
  :super ros::object
  :slots (_header _calibration_status _next_check_countdown _calibration_duration _imu_temperature _calibrated_imu_temperature _robot_moving ))

(defmethod imu_manager::ImuManagerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:calibration_status __calibration_status) "")
    ((:next_check_countdown __next_check_countdown) 0)
    ((:calibration_duration __calibration_duration) 0)
    ((:imu_temperature __imu_temperature) 0.0)
    ((:calibrated_imu_temperature __calibrated_imu_temperature) 0.0)
    ((:robot_moving __robot_moving) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _calibration_status (string __calibration_status))
   (setq _next_check_countdown (round __next_check_countdown))
   (setq _calibration_duration (round __calibration_duration))
   (setq _imu_temperature (float __imu_temperature))
   (setq _calibrated_imu_temperature (float __calibrated_imu_temperature))
   (setq _robot_moving __robot_moving)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:calibration_status
   (&optional __calibration_status)
   (if __calibration_status (setq _calibration_status __calibration_status)) _calibration_status)
  (:next_check_countdown
   (&optional __next_check_countdown)
   (if __next_check_countdown (setq _next_check_countdown __next_check_countdown)) _next_check_countdown)
  (:calibration_duration
   (&optional __calibration_duration)
   (if __calibration_duration (setq _calibration_duration __calibration_duration)) _calibration_duration)
  (:imu_temperature
   (&optional __imu_temperature)
   (if __imu_temperature (setq _imu_temperature __imu_temperature)) _imu_temperature)
  (:calibrated_imu_temperature
   (&optional __calibrated_imu_temperature)
   (if __calibrated_imu_temperature (setq _calibrated_imu_temperature __calibrated_imu_temperature)) _calibrated_imu_temperature)
  (:robot_moving
   (&optional __robot_moving)
   (if __robot_moving (setq _robot_moving __robot_moving)) _robot_moving)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _calibration_status
    4 (length _calibration_status)
    ;; int32 _next_check_countdown
    4
    ;; int32 _calibration_duration
    4
    ;; float32 _imu_temperature
    4
    ;; float32 _calibrated_imu_temperature
    4
    ;; bool _robot_moving
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _calibration_status
       (write-long (length _calibration_status) s) (princ _calibration_status s)
     ;; int32 _next_check_countdown
       (write-long _next_check_countdown s)
     ;; int32 _calibration_duration
       (write-long _calibration_duration s)
     ;; float32 _imu_temperature
       (sys::poke _imu_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _calibrated_imu_temperature
       (sys::poke _calibrated_imu_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _robot_moving
       (if _robot_moving (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _calibration_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _calibration_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _next_check_countdown
     (setq _next_check_countdown (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _calibration_duration
     (setq _calibration_duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _imu_temperature
     (setq _imu_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _calibrated_imu_temperature
     (setq _calibrated_imu_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _robot_moving
     (setq _robot_moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get imu_manager::ImuManagerStatus :md5sum-) "3f781e87f06b49385516d30f4b92b9f0")
(setf (get imu_manager::ImuManagerStatus :datatype-) "imu_manager/ImuManagerStatus")
(setf (get imu_manager::ImuManagerStatus :definition-)
      "Header header
string calibration_status
# in seconds
int32 next_check_countdown
# in seconds
int32 calibration_duration
# current temperature
float32 imu_temperature
# Temperature after last calibration
float32 calibrated_imu_temperature
# is robot moving?
bool robot_moving

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :imu_manager/ImuManagerStatus "3f781e87f06b49385516d30f4b92b9f0")


