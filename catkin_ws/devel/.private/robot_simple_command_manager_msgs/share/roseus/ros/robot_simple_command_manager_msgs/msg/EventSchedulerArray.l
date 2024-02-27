;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::EventSchedulerArray)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'EventSchedulerArray (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::EVENTSCHEDULERARRAY")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::EVENTSCHEDULERARRAY"))

(in-package "ROS")
;;//! \htmlinclude EventSchedulerArray.msg.html


(defclass robot_simple_command_manager_msgs::EventSchedulerArray
  :super ros::object
  :slots (_Events ))

(defmethod robot_simple_command_manager_msgs::EventSchedulerArray
  (:init
   (&key
    ((:Events __Events) (let (r) (dotimes (i 0) (push (instance robot_simple_command_manager_msgs::EventScheduler :init) r)) r))
    )
   (send-super :init)
   (setq _Events __Events)
   self)
  (:Events
   (&rest __Events)
   (if (keywordp (car __Events))
       (send* _Events __Events)
     (progn
       (if __Events (setq _Events (car __Events)))
       _Events)))
  (:serialization-length
   ()
   (+
    ;; robot_simple_command_manager_msgs/EventScheduler[] _Events
    (apply #'+ (send-all _Events :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_simple_command_manager_msgs/EventScheduler[] _Events
     (write-long (length _Events) s)
     (dolist (elem _Events)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_simple_command_manager_msgs/EventScheduler[] _Events
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Events (let (r) (dotimes (i n) (push (instance robot_simple_command_manager_msgs::EventScheduler :init) r)) r))
     (dolist (elem- _Events)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::EventSchedulerArray :md5sum-) "25a91bd6bc6eea637712c34f0a26b0c3")
(setf (get robot_simple_command_manager_msgs::EventSchedulerArray :datatype-) "robot_simple_command_manager_msgs/EventSchedulerArray")
(setf (get robot_simple_command_manager_msgs::EventSchedulerArray :definition-)
      "robot_simple_command_manager_msgs/EventScheduler[] Events

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



(provide :robot_simple_command_manager_msgs/EventSchedulerArray "25a91bd6bc6eea637712c34f0a26b0c3")


