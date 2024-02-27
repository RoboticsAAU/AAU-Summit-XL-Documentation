;; Auto-generated. Do not edit!


(when (boundp 'robotnik_base_hw_sim::Place)
  (if (not (find-package "ROBOTNIK_BASE_HW_SIM"))
    (make-package "ROBOTNIK_BASE_HW_SIM"))
  (shadow 'Place (find-package "ROBOTNIK_BASE_HW_SIM")))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PLACE")
  (make-package "ROBOTNIK_BASE_HW_SIM::PLACE"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PLACEREQUEST")
  (make-package "ROBOTNIK_BASE_HW_SIM::PLACEREQUEST"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PLACERESPONSE")
  (make-package "ROBOTNIK_BASE_HW_SIM::PLACERESPONSE"))

(in-package "ROS")





(defclass robotnik_base_hw_sim::PlaceRequest
  :super ros::object
  :slots (_object_model _robot_model ))

(defmethod robotnik_base_hw_sim::PlaceRequest
  (:init
   (&key
    ((:object_model __object_model) "")
    ((:robot_model __robot_model) "")
    )
   (send-super :init)
   (setq _object_model (string __object_model))
   (setq _robot_model (string __robot_model))
   self)
  (:object_model
   (&optional __object_model)
   (if __object_model (setq _object_model __object_model)) _object_model)
  (:robot_model
   (&optional __robot_model)
   (if __robot_model (setq _robot_model __robot_model)) _robot_model)
  (:serialization-length
   ()
   (+
    ;; string _object_model
    4 (length _object_model)
    ;; string _robot_model
    4 (length _robot_model)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_model
       (write-long (length _object_model) s) (princ _object_model s)
     ;; string _robot_model
       (write-long (length _robot_model) s) (princ _robot_model s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_base_hw_sim::PlaceResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod robotnik_base_hw_sim::PlaceResponse
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

(defclass robotnik_base_hw_sim::Place
  :super ros::object
  :slots ())

(setf (get robotnik_base_hw_sim::Place :md5sum-) "07bbfe2a52b1b081057b9ea660d0c474")
(setf (get robotnik_base_hw_sim::Place :datatype-) "robotnik_base_hw_sim/Place")
(setf (get robotnik_base_hw_sim::Place :request) robotnik_base_hw_sim::PlaceRequest)
(setf (get robotnik_base_hw_sim::Place :response) robotnik_base_hw_sim::PlaceResponse)

(defmethod robotnik_base_hw_sim::PlaceRequest
  (:response () (instance robotnik_base_hw_sim::PlaceResponse :init)))

(setf (get robotnik_base_hw_sim::PlaceRequest :md5sum-) "07bbfe2a52b1b081057b9ea660d0c474")
(setf (get robotnik_base_hw_sim::PlaceRequest :datatype-) "robotnik_base_hw_sim/PlaceRequest")
(setf (get robotnik_base_hw_sim::PlaceRequest :definition-)
      "# attach object link into robot link
# Links and models are refered to Gazebo
string object_model
string robot_model
---
bool success
string msg

")

(setf (get robotnik_base_hw_sim::PlaceResponse :md5sum-) "07bbfe2a52b1b081057b9ea660d0c474")
(setf (get robotnik_base_hw_sim::PlaceResponse :datatype-) "robotnik_base_hw_sim/PlaceResponse")
(setf (get robotnik_base_hw_sim::PlaceResponse :definition-)
      "# attach object link into robot link
# Links and models are refered to Gazebo
string object_model
string robot_model
---
bool success
string msg

")



(provide :robotnik_base_hw_sim/Place "07bbfe2a52b1b081057b9ea660d0c474")


