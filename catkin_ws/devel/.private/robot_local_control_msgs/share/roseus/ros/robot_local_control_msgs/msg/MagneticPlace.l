;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MagneticPlace)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MagneticPlace (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPLACE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPLACE"))

(in-package "ROS")
;;//! \htmlinclude MagneticPlace.msg.html


(defclass robot_local_control_msgs::MagneticPlace
  :super ros::object
  :slots (_cart_position ))

(defmethod robot_local_control_msgs::MagneticPlace
  (:init
   (&key
    ((:cart_position __cart_position) 0)
    )
   (send-super :init)
   (setq _cart_position (round __cart_position))
   self)
  (:cart_position
   (&optional __cart_position)
   (if __cart_position (setq _cart_position __cart_position)) _cart_position)
  (:serialization-length
   ()
   (+
    ;; uint32 _cart_position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _cart_position
       (write-long _cart_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _cart_position
     (setq _cart_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MagneticPlace :md5sum-) "4da27e813bf08746398944b7800a7f75")
(setf (get robot_local_control_msgs::MagneticPlace :datatype-) "robot_local_control_msgs/MagneticPlace")
(setf (get robot_local_control_msgs::MagneticPlace :definition-)
      "uint32 cart_position

")



(provide :robot_local_control_msgs/MagneticPlace "4da27e813bf08746398944b7800a7f75")


