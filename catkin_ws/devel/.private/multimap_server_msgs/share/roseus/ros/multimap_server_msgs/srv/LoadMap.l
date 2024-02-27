;; Auto-generated. Do not edit!


(when (boundp 'multimap_server_msgs::LoadMap)
  (if (not (find-package "MULTIMAP_SERVER_MSGS"))
    (make-package "MULTIMAP_SERVER_MSGS"))
  (shadow 'LoadMap (find-package "MULTIMAP_SERVER_MSGS")))
(unless (find-package "MULTIMAP_SERVER_MSGS::LOADMAP")
  (make-package "MULTIMAP_SERVER_MSGS::LOADMAP"))
(unless (find-package "MULTIMAP_SERVER_MSGS::LOADMAPREQUEST")
  (make-package "MULTIMAP_SERVER_MSGS::LOADMAPREQUEST"))
(unless (find-package "MULTIMAP_SERVER_MSGS::LOADMAPRESPONSE")
  (make-package "MULTIMAP_SERVER_MSGS::LOADMAPRESPONSE"))

(in-package "ROS")





(defclass multimap_server_msgs::LoadMapRequest
  :super ros::object
  :slots (_map_url _ns _map_name _global_frame ))

(defmethod multimap_server_msgs::LoadMapRequest
  (:init
   (&key
    ((:map_url __map_url) "")
    ((:ns __ns) "")
    ((:map_name __map_name) "")
    ((:global_frame __global_frame) "")
    )
   (send-super :init)
   (setq _map_url (string __map_url))
   (setq _ns (string __ns))
   (setq _map_name (string __map_name))
   (setq _global_frame (string __global_frame))
   self)
  (:map_url
   (&optional __map_url)
   (if __map_url (setq _map_url __map_url)) _map_url)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:global_frame
   (&optional __global_frame)
   (if __global_frame (setq _global_frame __global_frame)) _global_frame)
  (:serialization-length
   ()
   (+
    ;; string _map_url
    4 (length _map_url)
    ;; string _ns
    4 (length _ns)
    ;; string _map_name
    4 (length _map_name)
    ;; string _global_frame
    4 (length _global_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_url
       (write-long (length _map_url) s) (princ _map_url s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _global_frame
       (write-long (length _global_frame) s) (princ _global_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _global_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _global_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multimap_server_msgs::LoadMapResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod multimap_server_msgs::LoadMapResponse
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

(defclass multimap_server_msgs::LoadMap
  :super ros::object
  :slots ())

(setf (get multimap_server_msgs::LoadMap :md5sum-) "a077cc25c08e38d71f715aaa29d797f4")
(setf (get multimap_server_msgs::LoadMap :datatype-) "multimap_server_msgs/LoadMap")
(setf (get multimap_server_msgs::LoadMap :request) multimap_server_msgs::LoadMapRequest)
(setf (get multimap_server_msgs::LoadMap :response) multimap_server_msgs::LoadMapResponse)

(defmethod multimap_server_msgs::LoadMapRequest
  (:response () (instance multimap_server_msgs::LoadMapResponse :init)))

(setf (get multimap_server_msgs::LoadMapRequest :md5sum-) "a077cc25c08e38d71f715aaa29d797f4")
(setf (get multimap_server_msgs::LoadMapRequest :datatype-) "multimap_server_msgs/LoadMapRequest")
(setf (get multimap_server_msgs::LoadMapRequest :definition-)
      "string map_url
string ns
string map_name
string global_frame
---
bool success
string msg

")

(setf (get multimap_server_msgs::LoadMapResponse :md5sum-) "a077cc25c08e38d71f715aaa29d797f4")
(setf (get multimap_server_msgs::LoadMapResponse :datatype-) "multimap_server_msgs/LoadMapResponse")
(setf (get multimap_server_msgs::LoadMapResponse :definition-)
      "string map_url
string ns
string map_name
string global_frame
---
bool success
string msg

")



(provide :multimap_server_msgs/LoadMap "a077cc25c08e38d71f715aaa29d797f4")


