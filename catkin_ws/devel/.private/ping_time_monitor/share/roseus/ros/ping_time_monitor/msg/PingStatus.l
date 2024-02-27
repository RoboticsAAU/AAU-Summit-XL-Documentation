;; Auto-generated. Do not edit!


(when (boundp 'ping_time_monitor::PingStatus)
  (if (not (find-package "PING_TIME_MONITOR"))
    (make-package "PING_TIME_MONITOR"))
  (shadow 'PingStatus (find-package "PING_TIME_MONITOR")))
(unless (find-package "PING_TIME_MONITOR::PINGSTATUS")
  (make-package "PING_TIME_MONITOR::PINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PingStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ping_time_monitor::PingStatus
  :super ros::object
  :slots (_header _time _host _count _timeout _packet_loss _t_min _t_avg _t_max _t_mdev ))

(defmethod ping_time_monitor::PingStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:host __host) "")
    ((:count __count) 0)
    ((:timeout __timeout) 0.0)
    ((:packet_loss __packet_loss) 0.0)
    ((:t_min __t_min) 0.0)
    ((:t_avg __t_avg) 0.0)
    ((:t_max __t_max) 0.0)
    ((:t_mdev __t_mdev) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _host (string __host))
   (setq _count (round __count))
   (setq _timeout (float __timeout))
   (setq _packet_loss (float __packet_loss))
   (setq _t_min (float __t_min))
   (setq _t_avg (float __t_avg))
   (setq _t_max (float __t_max))
   (setq _t_mdev (float __t_mdev))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:host
   (&optional __host)
   (if __host (setq _host __host)) _host)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:packet_loss
   (&optional __packet_loss)
   (if __packet_loss (setq _packet_loss __packet_loss)) _packet_loss)
  (:t_min
   (&optional __t_min)
   (if __t_min (setq _t_min __t_min)) _t_min)
  (:t_avg
   (&optional __t_avg)
   (if __t_avg (setq _t_avg __t_avg)) _t_avg)
  (:t_max
   (&optional __t_max)
   (if __t_max (setq _t_max __t_max)) _t_max)
  (:t_mdev
   (&optional __t_mdev)
   (if __t_mdev (setq _t_mdev __t_mdev)) _t_mdev)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _time
    4
    ;; string _host
    4 (length _host)
    ;; int32 _count
    4
    ;; float32 _timeout
    4
    ;; float32 _packet_loss
    4
    ;; float32 _t_min
    4
    ;; float32 _t_avg
    4
    ;; float32 _t_max
    4
    ;; float32 _t_mdev
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _host
       (write-long (length _host) s) (princ _host s)
     ;; int32 _count
       (write-long _count s)
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _packet_loss
       (sys::poke _packet_loss (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_min
       (sys::poke _t_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_avg
       (sys::poke _t_avg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_max
       (sys::poke _t_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_mdev
       (sys::poke _t_mdev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _host
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _host (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _packet_loss
     (setq _packet_loss (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_min
     (setq _t_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_avg
     (setq _t_avg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_max
     (setq _t_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_mdev
     (setq _t_mdev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ping_time_monitor::PingStatus :md5sum-) "95d991aad8be91a150ff80392e4e042c")
(setf (get ping_time_monitor::PingStatus :datatype-) "ping_time_monitor/PingStatus")
(setf (get ping_time_monitor::PingStatus :definition-)
      "std_msgs/Header header

float32 time
string host
int32 count
float32 timeout
# % of packets loss
float32 packet_loss
# min transmission time
float32 t_min
# average transmission time
float32 t_avg
# max transmission time
float32 t_max
float32 t_mdev

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



(provide :ping_time_monitor/PingStatus "95d991aad8be91a150ff80392e4e042c")


