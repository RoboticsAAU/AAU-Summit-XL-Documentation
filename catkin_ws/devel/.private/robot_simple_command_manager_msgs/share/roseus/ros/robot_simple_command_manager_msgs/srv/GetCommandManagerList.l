;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::GetCommandManagerList)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'GetCommandManagerList (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDMANAGERLIST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDMANAGERLIST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDMANAGERLISTREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDMANAGERLISTREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDMANAGERLISTRESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDMANAGERLISTRESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::GetCommandManagerListRequest
  :super ros::object
  :slots ())

(defmethod robot_simple_command_manager_msgs::GetCommandManagerListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::GetCommandManagerListResponse
  :super ros::object
  :slots (_list _success _message ))

(defmethod robot_simple_command_manager_msgs::GetCommandManagerListResponse
  (:init
   (&key
    ((:list __list) (instance robot_simple_command_manager_msgs::CommandManagerArray :init))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _list __list)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/CommandManagerArray _list
    (send _list :serialization-length)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/CommandManagerArray _list
       (send _list :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/CommandManagerArray _list
     (send _list :deserialize buf ptr-) (incf ptr- (send _list :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::GetCommandManagerList
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::GetCommandManagerList :md5sum-) "efa7801a29cc81feaf45e89c194507dc")
(setf (get robot_simple_command_manager_msgs::GetCommandManagerList :datatype-) "robot_simple_command_manager_msgs/GetCommandManagerList")
(setf (get robot_simple_command_manager_msgs::GetCommandManagerList :request) robot_simple_command_manager_msgs::GetCommandManagerListRequest)
(setf (get robot_simple_command_manager_msgs::GetCommandManagerList :response) robot_simple_command_manager_msgs::GetCommandManagerListResponse)

(defmethod robot_simple_command_manager_msgs::GetCommandManagerListRequest
  (:response () (instance robot_simple_command_manager_msgs::GetCommandManagerListResponse :init)))

(setf (get robot_simple_command_manager_msgs::GetCommandManagerListRequest :md5sum-) "efa7801a29cc81feaf45e89c194507dc")
(setf (get robot_simple_command_manager_msgs::GetCommandManagerListRequest :datatype-) "robot_simple_command_manager_msgs/GetCommandManagerListRequest")
(setf (get robot_simple_command_manager_msgs::GetCommandManagerListRequest :definition-)
      "---
robot_simple_command_manager_msgs/CommandManagerArray list
bool success
string message


================================================================================
MSG: robot_simple_command_manager_msgs/CommandManagerArray
robot_simple_command_manager_msgs/CommandManager[] commands


================================================================================
MSG: robot_simple_command_manager_msgs/CommandManager
string id
string command

")

(setf (get robot_simple_command_manager_msgs::GetCommandManagerListResponse :md5sum-) "efa7801a29cc81feaf45e89c194507dc")
(setf (get robot_simple_command_manager_msgs::GetCommandManagerListResponse :datatype-) "robot_simple_command_manager_msgs/GetCommandManagerListResponse")
(setf (get robot_simple_command_manager_msgs::GetCommandManagerListResponse :definition-)
      "---
robot_simple_command_manager_msgs/CommandManagerArray list
bool success
string message


================================================================================
MSG: robot_simple_command_manager_msgs/CommandManagerArray
robot_simple_command_manager_msgs/CommandManager[] commands


================================================================================
MSG: robot_simple_command_manager_msgs/CommandManager
string id
string command

")



(provide :robot_simple_command_manager_msgs/GetCommandManagerList "efa7801a29cc81feaf45e89c194507dc")


