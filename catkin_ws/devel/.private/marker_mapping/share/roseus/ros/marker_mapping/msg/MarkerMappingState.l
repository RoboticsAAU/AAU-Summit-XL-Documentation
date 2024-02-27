;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::MarkerMappingState)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'MarkerMappingState (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::MARKERMAPPINGSTATE")
  (make-package "MARKER_MAPPING::MARKERMAPPINGSTATE"))

(in-package "ROS")
;;//! \htmlinclude MarkerMappingState.msg.html
(if (not (find-package "ROBOTNIK_MSGS"))
  (ros::roseus-add-msgs "robotnik_msgs"))


(defclass marker_mapping::MarkerMappingState
  :super ros::object
  :slots (_state _ids_recorded _ids_detected ))

(defmethod marker_mapping::MarkerMappingState
  (:init
   (&key
    ((:state __state) (instance robotnik_msgs::State :init))
    ((:ids_recorded __ids_recorded) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ids_detected __ids_detected) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _state __state)
   (setq _ids_recorded __ids_recorded)
   (setq _ids_detected __ids_detected)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:ids_recorded
   (&optional __ids_recorded)
   (if __ids_recorded (setq _ids_recorded __ids_recorded)) _ids_recorded)
  (:ids_detected
   (&optional __ids_detected)
   (if __ids_detected (setq _ids_detected __ids_detected)) _ids_detected)
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/State _state
    (send _state :serialization-length)
    ;; int32[] _ids_recorded
    (* 4    (length _ids_recorded)) 4
    ;; int32[] _ids_detected
    (* 4    (length _ids_detected)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/State _state
       (send _state :serialize s)
     ;; int32[] _ids_recorded
     (write-long (length _ids_recorded) s)
     (dotimes (i (length _ids_recorded))
       (write-long (elt _ids_recorded i) s)
       )
     ;; int32[] _ids_detected
     (write-long (length _ids_detected) s)
     (dotimes (i (length _ids_detected))
       (write-long (elt _ids_detected i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; int32[] _ids_recorded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids_recorded (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids_recorded i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _ids_detected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids_detected (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids_detected i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marker_mapping::MarkerMappingState :md5sum-) "eb3fc0eea314f2b16a963d2e0c2d2b3f")
(setf (get marker_mapping::MarkerMappingState :datatype-) "marker_mapping/MarkerMappingState")
(setf (get marker_mapping::MarkerMappingState :definition-)
      "robotnik_msgs/State state
int32[] ids_recorded
int32[] ids_detected

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



(provide :marker_mapping/MarkerMappingState "eb3fc0eea314f2b16a963d2e0c2d2b3f")


