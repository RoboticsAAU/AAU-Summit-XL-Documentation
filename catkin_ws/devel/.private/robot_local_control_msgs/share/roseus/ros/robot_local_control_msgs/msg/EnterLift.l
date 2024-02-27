;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::EnterLift)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'EnterLift (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::ENTERLIFT")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::ENTERLIFT"))

(in-package "ROS")
;;//! \htmlinclude EnterLift.msg.html


(defclass robot_local_control_msgs::EnterLift
  :super ros::object
  :slots (_floor ))

(defmethod robot_local_control_msgs::EnterLift
  (:init
   (&key
    ((:floor __floor) "")
    )
   (send-super :init)
   (setq _floor (string __floor))
   self)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
  (:serialization-length
   ()
   (+
    ;; string _floor
    4 (length _floor)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _floor
       (write-long (length _floor) s) (princ _floor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _floor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::EnterLift :md5sum-) "080ca89808f79b4dda698c3815d2f4aa")
(setf (get robot_local_control_msgs::EnterLift :datatype-) "robot_local_control_msgs/EnterLift")
(setf (get robot_local_control_msgs::EnterLift :definition-)
      "# valid values: floor_0, floor_1
string floor
")



(provide :robot_local_control_msgs/EnterLift "080ca89808f79b4dda698c3815d2f4aa")


