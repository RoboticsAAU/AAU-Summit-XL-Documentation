;; Auto-generated. Do not edit!


(when (boundp 'multimap_server_msgs::SaveMap)
  (if (not (find-package "MULTIMAP_SERVER_MSGS"))
    (make-package "MULTIMAP_SERVER_MSGS"))
  (shadow 'SaveMap (find-package "MULTIMAP_SERVER_MSGS")))
(unless (find-package "MULTIMAP_SERVER_MSGS::SAVEMAP")
  (make-package "MULTIMAP_SERVER_MSGS::SAVEMAP"))
(unless (find-package "MULTIMAP_SERVER_MSGS::SAVEMAPREQUEST")
  (make-package "MULTIMAP_SERVER_MSGS::SAVEMAPREQUEST"))
(unless (find-package "MULTIMAP_SERVER_MSGS::SAVEMAPRESPONSE")
  (make-package "MULTIMAP_SERVER_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass multimap_server_msgs::SaveMapRequest
  :super ros::object
  :slots (_map_service _map_filename _use_default_thresholds _threshold_occupied _threshold_free ))

(defmethod multimap_server_msgs::SaveMapRequest
  (:init
   (&key
    ((:map_service __map_service) "")
    ((:map_filename __map_filename) "")
    ((:use_default_thresholds __use_default_thresholds) nil)
    ((:threshold_occupied __threshold_occupied) 0.0)
    ((:threshold_free __threshold_free) 0.0)
    )
   (send-super :init)
   (setq _map_service (string __map_service))
   (setq _map_filename (string __map_filename))
   (setq _use_default_thresholds __use_default_thresholds)
   (setq _threshold_occupied (float __threshold_occupied))
   (setq _threshold_free (float __threshold_free))
   self)
  (:map_service
   (&optional __map_service)
   (if __map_service (setq _map_service __map_service)) _map_service)
  (:map_filename
   (&optional __map_filename)
   (if __map_filename (setq _map_filename __map_filename)) _map_filename)
  (:use_default_thresholds
   (&optional __use_default_thresholds)
   (if __use_default_thresholds (setq _use_default_thresholds __use_default_thresholds)) _use_default_thresholds)
  (:threshold_occupied
   (&optional __threshold_occupied)
   (if __threshold_occupied (setq _threshold_occupied __threshold_occupied)) _threshold_occupied)
  (:threshold_free
   (&optional __threshold_free)
   (if __threshold_free (setq _threshold_free __threshold_free)) _threshold_free)
  (:serialization-length
   ()
   (+
    ;; string _map_service
    4 (length _map_service)
    ;; string _map_filename
    4 (length _map_filename)
    ;; bool _use_default_thresholds
    1
    ;; float32 _threshold_occupied
    4
    ;; float32 _threshold_free
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_service
       (write-long (length _map_service) s) (princ _map_service s)
     ;; string _map_filename
       (write-long (length _map_filename) s) (princ _map_filename s)
     ;; bool _use_default_thresholds
       (if _use_default_thresholds (write-byte -1 s) (write-byte 0 s))
     ;; float32 _threshold_occupied
       (sys::poke _threshold_occupied (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _threshold_free
       (sys::poke _threshold_free (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_service
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_service (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _use_default_thresholds
     (setq _use_default_thresholds (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _threshold_occupied
     (setq _threshold_occupied (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _threshold_free
     (setq _threshold_free (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass multimap_server_msgs::SaveMapResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod multimap_server_msgs::SaveMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multimap_server_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get multimap_server_msgs::SaveMap :md5sum-) "f25d1deb37e0c563df0c08bd04f45a79")
(setf (get multimap_server_msgs::SaveMap :datatype-) "multimap_server_msgs/SaveMap")
(setf (get multimap_server_msgs::SaveMap :request) multimap_server_msgs::SaveMapRequest)
(setf (get multimap_server_msgs::SaveMap :response) multimap_server_msgs::SaveMapResponse)

(defmethod multimap_server_msgs::SaveMapRequest
  (:response () (instance multimap_server_msgs::SaveMapResponse :init)))

(setf (get multimap_server_msgs::SaveMapRequest :md5sum-) "f25d1deb37e0c563df0c08bd04f45a79")
(setf (get multimap_server_msgs::SaveMapRequest :datatype-) "multimap_server_msgs/SaveMapRequest")
(setf (get multimap_server_msgs::SaveMapRequest :definition-)
      "string map_service
string map_filename
bool use_default_thresholds
float32 threshold_occupied
float32 threshold_free
---
bool success
string msg

")

(setf (get multimap_server_msgs::SaveMapResponse :md5sum-) "f25d1deb37e0c563df0c08bd04f45a79")
(setf (get multimap_server_msgs::SaveMapResponse :datatype-) "multimap_server_msgs/SaveMapResponse")
(setf (get multimap_server_msgs::SaveMapResponse :definition-)
      "string map_service
string map_filename
bool use_default_thresholds
float32 threshold_occupied
float32 threshold_free
---
bool success
string msg

")



(provide :multimap_server_msgs/SaveMap "f25d1deb37e0c563df0c08bd04f45a79")


