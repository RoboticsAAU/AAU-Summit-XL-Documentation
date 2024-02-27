;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SimpleGoToWithValidation)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SimpleGoToWithValidation (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SIMPLEGOTOWITHVALIDATION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SIMPLEGOTOWITHVALIDATION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SIMPLEGOTOWITHVALIDATIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SIMPLEGOTOWITHVALIDATIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SIMPLEGOTOWITHVALIDATIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SIMPLEGOTOWITHVALIDATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robot_local_control_msgs::SimpleGoToWithValidationRequest
  :super ros::object
  :slots (_max_velocity _validation _command _goal ))

(defmethod robot_local_control_msgs::SimpleGoToWithValidationRequest
  (:init
   (&key
    ((:max_velocity __max_velocity) 0.0)
    ((:validation __validation) nil)
    ((:command __command) "")
    ((:goal __goal) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _max_velocity (float __max_velocity))
   (setq _validation __validation)
   (setq _command (string __command))
   (setq _goal __goal)
   self)
  (:max_velocity
   (&optional __max_velocity)
   (if __max_velocity (setq _max_velocity __max_velocity)) _max_velocity)
  (:validation
   (&optional __validation)
   (if __validation (setq _validation __validation)) _validation)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; float32 _max_velocity
    4
    ;; bool _validation
    1
    ;; string _command
    4 (length _command)
    ;; geometry_msgs/Pose2D _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _max_velocity
       (sys::poke _max_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _validation
       (if _validation (write-byte -1 s) (write-byte 0 s))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; geometry_msgs/Pose2D _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _max_velocity
     (setq _max_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _validation
     (setq _validation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SimpleGoToWithValidationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SimpleGoToWithValidationResponse
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

(defclass robot_local_control_msgs::SimpleGoToWithValidation
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SimpleGoToWithValidation :md5sum-) "46d9f1402ff63aa3569c867ae6540606")
(setf (get robot_local_control_msgs::SimpleGoToWithValidation :datatype-) "robot_local_control_msgs/SimpleGoToWithValidation")
(setf (get robot_local_control_msgs::SimpleGoToWithValidation :request) robot_local_control_msgs::SimpleGoToWithValidationRequest)
(setf (get robot_local_control_msgs::SimpleGoToWithValidation :response) robot_local_control_msgs::SimpleGoToWithValidationResponse)

(defmethod robot_local_control_msgs::SimpleGoToWithValidationRequest
  (:response () (instance robot_local_control_msgs::SimpleGoToWithValidationResponse :init)))

(setf (get robot_local_control_msgs::SimpleGoToWithValidationRequest :md5sum-) "46d9f1402ff63aa3569c867ae6540606")
(setf (get robot_local_control_msgs::SimpleGoToWithValidationRequest :datatype-) "robot_local_control_msgs/SimpleGoToWithValidationRequest")
(setf (get robot_local_control_msgs::SimpleGoToWithValidationRequest :definition-)
      "float32 max_velocity
bool validation
string command
geometry_msgs/Pose2D goal

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
bool success
string message

")

(setf (get robot_local_control_msgs::SimpleGoToWithValidationResponse :md5sum-) "46d9f1402ff63aa3569c867ae6540606")
(setf (get robot_local_control_msgs::SimpleGoToWithValidationResponse :datatype-) "robot_local_control_msgs/SimpleGoToWithValidationResponse")
(setf (get robot_local_control_msgs::SimpleGoToWithValidationResponse :definition-)
      "float32 max_velocity
bool validation
string command
geometry_msgs/Pose2D goal

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
bool success
string message

")



(provide :robot_local_control_msgs/SimpleGoToWithValidation "46d9f1402ff63aa3569c867ae6540606")


