;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::EventScheduler)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'EventScheduler (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::EVENTSCHEDULER")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::EVENTSCHEDULER"))

(in-package "ROS")
;;//! \htmlinclude EventScheduler.msg.html


(defclass robot_simple_command_manager_msgs::EventScheduler
  :super ros::object
  :slots (_id _wk _date_start _date_end _hour _minute _repeat_hour _enabled _commands ))

(defmethod robot_simple_command_manager_msgs::EventScheduler
  (:init
   (&key
    ((:id __id) "")
    ((:wk __wk) (make-array 0 :initial-element 0 :element-type :integer))
    ((:date_start __date_start) "")
    ((:date_end __date_end) "")
    ((:hour __hour) 0)
    ((:minute __minute) 0)
    ((:repeat_hour __repeat_hour) 0)
    ((:enabled __enabled) nil)
    ((:commands __commands) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _wk __wk)
   (setq _date_start (string __date_start))
   (setq _date_end (string __date_end))
   (setq _hour (round __hour))
   (setq _minute (round __minute))
   (setq _repeat_hour (round __repeat_hour))
   (setq _enabled __enabled)
   (setq _commands (string __commands))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:wk
   (&optional __wk)
   (if __wk (setq _wk __wk)) _wk)
  (:date_start
   (&optional __date_start)
   (if __date_start (setq _date_start __date_start)) _date_start)
  (:date_end
   (&optional __date_end)
   (if __date_end (setq _date_end __date_end)) _date_end)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:minute
   (&optional __minute)
   (if __minute (setq _minute __minute)) _minute)
  (:repeat_hour
   (&optional __repeat_hour)
   (if __repeat_hour (setq _repeat_hour __repeat_hour)) _repeat_hour)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:commands
   (&optional __commands)
   (if __commands (setq _commands __commands)) _commands)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int32[] _wk
    (* 4    (length _wk)) 4
    ;; string _date_start
    4 (length _date_start)
    ;; string _date_end
    4 (length _date_end)
    ;; int32 _hour
    4
    ;; int32 _minute
    4
    ;; int32 _repeat_hour
    4
    ;; bool _enabled
    1
    ;; string _commands
    4 (length _commands)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32[] _wk
     (write-long (length _wk) s)
     (dotimes (i (length _wk))
       (write-long (elt _wk i) s)
       )
     ;; string _date_start
       (write-long (length _date_start) s) (princ _date_start s)
     ;; string _date_end
       (write-long (length _date_end) s) (princ _date_end s)
     ;; int32 _hour
       (write-long _hour s)
     ;; int32 _minute
       (write-long _minute s)
     ;; int32 _repeat_hour
       (write-long _repeat_hour s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; string _commands
       (write-long (length _commands) s) (princ _commands s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _wk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wk (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _wk i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string _date_start
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date_start (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _date_end
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date_end (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _hour
     (setq _hour (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _minute
     (setq _minute (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _repeat_hour
     (setq _repeat_hour (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _commands
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _commands (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_simple_command_manager_msgs::EventScheduler :md5sum-) "27881408b237c4e879319551ad0eebe8")
(setf (get robot_simple_command_manager_msgs::EventScheduler :datatype-) "robot_simple_command_manager_msgs/EventScheduler")
(setf (get robot_simple_command_manager_msgs::EventScheduler :definition-)
      "string id
int32[] wk
string date_start
string date_end
int32 hour
int32 minute
int32 repeat_hour
bool enabled
string commands


")



(provide :robot_simple_command_manager_msgs/EventScheduler "27881408b237c4e879319551ad0eebe8")


