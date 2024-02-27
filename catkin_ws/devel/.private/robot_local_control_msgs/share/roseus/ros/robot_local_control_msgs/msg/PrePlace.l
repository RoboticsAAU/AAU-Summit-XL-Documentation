;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::PrePlace)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'PrePlace (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::PREPLACE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::PREPLACE"))

(in-package "ROS")
;;//! \htmlinclude PrePlace.msg.html


(defclass robot_local_control_msgs::PrePlace
  :super ros::object
  :slots (_maximum_distance _lane _turn_direction ))

(defmethod robot_local_control_msgs::PrePlace
  (:init
   (&key
    ((:maximum_distance __maximum_distance) 0.0)
    ((:lane __lane) 0)
    ((:turn_direction __turn_direction) "")
    )
   (send-super :init)
   (setq _maximum_distance (float __maximum_distance))
   (setq _lane (round __lane))
   (setq _turn_direction (string __turn_direction))
   self)
  (:maximum_distance
   (&optional __maximum_distance)
   (if __maximum_distance (setq _maximum_distance __maximum_distance)) _maximum_distance)
  (:lane
   (&optional __lane)
   (if __lane (setq _lane __lane)) _lane)
  (:turn_direction
   (&optional __turn_direction)
   (if __turn_direction (setq _turn_direction __turn_direction)) _turn_direction)
  (:serialization-length
   ()
   (+
    ;; float64 _maximum_distance
    8
    ;; uint32 _lane
    4
    ;; string _turn_direction
    4 (length _turn_direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _maximum_distance
       (sys::poke _maximum_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _lane
       (write-long _lane s)
     ;; string _turn_direction
       (write-long (length _turn_direction) s) (princ _turn_direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _maximum_distance
     (setq _maximum_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _lane
     (setq _lane (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _turn_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::PrePlace :md5sum-) "bc102ad06e887e984d9cfa136a66cf43")
(setf (get robot_local_control_msgs::PrePlace :datatype-) "robot_local_control_msgs/PrePlace")
(setf (get robot_local_control_msgs::PrePlace :definition-)
      "float64 maximum_distance
uint32 lane
string turn_direction

")



(provide :robot_local_control_msgs/PrePlace "bc102ad06e887e984d9cfa136a66cf43")


