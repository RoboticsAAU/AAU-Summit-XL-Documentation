;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::FindMagneticGuide)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'FindMagneticGuide (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::FINDMAGNETICGUIDE"))

(in-package "ROS")
;;//! \htmlinclude FindMagneticGuide.msg.html


(defclass robot_local_control_msgs::FindMagneticGuide
  :super ros::object
  :slots (_turn_direction _in_distance _lane ))

(defmethod robot_local_control_msgs::FindMagneticGuide
  (:init
   (&key
    ((:turn_direction __turn_direction) "")
    ((:in_distance __in_distance) 0.0)
    ((:lane __lane) 0)
    )
   (send-super :init)
   (setq _turn_direction (string __turn_direction))
   (setq _in_distance (float __in_distance))
   (setq _lane (round __lane))
   self)
  (:turn_direction
   (&optional __turn_direction)
   (if __turn_direction (setq _turn_direction __turn_direction)) _turn_direction)
  (:in_distance
   (&optional __in_distance)
   (if __in_distance (setq _in_distance __in_distance)) _in_distance)
  (:lane
   (&optional __lane)
   (if __lane (setq _lane __lane)) _lane)
  (:serialization-length
   ()
   (+
    ;; string _turn_direction
    4 (length _turn_direction)
    ;; float32 _in_distance
    4
    ;; uint32 _lane
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _turn_direction
       (write-long (length _turn_direction) s) (princ _turn_direction s)
     ;; float32 _in_distance
       (sys::poke _in_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _lane
       (write-long _lane s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _turn_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _in_distance
     (setq _in_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _lane
     (setq _lane (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::FindMagneticGuide :md5sum-) "be301344d82db2581c38425519475c66")
(setf (get robot_local_control_msgs::FindMagneticGuide :datatype-) "robot_local_control_msgs/FindMagneticGuide")
(setf (get robot_local_control_msgs::FindMagneticGuide :definition-)
      "#maximum distance to search the guide
string turn_direction
float32 in_distance
uint32 lane

")



(provide :robot_local_control_msgs/FindMagneticGuide "be301344d82db2581c38425519475c66")


