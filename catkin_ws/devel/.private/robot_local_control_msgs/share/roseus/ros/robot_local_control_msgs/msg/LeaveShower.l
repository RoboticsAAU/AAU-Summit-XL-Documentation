;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::LeaveShower)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'LeaveShower (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWER")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::LEAVESHOWER"))

(in-package "ROS")
;;//! \htmlinclude LeaveShower.msg.html


(defclass robot_local_control_msgs::LeaveShower
  :super ros::object
  :slots (_from _door ))

(defmethod robot_local_control_msgs::LeaveShower
  (:init
   (&key
    ((:from __from) "")
    ((:door __door) "")
    )
   (send-super :init)
   (setq _from (string __from))
   (setq _door (string __door))
   self)
  (:from
   (&optional __from)
   (if __from (setq _from __from)) _from)
  (:door
   (&optional __door)
   (if __door (setq _door __door)) _door)
  (:serialization-length
   ()
   (+
    ;; string _from
    4 (length _from)
    ;; string _door
    4 (length _door)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _from
       (write-long (length _from) s) (princ _from s)
     ;; string _door
       (write-long (length _door) s) (princ _door s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _from
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _door
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _door (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::LeaveShower :md5sum-) "9cc80ebefcfb199be1c6890e9744d51c")
(setf (get robot_local_control_msgs::LeaveShower :datatype-) "robot_local_control_msgs/LeaveShower")
(setf (get robot_local_control_msgs::LeaveShower :definition-)
      "# valid values: warehouse, production
string from
# valid values: left, right, as seen from warehouse side
string door

")



(provide :robot_local_control_msgs/LeaveShower "9cc80ebefcfb199be1c6890e9744d51c")


