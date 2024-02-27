;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Twist2D)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Twist2D (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::TWIST2D")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::TWIST2D"))

(in-package "ROS")
;;//! \htmlinclude Twist2D.msg.html


(defclass robot_local_control_msgs::Twist2D
  :super ros::object
  :slots (_linear_x _linear_y _angular_z ))

(defmethod robot_local_control_msgs::Twist2D
  (:init
   (&key
    ((:linear_x __linear_x) 0.0)
    ((:linear_y __linear_y) 0.0)
    ((:angular_z __angular_z) 0.0)
    )
   (send-super :init)
   (setq _linear_x (float __linear_x))
   (setq _linear_y (float __linear_y))
   (setq _angular_z (float __angular_z))
   self)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:linear_y
   (&optional __linear_y)
   (if __linear_y (setq _linear_y __linear_y)) _linear_y)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_x
    8
    ;; float64 _linear_y
    8
    ;; float64 _angular_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_y
       (sys::poke _linear_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_y
     (setq _linear_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Twist2D :md5sum-) "17086575cf04ea52ca33141c3079cb71")
(setf (get robot_local_control_msgs::Twist2D :datatype-) "robot_local_control_msgs/Twist2D")
(setf (get robot_local_control_msgs::Twist2D :definition-)
      "float64 linear_x
float64 linear_y
float64 angular_z

")



(provide :robot_local_control_msgs/Twist2D "17086575cf04ea52ca33141c3079cb71")


