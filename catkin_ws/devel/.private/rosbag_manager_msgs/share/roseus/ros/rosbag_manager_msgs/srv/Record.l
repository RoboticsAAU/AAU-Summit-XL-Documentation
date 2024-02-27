;; Auto-generated. Do not edit!


(when (boundp 'rosbag_manager_msgs::Record)
  (if (not (find-package "ROSBAG_MANAGER_MSGS"))
    (make-package "ROSBAG_MANAGER_MSGS"))
  (shadow 'Record (find-package "ROSBAG_MANAGER_MSGS")))
(unless (find-package "ROSBAG_MANAGER_MSGS::RECORD")
  (make-package "ROSBAG_MANAGER_MSGS::RECORD"))
(unless (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST")
  (make-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(unless (find-package "ROSBAG_MANAGER_MSGS::RECORDRESPONSE")
  (make-package "ROSBAG_MANAGER_MSGS::RECORDRESPONSE"))

(in-package "ROS")





(intern "*STOP*" (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(shadow '*STOP* (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(defconstant rosbag_manager_msgs::RecordRequest::*STOP* "stop")
(intern "*START*" (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(shadow '*START* (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(defconstant rosbag_manager_msgs::RecordRequest::*START* "start")
(intern "*DISCARD*" (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(shadow '*DISCARD* (find-package "ROSBAG_MANAGER_MSGS::RECORDREQUEST"))
(defconstant rosbag_manager_msgs::RecordRequest::*DISCARD* "discard")
(defclass rosbag_manager_msgs::RecordRequest
  :super ros::object
  :slots (_action _name _path ))

(defmethod rosbag_manager_msgs::RecordRequest
  (:init
   (&key
    ((:action __action) "")
    ((:name __name) "")
    ((:path __path) "")
    )
   (send-super :init)
   (setq _action (string __action))
   (setq _name (string __name))
   (setq _path (string __path))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ;; string _name
    4 (length _name)
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosbag_manager_msgs::RecordResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rosbag_manager_msgs::RecordResponse
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

(defclass rosbag_manager_msgs::Record
  :super ros::object
  :slots ())

(setf (get rosbag_manager_msgs::Record :md5sum-) "4e9e87c0bc4f22477e40498e7966c984")
(setf (get rosbag_manager_msgs::Record :datatype-) "rosbag_manager_msgs/Record")
(setf (get rosbag_manager_msgs::Record :request) rosbag_manager_msgs::RecordRequest)
(setf (get rosbag_manager_msgs::Record :response) rosbag_manager_msgs::RecordResponse)

(defmethod rosbag_manager_msgs::RecordRequest
  (:response () (instance rosbag_manager_msgs::RecordResponse :init)))

(setf (get rosbag_manager_msgs::RecordRequest :md5sum-) "4e9e87c0bc4f22477e40498e7966c984")
(setf (get rosbag_manager_msgs::RecordRequest :datatype-) "rosbag_manager_msgs/RecordRequest")
(setf (get rosbag_manager_msgs::RecordRequest :definition-)
      "# START: start recording
# STOP: stop recording
# DISCARD: stop and discard recording
string STOP=stop
string START=start
string DISCARD=discard
string action

# Name of the bag file. If empty string, bag file will be named with date and time
string name
# Absolute path location folder to save the camera recordings
string path
---
# returns 0 if ok, -1 otherwise
bool success
string message

")

(setf (get rosbag_manager_msgs::RecordResponse :md5sum-) "4e9e87c0bc4f22477e40498e7966c984")
(setf (get rosbag_manager_msgs::RecordResponse :datatype-) "rosbag_manager_msgs/RecordResponse")
(setf (get rosbag_manager_msgs::RecordResponse :definition-)
      "# START: start recording
# STOP: stop recording
# DISCARD: stop and discard recording
string STOP=stop
string START=start
string DISCARD=discard
string action

# Name of the bag file. If empty string, bag file will be named with date and time
string name
# Absolute path location folder to save the camera recordings
string path
---
# returns 0 if ok, -1 otherwise
bool success
string message

")



(provide :rosbag_manager_msgs/Record "4e9e87c0bc4f22477e40498e7966c984")


