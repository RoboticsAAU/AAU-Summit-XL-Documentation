;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::GetEnvironments)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'GetEnvironments (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::GETENVIRONMENTS")
  (make-package "POI_MANAGER_MSGS::GETENVIRONMENTS"))
(unless (find-package "POI_MANAGER_MSGS::GETENVIRONMENTSREQUEST")
  (make-package "POI_MANAGER_MSGS::GETENVIRONMENTSREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::GETENVIRONMENTSRESPONSE")
  (make-package "POI_MANAGER_MSGS::GETENVIRONMENTSRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::GetEnvironmentsRequest
  :super ros::object
  :slots ())

(defmethod poi_manager_msgs::GetEnvironmentsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetEnvironmentsResponse
  :super ros::object
  :slots (_environments ))

(defmethod poi_manager_msgs::GetEnvironmentsResponse
  (:init
   (&key
    ((:environments __environments) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _environments __environments)
   self)
  (:environments
   (&optional __environments)
   (if __environments (setq _environments __environments)) _environments)
  (:serialization-length
   ()
   (+
    ;; string[] _environments
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _environments)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _environments
     (write-long (length _environments) s)
     (dolist (elem _environments)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _environments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _environments (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _environments i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetEnvironments
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::GetEnvironments :md5sum-) "8a31ffa69fc51dd8da4b6db62e868d0c")
(setf (get poi_manager_msgs::GetEnvironments :datatype-) "poi_manager_msgs/GetEnvironments")
(setf (get poi_manager_msgs::GetEnvironments :request) poi_manager_msgs::GetEnvironmentsRequest)
(setf (get poi_manager_msgs::GetEnvironments :response) poi_manager_msgs::GetEnvironmentsResponse)

(defmethod poi_manager_msgs::GetEnvironmentsRequest
  (:response () (instance poi_manager_msgs::GetEnvironmentsResponse :init)))

(setf (get poi_manager_msgs::GetEnvironmentsRequest :md5sum-) "8a31ffa69fc51dd8da4b6db62e868d0c")
(setf (get poi_manager_msgs::GetEnvironmentsRequest :datatype-) "poi_manager_msgs/GetEnvironmentsRequest")
(setf (get poi_manager_msgs::GetEnvironmentsRequest :definition-)
      "---
string[] environments
")

(setf (get poi_manager_msgs::GetEnvironmentsResponse :md5sum-) "8a31ffa69fc51dd8da4b6db62e868d0c")
(setf (get poi_manager_msgs::GetEnvironmentsResponse :datatype-) "poi_manager_msgs/GetEnvironmentsResponse")
(setf (get poi_manager_msgs::GetEnvironmentsResponse :definition-)
      "---
string[] environments
")



(provide :poi_manager_msgs/GetEnvironments "8a31ffa69fc51dd8da4b6db62e868d0c")


