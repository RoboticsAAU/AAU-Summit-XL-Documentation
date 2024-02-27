;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::GetCommandSchedulerList)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'GetCommandSchedulerList (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDSCHEDULERLIST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDSCHEDULERLIST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDSCHEDULERLISTREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDSCHEDULERLISTREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDSCHEDULERLISTRESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETCOMMANDSCHEDULERLISTRESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::GetCommandSchedulerListRequest
  :super ros::object
  :slots ())

(defmethod robot_simple_command_manager_msgs::GetCommandSchedulerListRequest
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

(defclass robot_simple_command_manager_msgs::GetCommandSchedulerListResponse
  :super ros::object
  :slots (_list _success _message ))

(defmethod robot_simple_command_manager_msgs::GetCommandSchedulerListResponse
  (:init
   (&key
    ((:list __list) (instance robot_simple_command_manager_msgs::EventSchedulerArray :init))
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
    ;; robot_simple_command_manager_msgs/EventSchedulerArray _list
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
     ;; robot_simple_command_manager_msgs/EventSchedulerArray _list
       (send _list :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/EventSchedulerArray _list
     (send _list :deserialize buf ptr-) (incf ptr- (send _list :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::GetCommandSchedulerList
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerList :md5sum-) "eddf02e53400fb52131fc4d3a74bc6d4")
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerList :datatype-) "robot_simple_command_manager_msgs/GetCommandSchedulerList")
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerList :request) robot_simple_command_manager_msgs::GetCommandSchedulerListRequest)
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerList :response) robot_simple_command_manager_msgs::GetCommandSchedulerListResponse)

(defmethod robot_simple_command_manager_msgs::GetCommandSchedulerListRequest
  (:response () (instance robot_simple_command_manager_msgs::GetCommandSchedulerListResponse :init)))

(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerListRequest :md5sum-) "eddf02e53400fb52131fc4d3a74bc6d4")
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerListRequest :datatype-) "robot_simple_command_manager_msgs/GetCommandSchedulerListRequest")
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerListRequest :definition-)
      "---
robot_simple_command_manager_msgs/EventSchedulerArray list
bool success
string message


================================================================================
MSG: robot_simple_command_manager_msgs/EventSchedulerArray
robot_simple_command_manager_msgs/EventScheduler[] Events

================================================================================
MSG: robot_simple_command_manager_msgs/EventScheduler
string id
int32[] wk
string date_start
string date_end
int32 hour
int32 minute
int32 repeat_hour
bool enabled
string commands

")

(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerListResponse :md5sum-) "eddf02e53400fb52131fc4d3a74bc6d4")
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerListResponse :datatype-) "robot_simple_command_manager_msgs/GetCommandSchedulerListResponse")
(setf (get robot_simple_command_manager_msgs::GetCommandSchedulerListResponse :definition-)
      "---
robot_simple_command_manager_msgs/EventSchedulerArray list
bool success
string message


================================================================================
MSG: robot_simple_command_manager_msgs/EventSchedulerArray
robot_simple_command_manager_msgs/EventScheduler[] Events

================================================================================
MSG: robot_simple_command_manager_msgs/EventScheduler
string id
int32[] wk
string date_start
string date_end
int32 hour
int32 minute
int32 repeat_hour
bool enabled
string commands

")



(provide :robot_simple_command_manager_msgs/GetCommandSchedulerList "eddf02e53400fb52131fc4d3a74bc6d4")


