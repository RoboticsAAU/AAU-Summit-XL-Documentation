;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SetElevator)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SetElevator (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETELEVATOR")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETELEVATOR"))

(in-package "ROS")
;;//! \htmlinclude SetElevator.msg.html


(defclass robot_local_control_msgs::SetElevator
  :super ros::object
  :slots (_height ))

(defmethod robot_local_control_msgs::SetElevator
  (:init
   (&key
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::SetElevator :md5sum-) "384d8dd5cbcb4f6e145e6b246fa635b2")
(setf (get robot_local_control_msgs::SetElevator :datatype-) "robot_local_control_msgs/SetElevator")
(setf (get robot_local_control_msgs::SetElevator :definition-)
      "float32 height
")



(provide :robot_local_control_msgs/SetElevator "384d8dd5cbcb4f6e145e6b246fa635b2")


