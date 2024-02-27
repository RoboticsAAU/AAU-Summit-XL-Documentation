;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::ControllerStatus)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'ControllerStatus (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::CONTROLLERSTATUS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::CONTROLLERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ControllerStatus.msg.html


(defclass robot_local_control_msgs::ControllerStatus
  :super ros::object
  :slots (_name _type _state ))

(defmethod robot_local_control_msgs::ControllerStatus
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:state __state) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _state (string __state))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::ControllerStatus :md5sum-) "e145d5885735fb148da78e7e3397936c")
(setf (get robot_local_control_msgs::ControllerStatus :datatype-) "robot_local_control_msgs/ControllerStatus")
(setf (get robot_local_control_msgs::ControllerStatus :definition-)
      "# Human readable name
string name

# Type of controller
string type

# INIT, READY, EMERGENCY, FAILURE
string state

")



(provide :robot_local_control_msgs/ControllerStatus "e145d5885735fb148da78e7e3397936c")


