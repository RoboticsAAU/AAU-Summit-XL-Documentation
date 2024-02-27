;; Auto-generated. Do not edit!


(when (boundp 'multimap_server_msgs::LoadEnvironments)
  (if (not (find-package "MULTIMAP_SERVER_MSGS"))
    (make-package "MULTIMAP_SERVER_MSGS"))
  (shadow 'LoadEnvironments (find-package "MULTIMAP_SERVER_MSGS")))
(unless (find-package "MULTIMAP_SERVER_MSGS::LOADENVIRONMENTS")
  (make-package "MULTIMAP_SERVER_MSGS::LOADENVIRONMENTS"))
(unless (find-package "MULTIMAP_SERVER_MSGS::LOADENVIRONMENTSREQUEST")
  (make-package "MULTIMAP_SERVER_MSGS::LOADENVIRONMENTSREQUEST"))
(unless (find-package "MULTIMAP_SERVER_MSGS::LOADENVIRONMENTSRESPONSE")
  (make-package "MULTIMAP_SERVER_MSGS::LOADENVIRONMENTSRESPONSE"))

(in-package "ROS")





(defclass multimap_server_msgs::LoadEnvironmentsRequest
  :super ros::object
  :slots (_environments_url ))

(defmethod multimap_server_msgs::LoadEnvironmentsRequest
  (:init
   (&key
    ((:environments_url __environments_url) "")
    )
   (send-super :init)
   (setq _environments_url (string __environments_url))
   self)
  (:environments_url
   (&optional __environments_url)
   (if __environments_url (setq _environments_url __environments_url)) _environments_url)
  (:serialization-length
   ()
   (+
    ;; string _environments_url
    4 (length _environments_url)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _environments_url
       (write-long (length _environments_url) s) (princ _environments_url s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _environments_url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environments_url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multimap_server_msgs::LoadEnvironmentsResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod multimap_server_msgs::LoadEnvironmentsResponse
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

(defclass multimap_server_msgs::LoadEnvironments
  :super ros::object
  :slots ())

(setf (get multimap_server_msgs::LoadEnvironments :md5sum-) "f9c07b944bb09f9a6818d9b28b6141ea")
(setf (get multimap_server_msgs::LoadEnvironments :datatype-) "multimap_server_msgs/LoadEnvironments")
(setf (get multimap_server_msgs::LoadEnvironments :request) multimap_server_msgs::LoadEnvironmentsRequest)
(setf (get multimap_server_msgs::LoadEnvironments :response) multimap_server_msgs::LoadEnvironmentsResponse)

(defmethod multimap_server_msgs::LoadEnvironmentsRequest
  (:response () (instance multimap_server_msgs::LoadEnvironmentsResponse :init)))

(setf (get multimap_server_msgs::LoadEnvironmentsRequest :md5sum-) "f9c07b944bb09f9a6818d9b28b6141ea")
(setf (get multimap_server_msgs::LoadEnvironmentsRequest :datatype-) "multimap_server_msgs/LoadEnvironmentsRequest")
(setf (get multimap_server_msgs::LoadEnvironmentsRequest :definition-)
      "string environments_url
---
bool success
string msg

")

(setf (get multimap_server_msgs::LoadEnvironmentsResponse :md5sum-) "f9c07b944bb09f9a6818d9b28b6141ea")
(setf (get multimap_server_msgs::LoadEnvironmentsResponse :datatype-) "multimap_server_msgs/LoadEnvironmentsResponse")
(setf (get multimap_server_msgs::LoadEnvironmentsResponse :definition-)
      "string environments_url
---
bool success
string msg

")



(provide :multimap_server_msgs/LoadEnvironments "f9c07b944bb09f9a6818d9b28b6141ea")


