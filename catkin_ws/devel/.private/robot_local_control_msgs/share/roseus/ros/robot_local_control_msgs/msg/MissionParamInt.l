;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MissionParamInt)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MissionParamInt (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPARAMINT")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONPARAMINT"))

(in-package "ROS")
;;//! \htmlinclude MissionParamInt.msg.html


(defclass robot_local_control_msgs::MissionParamInt
  :super ros::object
  :slots (_name _value ))

(defmethod robot_local_control_msgs::MissionParamInt
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (round __value))
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
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MissionParamInt :md5sum-) "65fedc7a0cbfb8db035e46194a350bf1")
(setf (get robot_local_control_msgs::MissionParamInt :datatype-) "robot_local_control_msgs/MissionParamInt")
(setf (get robot_local_control_msgs::MissionParamInt :definition-)
      "# param name
string name
# param value
int32 value


")



(provide :robot_local_control_msgs/MissionParamInt "65fedc7a0cbfb8db035e46194a350bf1")


