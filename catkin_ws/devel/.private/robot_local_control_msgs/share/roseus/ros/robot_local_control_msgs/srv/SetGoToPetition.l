;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SetGoToPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SetGoToPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETGOTOPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETGOTOPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETGOTOPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETGOTOPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETGOTOPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETGOTOPETITIONRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SetGoToPetitionRequest
  :super ros::object
  :slots (_action_namespace _frame_id ))

(defmethod robot_local_control_msgs::SetGoToPetitionRequest
  (:init
   (&key
    ((:action_namespace __action_namespace) "")
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _action_namespace (string __action_namespace))
   (setq _frame_id (string __frame_id))
   self)
  (:action_namespace
   (&optional __action_namespace)
   (if __action_namespace (setq _action_namespace __action_namespace)) _action_namespace)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; string _action_namespace
    4 (length _action_namespace)
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_namespace
       (write-long (length _action_namespace) s) (princ _action_namespace s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SetGoToPetitionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SetGoToPetitionResponse
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

(defclass robot_local_control_msgs::SetGoToPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SetGoToPetition :md5sum-) "113a2cfed66fa5447f35250c8468af29")
(setf (get robot_local_control_msgs::SetGoToPetition :datatype-) "robot_local_control_msgs/SetGoToPetition")
(setf (get robot_local_control_msgs::SetGoToPetition :request) robot_local_control_msgs::SetGoToPetitionRequest)
(setf (get robot_local_control_msgs::SetGoToPetition :response) robot_local_control_msgs::SetGoToPetitionResponse)

(defmethod robot_local_control_msgs::SetGoToPetitionRequest
  (:response () (instance robot_local_control_msgs::SetGoToPetitionResponse :init)))

(setf (get robot_local_control_msgs::SetGoToPetitionRequest :md5sum-) "113a2cfed66fa5447f35250c8468af29")
(setf (get robot_local_control_msgs::SetGoToPetitionRequest :datatype-) "robot_local_control_msgs/SetGoToPetitionRequest")
(setf (get robot_local_control_msgs::SetGoToPetitionRequest :definition-)
      "string action_namespace  # this will be the new action_namespace of the move_base client
string frame_id          # the new global frame_id
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robot_local_control_msgs::SetGoToPetitionResponse :md5sum-) "113a2cfed66fa5447f35250c8468af29")
(setf (get robot_local_control_msgs::SetGoToPetitionResponse :datatype-) "robot_local_control_msgs/SetGoToPetitionResponse")
(setf (get robot_local_control_msgs::SetGoToPetitionResponse :definition-)
      "string action_namespace  # this will be the new action_namespace of the move_base client
string frame_id          # the new global frame_id
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robot_local_control_msgs/SetGoToPetition "113a2cfed66fa5447f35250c8468af29")


