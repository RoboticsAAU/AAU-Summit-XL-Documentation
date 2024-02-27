;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SwitchMap)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SwitchMap (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMAP")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMAP"))

(in-package "ROS")
;;//! \htmlinclude SwitchMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_local_control_msgs::SwitchMap
  :super ros::object
  :slots (_map _x _y _theta ))

(defmethod robot_local_control_msgs::SwitchMap
  (:init
   (&key
    ((:map __map) "")
    ((:x __x) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    ((:theta __theta) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _map (string __map))
   (setq _x __x)
   (setq _y __y)
   (setq _theta __theta)
   self)
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:serialization-length
   ()
   (+
    ;; string _map
    4 (length _map)
    ;; std_msgs/Float32 _x
    (send _x :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ;; std_msgs/Float32 _theta
    (send _theta :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map
       (write-long (length _map) s) (princ _map s)
     ;; std_msgs/Float32 _x
       (send _x :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;; std_msgs/Float32 _theta
       (send _theta :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/Float32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float32 _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::SwitchMap :md5sum-) "a2fabb463b583973fe1c29042f0add80")
(setf (get robot_local_control_msgs::SwitchMap :datatype-) "robot_local_control_msgs/SwitchMap")
(setf (get robot_local_control_msgs::SwitchMap :definition-)
      "# sample values: floor_0, floor_1
string map

# position and orentation on the new floor
std_msgs/Float32 x 
std_msgs/Float32 y
std_msgs/Float32 theta

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :robot_local_control_msgs/SwitchMap "a2fabb463b583973fe1c29042f0add80")


