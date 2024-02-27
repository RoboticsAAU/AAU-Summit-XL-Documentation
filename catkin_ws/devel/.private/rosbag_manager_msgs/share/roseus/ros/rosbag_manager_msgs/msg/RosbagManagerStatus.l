;; Auto-generated. Do not edit!


(when (boundp 'rosbag_manager_msgs::RosbagManagerStatus)
  (if (not (find-package "ROSBAG_MANAGER_MSGS"))
    (make-package "ROSBAG_MANAGER_MSGS"))
  (shadow 'RosbagManagerStatus (find-package "ROSBAG_MANAGER_MSGS")))
(unless (find-package "ROSBAG_MANAGER_MSGS::ROSBAGMANAGERSTATUS")
  (make-package "ROSBAG_MANAGER_MSGS::ROSBAGMANAGERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RosbagManagerStatus.msg.html
(if (not (find-package "ROBOTNIK_MSGS"))
  (ros::roseus-add-msgs "robotnik_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosbag_manager_msgs::RosbagManagerStatus
  :super ros::object
  :slots (_header _state _recording _time_recording _path _bag_name _compression _regex _stored_size ))

(defmethod rosbag_manager_msgs::RosbagManagerStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance robotnik_msgs::State :init))
    ((:recording __recording) nil)
    ((:time_recording __time_recording) 0)
    ((:path __path) "")
    ((:bag_name __bag_name) "")
    ((:compression __compression) nil)
    ((:regex __regex) nil)
    ((:stored_size __stored_size) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _recording __recording)
   (setq _time_recording (round __time_recording))
   (setq _path (string __path))
   (setq _bag_name (string __bag_name))
   (setq _compression __compression)
   (setq _regex __regex)
   (setq _stored_size (float __stored_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:recording
   (&optional __recording)
   (if __recording (setq _recording __recording)) _recording)
  (:time_recording
   (&optional __time_recording)
   (if __time_recording (setq _time_recording __time_recording)) _time_recording)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:bag_name
   (&optional __bag_name)
   (if __bag_name (setq _bag_name __bag_name)) _bag_name)
  (:compression
   (&optional __compression)
   (if __compression (setq _compression __compression)) _compression)
  (:regex
   (&optional __regex)
   (if __regex (setq _regex __regex)) _regex)
  (:stored_size
   (&optional __stored_size)
   (if __stored_size (setq _stored_size __stored_size)) _stored_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; robotnik_msgs/State _state
    (send _state :serialization-length)
    ;; bool _recording
    1
    ;; int32 _time_recording
    4
    ;; string _path
    4 (length _path)
    ;; string _bag_name
    4 (length _bag_name)
    ;; bool _compression
    1
    ;; bool _regex
    1
    ;; float64 _stored_size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robotnik_msgs/State _state
       (send _state :serialize s)
     ;; bool _recording
       (if _recording (write-byte -1 s) (write-byte 0 s))
     ;; int32 _time_recording
       (write-long _time_recording s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; string _bag_name
       (write-long (length _bag_name) s) (princ _bag_name s)
     ;; bool _compression
       (if _compression (write-byte -1 s) (write-byte 0 s))
     ;; bool _regex
       (if _regex (write-byte -1 s) (write-byte 0 s))
     ;; float64 _stored_size
       (sys::poke _stored_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robotnik_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; bool _recording
     (setq _recording (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _time_recording
     (setq _time_recording (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _bag_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bag_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _compression
     (setq _compression (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _regex
     (setq _regex (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _stored_size
     (setq _stored_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rosbag_manager_msgs::RosbagManagerStatus :md5sum-) "76b1de38e2d3f907b4177eba5f86930e")
(setf (get rosbag_manager_msgs::RosbagManagerStatus :datatype-) "rosbag_manager_msgs/RosbagManagerStatus")
(setf (get rosbag_manager_msgs::RosbagManagerStatus :definition-)
      "Header header

# Component's state
robotnik_msgs/State state

bool recording
int32 time_recording

# path to save the rosbag
string path
# Bag name
string bag_name
# Is the bag being compressed
bool compression
# Topics are subscribed using regular expresions
bool regex
# Disk space used in the recording (in MB)
float64 stored_size

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

================================================================================
MSG: robotnik_msgs/State
# constants
int32 INIT_STATE = 100
int32 STANDBY_STATE = 200
int32 READY_STATE = 300
int32 EMERGENCY_STATE = 400
int32 FAILURE_STATE = 500
int32 SHUTDOWN_STATE = 600
int32 UNKOWN_STATE = 700

# state of the component
int32 state
# desired control loop frecuency
float32 desired_freq
# real frecuency 
float32 real_freq
# Description of the state
string state_description

")



(provide :rosbag_manager_msgs/RosbagManagerStatus "76b1de38e2d3f907b4177eba5f86930e")


