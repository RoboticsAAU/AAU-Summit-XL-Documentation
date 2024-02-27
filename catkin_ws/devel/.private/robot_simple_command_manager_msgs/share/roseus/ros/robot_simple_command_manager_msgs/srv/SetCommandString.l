;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::SetCommandString)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'SetCommandString (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SETCOMMANDSTRING")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SETCOMMANDSTRING"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SETCOMMANDSTRINGREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SETCOMMANDSTRINGREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SETCOMMANDSTRINGRESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::SETCOMMANDSTRINGRESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::SetCommandStringRequest
  :super ros::object
  :slots (_command ))

(defmethod robot_simple_command_manager_msgs::SetCommandStringRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::SetCommandStringResponse
  :super ros::object
  :slots (_ret ))

(defmethod robot_simple_command_manager_msgs::SetCommandStringResponse
  (:init
   (&key
    ((:ret __ret) (instance robot_simple_command_manager_msgs::ReturnMessage :init))
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&rest __ret)
   (if (keywordp (car __ret))
       (send* _ret __ret)
     (progn
       (if __ret (setq _ret (car __ret)))
       _ret)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/ReturnMessage _ret
    (send _ret :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/ReturnMessage _ret
       (send _ret :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/ReturnMessage _ret
     (send _ret :deserialize buf ptr-) (incf ptr- (send _ret :serialization-length))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::SetCommandString
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::SetCommandString :md5sum-) "a562ec88e0fa4ca847fa743945bf6490")
(setf (get robot_simple_command_manager_msgs::SetCommandString :datatype-) "robot_simple_command_manager_msgs/SetCommandString")
(setf (get robot_simple_command_manager_msgs::SetCommandString :request) robot_simple_command_manager_msgs::SetCommandStringRequest)
(setf (get robot_simple_command_manager_msgs::SetCommandString :response) robot_simple_command_manager_msgs::SetCommandStringResponse)

(defmethod robot_simple_command_manager_msgs::SetCommandStringRequest
  (:response () (instance robot_simple_command_manager_msgs::SetCommandStringResponse :init)))

(setf (get robot_simple_command_manager_msgs::SetCommandStringRequest :md5sum-) "a562ec88e0fa4ca847fa743945bf6490")
(setf (get robot_simple_command_manager_msgs::SetCommandStringRequest :datatype-) "robot_simple_command_manager_msgs/SetCommandStringRequest")
(setf (get robot_simple_command_manager_msgs::SetCommandStringRequest :definition-)
      "string command
---
robot_simple_command_manager_msgs/ReturnMessage ret


================================================================================
MSG: robot_simple_command_manager_msgs/ReturnMessage
bool success
string message
")

(setf (get robot_simple_command_manager_msgs::SetCommandStringResponse :md5sum-) "a562ec88e0fa4ca847fa743945bf6490")
(setf (get robot_simple_command_manager_msgs::SetCommandStringResponse :datatype-) "robot_simple_command_manager_msgs/SetCommandStringResponse")
(setf (get robot_simple_command_manager_msgs::SetCommandStringResponse :definition-)
      "string command
---
robot_simple_command_manager_msgs/ReturnMessage ret


================================================================================
MSG: robot_simple_command_manager_msgs/ReturnMessage
bool success
string message
")



(provide :robot_simple_command_manager_msgs/SetCommandString "a562ec88e0fa4ca847fa743945bf6490")


