;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::AddSchedule)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'AddSchedule (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::ADDSCHEDULE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::ADDSCHEDULE"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::ADDSCHEDULEREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::ADDSCHEDULEREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::ADDSCHEDULERESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::ADDSCHEDULERESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::AddScheduleRequest
  :super ros::object
  :slots (_event ))

(defmethod robot_simple_command_manager_msgs::AddScheduleRequest
  (:init
   (&key
    ((:event __event) (instance robot_simple_command_manager_msgs::EventScheduler :init))
    )
   (send-super :init)
   (setq _event __event)
   self)
  (:event
   (&rest __event)
   (if (keywordp (car __event))
       (send* _event __event)
     (progn
       (if __event (setq _event (car __event)))
       _event)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/EventScheduler _event
    (send _event :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/EventScheduler _event
       (send _event :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/EventScheduler _event
     (send _event :deserialize buf ptr-) (incf ptr- (send _event :serialization-length))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::AddScheduleResponse
  :super ros::object
  :slots (_ret ))

(defmethod robot_simple_command_manager_msgs::AddScheduleResponse
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

(defclass robot_simple_command_manager_msgs::AddSchedule
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::AddSchedule :md5sum-) "b7a10e19aed6c1fa97294e8f10d01f3b")
(setf (get robot_simple_command_manager_msgs::AddSchedule :datatype-) "robot_simple_command_manager_msgs/AddSchedule")
(setf (get robot_simple_command_manager_msgs::AddSchedule :request) robot_simple_command_manager_msgs::AddScheduleRequest)
(setf (get robot_simple_command_manager_msgs::AddSchedule :response) robot_simple_command_manager_msgs::AddScheduleResponse)

(defmethod robot_simple_command_manager_msgs::AddScheduleRequest
  (:response () (instance robot_simple_command_manager_msgs::AddScheduleResponse :init)))

(setf (get robot_simple_command_manager_msgs::AddScheduleRequest :md5sum-) "b7a10e19aed6c1fa97294e8f10d01f3b")
(setf (get robot_simple_command_manager_msgs::AddScheduleRequest :datatype-) "robot_simple_command_manager_msgs/AddScheduleRequest")
(setf (get robot_simple_command_manager_msgs::AddScheduleRequest :definition-)
      "robot_simple_command_manager_msgs/EventScheduler event

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

---
robot_simple_command_manager_msgs/ReturnMessage ret

================================================================================
MSG: robot_simple_command_manager_msgs/ReturnMessage
bool success
string message
")

(setf (get robot_simple_command_manager_msgs::AddScheduleResponse :md5sum-) "b7a10e19aed6c1fa97294e8f10d01f3b")
(setf (get robot_simple_command_manager_msgs::AddScheduleResponse :datatype-) "robot_simple_command_manager_msgs/AddScheduleResponse")
(setf (get robot_simple_command_manager_msgs::AddScheduleResponse :definition-)
      "robot_simple_command_manager_msgs/EventScheduler event

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

---
robot_simple_command_manager_msgs/ReturnMessage ret

================================================================================
MSG: robot_simple_command_manager_msgs/ReturnMessage
bool success
string message
")



(provide :robot_simple_command_manager_msgs/AddSchedule "b7a10e19aed6c1fa97294e8f10d01f3b")


