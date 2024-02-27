;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MissionParamFloat)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MissionParamFloat (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPARAMFLOAT")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPARAMFLOAT"))

(in-package "ROS")
;;//! \htmlinclude MissionParamFloat.msg.html


(defclass robot_local_control_msgs::MissionParamFloat
  :super ros::object
  :slots (_name _value ))

(defmethod robot_local_control_msgs::MissionParamFloat
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (float __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MissionParamFloat :md5sum-) "db3486341a840969e8845548decf6f11")
(setf (get robot_local_control_msgs::MissionParamFloat :datatype-) "robot_local_control_msgs/MissionParamFloat")
(setf (get robot_local_control_msgs::MissionParamFloat :definition-)
      "# param name
string name
# param value
float32 value


")



(provide :robot_local_control_msgs/MissionParamFloat "db3486341a840969e8845548decf6f11")


