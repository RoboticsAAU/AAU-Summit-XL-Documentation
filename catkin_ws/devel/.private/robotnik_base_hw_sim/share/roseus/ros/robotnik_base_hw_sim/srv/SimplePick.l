;; Auto-generated. Do not edit!


(when (boundp 'robotnik_base_hw_sim::SimplePick)
  (if (not (find-package "ROBOTNIK_BASE_HW_SIM"))
    (make-package "ROBOTNIK_BASE_HW_SIM"))
  (shadow 'SimplePick (find-package "ROBOTNIK_BASE_HW_SIM")))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPICK")
  (make-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPICK"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPICKREQUEST")
  (make-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPICKREQUEST"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPICKRESPONSE")
  (make-package "ROBOTNIK_BASE_HW_SIM::SIMPLEPICKRESPONSE"))

(in-package "ROS")





(defclass robotnik_base_hw_sim::SimplePickRequest
  :super ros::object
  :slots (_robot_model ))

(defmethod robotnik_base_hw_sim::SimplePickRequest
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

(defclass robotnik_base_hw_sim::SimplePickResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod robotnik_base_hw_sim::SimplePickResponse
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

(defclass robotnik_base_hw_sim::SimplePick
  :super ros::object
  :slots ())

(setf (get robotnik_base_hw_sim::SimplePick :md5sum-) "95799f2d58893c79e6082b9161169c3b")
(setf (get robotnik_base_hw_sim::SimplePick :datatype-) "robotnik_base_hw_sim/SimplePick")
(setf (get robotnik_base_hw_sim::SimplePick :request) robotnik_base_hw_sim::SimplePickRequest)
(setf (get robotnik_base_hw_sim::SimplePick :response) robotnik_base_hw_sim::SimplePickResponse)

(defmethod robotnik_base_hw_sim::SimplePickRequest
  (:response () (instance robotnik_base_hw_sim::SimplePickResponse :init)))

(setf (get robotnik_base_hw_sim::SimplePickRequest :md5sum-) "95799f2d58893c79e6082b9161169c3b")
(setf (get robotnik_base_hw_sim::SimplePickRequest :datatype-) "robotnik_base_hw_sim/SimplePickRequest")
(setf (get robotnik_base_hw_sim::SimplePickRequest :definition-)
      "# Picks closes object
string robot_model
---
bool success
string msg

")

(setf (get robotnik_base_hw_sim::SimplePickResponse :md5sum-) "95799f2d58893c79e6082b9161169c3b")
(setf (get robotnik_base_hw_sim::SimplePickResponse :datatype-) "robotnik_base_hw_sim/SimplePickResponse")
(setf (get robotnik_base_hw_sim::SimplePickResponse :definition-)
      "# Picks closes object
string robot_model
---
bool success
string msg

")



(provide :robotnik_base_hw_sim/SimplePick "95799f2d58893c79e6082b9161169c3b")


