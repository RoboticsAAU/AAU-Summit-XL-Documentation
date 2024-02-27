;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GoToGPS)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GoToGPS (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOGPS"))

(in-package "ROS")
;;//! \htmlinclude GoToGPS.msg.html


(defclass robot_local_control_msgs::GoToGPS
  :super ros::object
  :slots (_frame_id _goals _max_velocity ))

(defmethod robot_local_control_msgs::GoToGPS
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::PointGPS :init) r)) r))
    ((:max_velocity __max_velocity) 0.0)
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _goals __goals)
   (setq _max_velocity (float __max_velocity))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:max_velocity
   (&optional __max_velocity)
   (if __max_velocity (setq _max_velocity __max_velocity)) _max_velocity)
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; robot_local_control_msgs/PointGPS[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ;; float32 _max_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; robot_local_control_msgs/PointGPS[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;; float32 _max_velocity
       (sys::poke _max_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robot_local_control_msgs/PointGPS[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::PointGPS :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _max_velocity
     (setq _max_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::GoToGPS :md5sum-) "1d4fbf4472de3812fca8b47adb405a90")
(setf (get robot_local_control_msgs::GoToGPS :datatype-) "robot_local_control_msgs/GoToGPS")
(setf (get robot_local_control_msgs::GoToGPS :definition-)
      "string frame_id

PointGPS[] goals

# Sets the max velocity through the path
float32 max_velocity

================================================================================
MSG: robot_local_control_msgs/PointGPS
float64 latitude
float64 longitude

")



(provide :robot_local_control_msgs/GoToGPS "1d4fbf4472de3812fca8b47adb405a90")


