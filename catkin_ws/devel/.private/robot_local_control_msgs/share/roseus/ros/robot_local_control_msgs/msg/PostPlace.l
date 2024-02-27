;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::PostPlace)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'PostPlace (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::POSTPLACE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::POSTPLACE"))

(in-package "ROS")
;;//! \htmlinclude PostPlace.msg.html


(defclass robot_local_control_msgs::PostPlace
  :super ros::object
  :slots (_turn_direction ))

(defmethod robot_local_control_msgs::PostPlace
  (:init
   (&key
    ((:turn_direction __turn_direction) "")
    )
   (send-super :init)
   (setq _turn_direction (string __turn_direction))
   self)
  (:turn_direction
   (&optional __turn_direction)
   (if __turn_direction (setq _turn_direction __turn_direction)) _turn_direction)
  (:serialization-length
   ()
   (+
    ;; string _turn_direction
    4 (length _turn_direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _turn_direction
       (write-long (length _turn_direction) s) (princ _turn_direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _turn_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::PostPlace :md5sum-) "b601e40d4e05ee7ec9ac6a6e0a8142c0")
(setf (get robot_local_control_msgs::PostPlace :datatype-) "robot_local_control_msgs/PostPlace")
(setf (get robot_local_control_msgs::PostPlace :definition-)
      "string turn_direction

")



(provide :robot_local_control_msgs/PostPlace "b601e40d4e05ee7ec9ac6a6e0a8142c0")


