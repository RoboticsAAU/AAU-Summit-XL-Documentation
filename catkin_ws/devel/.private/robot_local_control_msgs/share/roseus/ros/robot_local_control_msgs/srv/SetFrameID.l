;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SetFrameID)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SetFrameID (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETFRAMEID")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETFRAMEID"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETFRAMEIDREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETFRAMEIDREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SETFRAMEIDRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SETFRAMEIDRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SetFrameIDRequest
  :super ros::object
  :slots (_frame_id ))

(defmethod robot_local_control_msgs::SetFrameIDRequest
  (:init
   (&key
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SetFrameIDResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SetFrameIDResponse
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

(defclass robot_local_control_msgs::SetFrameID
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SetFrameID :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get robot_local_control_msgs::SetFrameID :datatype-) "robot_local_control_msgs/SetFrameID")
(setf (get robot_local_control_msgs::SetFrameID :request) robot_local_control_msgs::SetFrameIDRequest)
(setf (get robot_local_control_msgs::SetFrameID :response) robot_local_control_msgs::SetFrameIDResponse)

(defmethod robot_local_control_msgs::SetFrameIDRequest
  (:response () (instance robot_local_control_msgs::SetFrameIDResponse :init)))

(setf (get robot_local_control_msgs::SetFrameIDRequest :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get robot_local_control_msgs::SetFrameIDRequest :datatype-) "robot_local_control_msgs/SetFrameIDRequest")
(setf (get robot_local_control_msgs::SetFrameIDRequest :definition-)
      "string frame_id   # the new global frame_id
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robot_local_control_msgs::SetFrameIDResponse :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get robot_local_control_msgs::SetFrameIDResponse :datatype-) "robot_local_control_msgs/SetFrameIDResponse")
(setf (get robot_local_control_msgs::SetFrameIDResponse :definition-)
      "string frame_id   # the new global frame_id
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robot_local_control_msgs/SetFrameID "35f2ba3133054633678b5f61278846ec")


