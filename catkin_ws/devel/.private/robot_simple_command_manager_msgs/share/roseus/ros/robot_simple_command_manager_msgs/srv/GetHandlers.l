;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::GetHandlers)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'GetHandlers (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERS")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERS"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERSREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERSREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERSRESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERSRESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::GetHandlersRequest
  :super ros::object
  :slots ())

(defmethod robot_simple_command_manager_msgs::GetHandlersRequest
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

(defclass robot_simple_command_manager_msgs::GetHandlersResponse
  :super ros::object
  :slots (_handlers ))

(defmethod robot_simple_command_manager_msgs::GetHandlersResponse
  (:init
   (&key
    ((:handlers __handlers) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _handlers __handlers)
   self)
  (:handlers
   (&optional __handlers)
   (if __handlers (setq _handlers __handlers)) _handlers)
  (:serialization-length
   ()
   (+
    ;; string[] _handlers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _handlers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _handlers
     (write-long (length _handlers) s)
     (dolist (elem _handlers)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _handlers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _handlers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _handlers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::GetHandlers
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::GetHandlers :md5sum-) "dd8c5aa023d5f8392d90b9573cfc34a5")
(setf (get robot_simple_command_manager_msgs::GetHandlers :datatype-) "robot_simple_command_manager_msgs/GetHandlers")
(setf (get robot_simple_command_manager_msgs::GetHandlers :request) robot_simple_command_manager_msgs::GetHandlersRequest)
(setf (get robot_simple_command_manager_msgs::GetHandlers :response) robot_simple_command_manager_msgs::GetHandlersResponse)

(defmethod robot_simple_command_manager_msgs::GetHandlersRequest
  (:response () (instance robot_simple_command_manager_msgs::GetHandlersResponse :init)))

(setf (get robot_simple_command_manager_msgs::GetHandlersRequest :md5sum-) "dd8c5aa023d5f8392d90b9573cfc34a5")
(setf (get robot_simple_command_manager_msgs::GetHandlersRequest :datatype-) "robot_simple_command_manager_msgs/GetHandlersRequest")
(setf (get robot_simple_command_manager_msgs::GetHandlersRequest :definition-)
      "---
string[] handlers
")

(setf (get robot_simple_command_manager_msgs::GetHandlersResponse :md5sum-) "dd8c5aa023d5f8392d90b9573cfc34a5")
(setf (get robot_simple_command_manager_msgs::GetHandlersResponse :datatype-) "robot_simple_command_manager_msgs/GetHandlersResponse")
(setf (get robot_simple_command_manager_msgs::GetHandlersResponse :definition-)
      "---
string[] handlers
")



(provide :robot_simple_command_manager_msgs/GetHandlers "dd8c5aa023d5f8392d90b9573cfc34a5")


