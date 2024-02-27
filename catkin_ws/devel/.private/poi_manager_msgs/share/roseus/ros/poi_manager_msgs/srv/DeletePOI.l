;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::DeletePOI)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'DeletePOI (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::DELETEPOI")
  (make-package "POI_MANAGER_MSGS::DELETEPOI"))
(unless (find-package "POI_MANAGER_MSGS::DELETEPOIREQUEST")
  (make-package "POI_MANAGER_MSGS::DELETEPOIREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::DELETEPOIRESPONSE")
  (make-package "POI_MANAGER_MSGS::DELETEPOIRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::DeletePOIRequest
  :super ros::object
  :slots (_name _environment ))

(defmethod poi_manager_msgs::DeletePOIRequest
  (:init
   (&key
    ((:name __name) "")
    ((:environment __environment) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _environment (string __environment))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _environment
    4 (length _environment)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass poi_manager_msgs::DeletePOIResponse
  :super ros::object
  :slots (_success _message ))

(defmethod poi_manager_msgs::DeletePOIResponse
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

(defclass poi_manager_msgs::DeletePOI
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::DeletePOI :md5sum-) "f16ad5d167b1082eb672599a51de5cbb")
(setf (get poi_manager_msgs::DeletePOI :datatype-) "poi_manager_msgs/DeletePOI")
(setf (get poi_manager_msgs::DeletePOI :request) poi_manager_msgs::DeletePOIRequest)
(setf (get poi_manager_msgs::DeletePOI :response) poi_manager_msgs::DeletePOIResponse)

(defmethod poi_manager_msgs::DeletePOIRequest
  (:response () (instance poi_manager_msgs::DeletePOIResponse :init)))

(setf (get poi_manager_msgs::DeletePOIRequest :md5sum-) "f16ad5d167b1082eb672599a51de5cbb")
(setf (get poi_manager_msgs::DeletePOIRequest :datatype-) "poi_manager_msgs/DeletePOIRequest")
(setf (get poi_manager_msgs::DeletePOIRequest :definition-)
      "string name
string environment
---
bool success
string message
")

(setf (get poi_manager_msgs::DeletePOIResponse :md5sum-) "f16ad5d167b1082eb672599a51de5cbb")
(setf (get poi_manager_msgs::DeletePOIResponse :datatype-) "poi_manager_msgs/DeletePOIResponse")
(setf (get poi_manager_msgs::DeletePOIResponse :definition-)
      "string name
string environment
---
bool success
string message
")



(provide :poi_manager_msgs/DeletePOI "f16ad5d167b1082eb672599a51de5cbb")


