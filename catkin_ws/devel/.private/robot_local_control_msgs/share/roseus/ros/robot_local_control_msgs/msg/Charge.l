;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Charge)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Charge (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::CHARGE"))

(in-package "ROS")
;;//! \htmlinclude Charge.msg.html


(defclass robot_local_control_msgs::Charge
  :super ros::object
  :slots (_charge_station ))

(defmethod robot_local_control_msgs::Charge
  (:init
   (&key
    ((:charge_station __charge_station) "")
    )
   (send-super :init)
   (setq _charge_station (string __charge_station))
   self)
  (:charge_station
   (&optional __charge_station)
   (if __charge_station (setq _charge_station __charge_station)) _charge_station)
  (:serialization-length
   ()
   (+
    ;; string _charge_station
    4 (length _charge_station)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _charge_station
       (write-long (length _charge_station) s) (princ _charge_station s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _charge_station
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _charge_station (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Charge :md5sum-) "010959f65202c06bff3a36da5001d5c5")
(setf (get robot_local_control_msgs::Charge :datatype-) "robot_local_control_msgs/Charge")
(setf (get robot_local_control_msgs::Charge :definition-)
      "string charge_station

")



(provide :robot_local_control_msgs/Charge "010959f65202c06bff3a36da5001d5c5")


