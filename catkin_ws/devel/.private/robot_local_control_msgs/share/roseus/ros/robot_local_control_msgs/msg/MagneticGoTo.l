;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MagneticGoTo)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MagneticGoTo (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICGOTO")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICGOTO"))

(in-package "ROS")
;;//! \htmlinclude MagneticGoTo.msg.html


(defclass robot_local_control_msgs::MagneticGoTo
  :super ros::object
  :slots (_node _speed_factor _orientation_offset _position_offset ))

(defmethod robot_local_control_msgs::MagneticGoTo
  (:init
   (&key
    ((:node __node) "")
    ((:speed_factor __speed_factor) 0.0)
    ((:orientation_offset __orientation_offset) 0.0)
    ((:position_offset __position_offset) 0.0)
    )
   (send-super :init)
   (setq _node (string __node))
   (setq _speed_factor (float __speed_factor))
   (setq _orientation_offset (float __orientation_offset))
   (setq _position_offset (float __position_offset))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:speed_factor
   (&optional __speed_factor)
   (if __speed_factor (setq _speed_factor __speed_factor)) _speed_factor)
  (:orientation_offset
   (&optional __orientation_offset)
   (if __orientation_offset (setq _orientation_offset __orientation_offset)) _orientation_offset)
  (:position_offset
   (&optional __position_offset)
   (if __position_offset (setq _position_offset __position_offset)) _position_offset)
  (:serialization-length
   ()
   (+
    ;; string _node
    4 (length _node)
    ;; float32 _speed_factor
    4
    ;; float32 _orientation_offset
    4
    ;; float32 _position_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; float32 _speed_factor
       (sys::poke _speed_factor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_offset
       (sys::poke _orientation_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_offset
       (sys::poke _position_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _speed_factor
     (setq _speed_factor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_offset
     (setq _orientation_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_offset
     (setq _position_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MagneticGoTo :md5sum-) "5510a782447d53208d368d42bcba9b35")
(setf (get robot_local_control_msgs::MagneticGoTo :datatype-) "robot_local_control_msgs/MagneticGoTo")
(setf (get robot_local_control_msgs::MagneticGoTo :definition-)
      "string node
float32 speed_factor
float32 orientation_offset
float32 position_offset
")



(provide :robot_local_control_msgs/MagneticGoTo "5510a782447d53208d368d42bcba9b35")


