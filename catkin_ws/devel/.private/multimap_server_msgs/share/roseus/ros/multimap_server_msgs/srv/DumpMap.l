;; Auto-generated. Do not edit!


(when (boundp 'multimap_server_msgs::DumpMap)
  (if (not (find-package "MULTIMAP_SERVER_MSGS"))
    (make-package "MULTIMAP_SERVER_MSGS"))
  (shadow 'DumpMap (find-package "MULTIMAP_SERVER_MSGS")))
(unless (find-package "MULTIMAP_SERVER_MSGS::DUMPMAP")
  (make-package "MULTIMAP_SERVER_MSGS::DUMPMAP"))
(unless (find-package "MULTIMAP_SERVER_MSGS::DUMPMAPREQUEST")
  (make-package "MULTIMAP_SERVER_MSGS::DUMPMAPREQUEST"))
(unless (find-package "MULTIMAP_SERVER_MSGS::DUMPMAPRESPONSE")
  (make-package "MULTIMAP_SERVER_MSGS::DUMPMAPRESPONSE"))

(in-package "ROS")





(defclass multimap_server_msgs::DumpMapRequest
  :super ros::object
  :slots (_ns _map_name ))

(defmethod multimap_server_msgs::DumpMapRequest
  (:init
   (&key
    ((:ns __ns) "")
    ((:map_name __map_name) "")
    )
   (send-super :init)
   (setq _ns (string __ns))
   (setq _map_name (string __map_name))
   self)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:serialization-length
   ()
   (+
    ;; string _ns
    4 (length _ns)
    ;; string _map_name
    4 (length _map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multimap_server_msgs::DumpMapResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod multimap_server_msgs::DumpMapResponse
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

(defclass multimap_server_msgs::DumpMap
  :super ros::object
  :slots ())

(setf (get multimap_server_msgs::DumpMap :md5sum-) "2877e4a3463c998fce3b219d9803d881")
(setf (get multimap_server_msgs::DumpMap :datatype-) "multimap_server_msgs/DumpMap")
(setf (get multimap_server_msgs::DumpMap :request) multimap_server_msgs::DumpMapRequest)
(setf (get multimap_server_msgs::DumpMap :response) multimap_server_msgs::DumpMapResponse)

(defmethod multimap_server_msgs::DumpMapRequest
  (:response () (instance multimap_server_msgs::DumpMapResponse :init)))

(setf (get multimap_server_msgs::DumpMapRequest :md5sum-) "2877e4a3463c998fce3b219d9803d881")
(setf (get multimap_server_msgs::DumpMapRequest :datatype-) "multimap_server_msgs/DumpMapRequest")
(setf (get multimap_server_msgs::DumpMapRequest :definition-)
      "string ns
string map_name
---
bool success
string msg

")

(setf (get multimap_server_msgs::DumpMapResponse :md5sum-) "2877e4a3463c998fce3b219d9803d881")
(setf (get multimap_server_msgs::DumpMapResponse :datatype-) "multimap_server_msgs/DumpMapResponse")
(setf (get multimap_server_msgs::DumpMapResponse :definition-)
      "string ns
string map_name
---
bool success
string msg

")



(provide :multimap_server_msgs/DumpMap "2877e4a3463c998fce3b219d9803d881")


