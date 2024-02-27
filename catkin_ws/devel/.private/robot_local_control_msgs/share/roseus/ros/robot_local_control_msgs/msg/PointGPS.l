;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::PointGPS)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'PointGPS (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::POINTGPS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::POINTGPS"))

(in-package "ROS")
;;//! \htmlinclude PointGPS.msg.html


(defclass robot_local_control_msgs::PointGPS
  :super ros::object
  :slots (_latitude _longitude ))

(defmethod robot_local_control_msgs::PointGPS
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::PointGPS :md5sum-) "680c6dc7da65a2421a822205dcbdb600")
(setf (get robot_local_control_msgs::PointGPS :datatype-) "robot_local_control_msgs/PointGPS")
(setf (get robot_local_control_msgs::PointGPS :definition-)
      "float64 latitude
float64 longitude

")



(provide :robot_local_control_msgs/PointGPS "680c6dc7da65a2421a822205dcbdb600")


