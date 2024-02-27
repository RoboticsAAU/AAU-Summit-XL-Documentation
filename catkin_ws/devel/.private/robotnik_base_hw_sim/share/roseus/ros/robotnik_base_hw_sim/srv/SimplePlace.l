;; Auto-generated. Do not edit!


(when (boundp 'robotnik_base_hw_sim::SimplePlace)
  (if (not (find-package "ROBOTNIK_BASE_HW_SIM"))
    (make-package "ROBOTNIK_BASE_HW_SIM"))
  (shadow 'SimplePlace (find-package "ROBOTNIK_BASE_HW_SIM")))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPLACE")
  (make-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPLACE"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPLACEREQUEST")
  (make-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPLACEREQUEST"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPLACERESPONSE")
  (make-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPLACERESPONSE"))

(in-package "ROS")





(defclass robotnik_base_hw_sim::SimplePlaceRequest
  :super ros::object
  :slots (_robot_model ))

(defmethod robotnik_base_hw_sim::SimplePlaceRequest
  (:init
   (&key
    ((:robot_model __robot_model) "")
    )
   (send-super :init)
   (setq _robot_model (string __robot_model))
   self)
  (:robot_model
   (&optional __robot_model)
   (if __robot_model (setq _robot_model __robot_model)) _robot_model)
  (:serialization-length
   ()
   (+
    ;; string _robot_model
    4 (length _robot_model)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_model
       (write-long (length _robot_model) s) (princ _robot_model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_base_hw_sim::SimplePlaceResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod robotnik_base_hw_sim::SimplePlaceResponse
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

(defclass robotnik_base_hw_sim::SimplePlace
  :super ros::object
  :slots ())

(setf (get robotnik_base_hw_sim::SimplePlace :md5sum-) "95799f2d58893c79e6082b9161169c3b")
(setf (get robotnik_base_hw_sim::SimplePlace :datatype-) "robotnik_base_hw_sim/SimplePlace")
(setf (get robotnik_base_hw_sim::SimplePlace :request) robotnik_base_hw_sim::SimplePlaceRequest)
(setf (get robotnik_base_hw_sim::SimplePlace :response) robotnik_base_hw_sim::SimplePlaceResponse)

(defmethod robotnik_base_hw_sim::SimplePlaceRequest
  (:response () (instance robotnik_base_hw_sim::SimplePlaceResponse :init)))

(setf (get robotnik_base_hw_sim::SimplePlaceRequest :md5sum-) "95799f2d58893c79e6082b9161169c3b")
(setf (get robotnik_base_hw_sim::SimplePlaceRequest :datatype-) "robotnik_base_hw_sim/SimplePlaceRequest")
(setf (get robotnik_base_hw_sim::SimplePlaceRequest :definition-)
      "# gazebo robot model 
string robot_model
---
bool success
string msg

")

(setf (get robotnik_base_hw_sim::SimplePlaceResponse :md5sum-) "95799f2d58893c79e6082b9161169c3b")
(setf (get robotnik_base_hw_sim::SimplePlaceResponse :datatype-) "robotnik_base_hw_sim/SimplePlaceResponse")
(setf (get robotnik_base_hw_sim::SimplePlaceResponse :definition-)
      "# gazebo robot model 
string robot_model
---
bool success
string msg

")



(provide :robotnik_base_hw_sim/SimplePlace "95799f2d58893c79e6082b9161169c3b")


