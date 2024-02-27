;; Auto-generated. Do not edit!


(when (boundp 'robotnik_base_hw_sim::PickState)
  (if (not (find-package "ROBOTNIK_BASE_HW_SIM"))
    (make-package "ROBOTNIK_BASE_HW_SIM"))
  (shadow 'PickState (find-package "ROBOTNIK_BASE_HW_SIM")))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PICKSTATE")
  (make-package "ROBOTNIK_BASE_HW_SIM::PICKSTATE"))

(in-package "ROS")
;;//! \htmlinclude PickState.msg.html


(defclass robotnik_base_hw_sim::PickState
  :super ros::object
  :slots (_id _robot_link _object_link ))

(defmethod robotnik_base_hw_sim::PickState
  (:init
   (&key
    ((:id __id) "")
    ((:robot_link __robot_link) "")
    ((:object_link __object_link) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _robot_link (string __robot_link))
   (setq _object_link (string __object_link))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:robot_link
   (&optional __robot_link)
   (if __robot_link (setq _robot_link __robot_link)) _robot_link)
  (:object_link
   (&optional __object_link)
   (if __object_link (setq _object_link __object_link)) _object_link)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _robot_link
    4 (length _robot_link)
    ;; string _object_link
    4 (length _object_link)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _robot_link
       (write-long (length _robot_link) s) (princ _robot_link s)
     ;; string _object_link
       (write-long (length _object_link) s) (princ _object_link s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_base_hw_sim::PickState :md5sum-) "32d0a87c73c7ac6e9560c3de9aff0951")
(setf (get robotnik_base_hw_sim::PickState :datatype-) "robotnik_base_hw_sim/PickState")
(setf (get robotnik_base_hw_sim::PickState :definition-)
      "string id
string robot_link
string object_link
")



(provide :robotnik_base_hw_sim/PickState "32d0a87c73c7ac6e9560c3de9aff0951")


