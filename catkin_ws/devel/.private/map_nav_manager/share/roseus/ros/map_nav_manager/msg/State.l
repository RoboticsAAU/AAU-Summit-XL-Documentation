;; Auto-generated. Do not edit!


(when (boundp 'map_nav_manager::State)
  (if (not (find-package "MAP_NAV_MANAGER"))
    (make-package "MAP_NAV_MANAGER"))
  (shadow 'State (find-package "MAP_NAV_MANAGER")))
(unless (find-package "MAP_NAV_MANAGER::STATE")
  (make-package "MAP_NAV_MANAGER::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "ROBOTNIK_MSGS"))
  (ros::roseus-add-msgs "robotnik_msgs"))


(defclass map_nav_manager::State
  :super ros::object
  :slots (_state _substate _mapping _navigation _localization _map_server ))

(defmethod map_nav_manager::State
  (:init
   (&key
    ((:state __state) (instance robotnik_msgs::State :init))
    ((:substate __substate) "")
    ((:mapping __mapping) nil)
    ((:navigation __navigation) nil)
    ((:localization __localization) nil)
    ((:map_server __map_server) nil)
    )
   (send-super :init)
   (setq _state __state)
   (setq _substate (string __substate))
   (setq _mapping __mapping)
   (setq _navigation __navigation)
   (setq _localization __localization)
   (setq _map_server __map_server)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:substate
   (&optional __substate)
   (if __substate (setq _substate __substate)) _substate)
  (:mapping
   (&optional __mapping)
   (if __mapping (setq _mapping __mapping)) _mapping)
  (:navigation
   (&optional __navigation)
   (if __navigation (setq _navigation __navigation)) _navigation)
  (:localization
   (&optional __localization)
   (if __localization (setq _localization __localization)) _localization)
  (:map_server
   (&optional __map_server)
   (if __map_server (setq _map_server __map_server)) _map_server)
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/State _state
    (send _state :serialization-length)
    ;; string _substate
    4 (length _substate)
    ;; bool _mapping
    1
    ;; bool _navigation
    1
    ;; bool _localization
    1
    ;; bool _map_server
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/State _state
       (send _state :serialize s)
     ;; string _substate
       (write-long (length _substate) s) (princ _substate s)
     ;; bool _mapping
       (if _mapping (write-byte -1 s) (write-byte 0 s))
     ;; bool _navigation
       (if _navigation (write-byte -1 s) (write-byte 0 s))
     ;; bool _localization
       (if _localization (write-byte -1 s) (write-byte 0 s))
     ;; bool _map_server
       (if _map_server (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; string _substate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _substate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _mapping
     (setq _mapping (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _navigation
     (setq _navigation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _localization
     (setq _localization (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _map_server
     (setq _map_server (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get map_nav_manager::State :md5sum-) "fb3247a8a50c3079508d6ddd0c93c134")
(setf (get map_nav_manager::State :datatype-) "map_nav_manager/State")
(setf (get map_nav_manager::State :definition-)
      "robotnik_msgs/State state
string substate
bool mapping
bool navigation
bool localization
bool map_server

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



(provide :map_nav_manager/State "fb3247a8a50c3079508d6ddd0c93c134")


