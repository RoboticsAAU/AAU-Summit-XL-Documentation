;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::SaveMap)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'SaveMap (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SAVEMAP")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SAVEMAP"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SAVEMAPREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SAVEMAPREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::SAVEMAPRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::SaveMapRequest
  :super ros::object
  :slots (_name _frame_id ))

(defmethod robot_local_control_msgs::SaveMapRequest
  (:init
   (&key
    ((:name __name) "")
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _frame_id (string __frame_id))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::SaveMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::SaveMapResponse
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

(defclass robot_local_control_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::SaveMap :md5sum-) "6ee6771489eabfdc629baa565878b507")
(setf (get robot_local_control_msgs::SaveMap :datatype-) "robot_local_control_msgs/SaveMap")
(setf (get robot_local_control_msgs::SaveMap :request) robot_local_control_msgs::SaveMapRequest)
(setf (get robot_local_control_msgs::SaveMap :response) robot_local_control_msgs::SaveMapResponse)

(defmethod robot_local_control_msgs::SaveMapRequest
  (:response () (instance robot_local_control_msgs::SaveMapResponse :init)))

(setf (get robot_local_control_msgs::SaveMapRequest :md5sum-) "6ee6771489eabfdc629baa565878b507")
(setf (get robot_local_control_msgs::SaveMapRequest :datatype-) "robot_local_control_msgs/SaveMapRequest")
(setf (get robot_local_control_msgs::SaveMapRequest :definition-)
      "string name     # name of the map
string frame_id # frame_id associated
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robot_local_control_msgs::SaveMapResponse :md5sum-) "6ee6771489eabfdc629baa565878b507")
(setf (get robot_local_control_msgs::SaveMapResponse :datatype-) "robot_local_control_msgs/SaveMapResponse")
(setf (get robot_local_control_msgs::SaveMapResponse :definition-)
      "string name     # name of the map
string frame_id # frame_id associated
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robot_local_control_msgs/SaveMap "6ee6771489eabfdc629baa565878b507")


