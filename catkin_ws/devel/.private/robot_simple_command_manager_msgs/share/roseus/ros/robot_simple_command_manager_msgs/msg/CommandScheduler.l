;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::CommandScheduler)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'CommandScheduler (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSCHEDULER")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::COMMANDSCHEDULER"))

(in-package "ROS")
;;//! \htmlinclude CommandScheduler.msg.html


(defclass robot_simple_command_manager_msgs::CommandScheduler
  :super ros::object
  :slots (_id _event ))

(defmethod robot_simple_command_manager_msgs::CommandScheduler
  (:init
   (&key
    ((:id __id) "")
    ((:event __event) (instance robot_simple_command_manager_msgs::EventScheduler :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _event __event)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; string _id
    4 (length _id)
    ;; robot_simple_command_manager_msgs/EventScheduler _event
    (send _event :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; robot_simple_command_manager_msgs/EventScheduler _event
       (send _event :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robot_simple_command_manager_msgs/EventScheduler _event
     (send _event :deserialize buf ptr-) (incf ptr- (send _event :serialization-length))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::CommandScheduler :md5sum-) "fa29fc47a3f6a75713a143d1c813a3e5")
(setf (get robot_simple_command_manager_msgs::CommandScheduler :datatype-) "robot_simple_command_manager_msgs/CommandScheduler")
(setf (get robot_simple_command_manager_msgs::CommandScheduler :definition-)
      "string id
robot_simple_command_manager_msgs/EventScheduler event


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



(provide :robot_simple_command_manager_msgs/CommandScheduler "fa29fc47a3f6a75713a143d1c813a3e5")


