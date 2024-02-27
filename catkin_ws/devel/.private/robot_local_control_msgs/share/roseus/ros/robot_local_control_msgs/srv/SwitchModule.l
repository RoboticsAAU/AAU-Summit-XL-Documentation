;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SwitchModule)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SwitchModule (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMODULE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMODULE"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMODULEREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMODULEREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMODULERESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SWITCHMODULERESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SwitchModuleRequest
  :super ros::object
  :slots (_module_name ))

(defmethod robot_local_control_msgs::SwitchModuleRequest
  (:init
   (&key
    ((:module_name __module_name) "")
    )
   (send-super :init)
   (setq _module_name (string __module_name))
   self)
  (:module_name
   (&optional __module_name)
   (if __module_name (setq _module_name __module_name)) _module_name)
  (:serialization-length
   ()
   (+
    ;; string _module_name
    4 (length _module_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _module_name
       (write-long (length _module_name) s) (princ _module_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _module_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SwitchModuleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SwitchModuleResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SwitchModule
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SwitchModule :md5sum-) "eac5a11ec4d6f9968a2dfda66990ae9c")
(setf (get robot_local_control_msgs::SwitchModule :datatype-) "robot_local_control_msgs/SwitchModule")
(setf (get robot_local_control_msgs::SwitchModule :request) robot_local_control_msgs::SwitchModuleRequest)
(setf (get robot_local_control_msgs::SwitchModule :response) robot_local_control_msgs::SwitchModuleResponse)

(defmethod robot_local_control_msgs::SwitchModuleRequest
  (:response () (instance robot_local_control_msgs::SwitchModuleResponse :init)))

(setf (get robot_local_control_msgs::SwitchModuleRequest :md5sum-) "eac5a11ec4d6f9968a2dfda66990ae9c")
(setf (get robot_local_control_msgs::SwitchModuleRequest :datatype-) "robot_local_control_msgs/SwitchModuleRequest")
(setf (get robot_local_control_msgs::SwitchModuleRequest :definition-)
      "string module_name
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robot_local_control_msgs::SwitchModuleResponse :md5sum-) "eac5a11ec4d6f9968a2dfda66990ae9c")
(setf (get robot_local_control_msgs::SwitchModuleResponse :datatype-) "robot_local_control_msgs/SwitchModuleResponse")
(setf (get robot_local_control_msgs::SwitchModuleResponse :definition-)
      "string module_name
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robot_local_control_msgs/SwitchModule "eac5a11ec4d6f9968a2dfda66990ae9c")


