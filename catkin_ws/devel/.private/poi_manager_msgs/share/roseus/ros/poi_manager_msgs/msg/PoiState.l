;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::PoiState)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'PoiState (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::POISTATE")
  (make-package "POI_MANAGER_MSGS::POISTATE"))

(in-package "ROS")
;;//! \htmlinclude PoiState.msg.html
(if (not (find-package "ROBOTNIK_MSGS"))
  (ros::roseus-add-msgs "robotnik_msgs"))


(intern "*IDLE*" (find-package "POI_MANAGER_MSGS::POISTATE"))
(shadow '*IDLE* (find-package "POI_MANAGER_MSGS::POISTATE"))
(defconstant poi_manager_msgs::PoiState::*IDLE* "idle")
(intern "*GOTO*" (find-package "POI_MANAGER_MSGS::POISTATE"))
(shadow '*GOTO* (find-package "POI_MANAGER_MSGS::POISTATE"))
(defconstant poi_manager_msgs::PoiState::*GOTO* "goto")
(defclass poi_manager_msgs::PoiState
  :super ros::object
  :slots (_state _action ))

(defmethod poi_manager_msgs::PoiState
  (:init
   (&key
    ((:state __state) (instance robotnik_msgs::State :init))
    ((:action __action) "")
    )
   (send-super :init)
   (setq _state __state)
   (setq _action (string __action))
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/State _state
    (send _state :serialization-length)
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/State _state
       (send _state :serialize s)
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get poi_manager_msgs::PoiState :md5sum-) "101b52bedf2e3b0a4131fc9efb64a91c")
(setf (get poi_manager_msgs::PoiState :datatype-) "poi_manager_msgs/PoiState")
(setf (get poi_manager_msgs::PoiState :definition-)
      "string IDLE=idle
string GOTO=goto

robotnik_msgs/State state
string action

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



(provide :poi_manager_msgs/PoiState "101b52bedf2e3b0a4131fc9efb64a91c")


