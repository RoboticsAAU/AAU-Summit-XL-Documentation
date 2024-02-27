;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MagneticNavigation)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MagneticNavigation (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICNAVIGATION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICNAVIGATION"))

(in-package "ROS")
;;//! \htmlinclude MagneticNavigation.msg.html


(defclass robot_local_control_msgs::MagneticNavigation
  :super ros::object
  :slots (_cart_position ))

(defmethod robot_local_control_msgs::MagneticNavigation
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

(setf (get robot_local_control_msgs::MagneticNavigation :md5sum-) "4da27e813bf08746398944b7800a7f75")
(setf (get robot_local_control_msgs::MagneticNavigation :datatype-) "robot_local_control_msgs/MagneticNavigation")
(setf (get robot_local_control_msgs::MagneticNavigation :definition-)
      "uint32 cart_position

")



(provide :robot_local_control_msgs/MagneticNavigation "4da27e813bf08746398944b7800a7f75")


