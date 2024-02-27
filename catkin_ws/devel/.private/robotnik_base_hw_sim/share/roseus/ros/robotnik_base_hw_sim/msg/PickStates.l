;; Auto-generated. Do not edit!


(when (boundp 'robotnik_base_hw_sim::PickStates)
  (if (not (find-package "ROBOTNIK_BASE_HW_SIM"))
    (make-package "ROBOTNIK_BASE_HW_SIM"))
  (shadow 'PickStates (find-package "ROBOTNIK_BASE_HW_SIM")))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PICKSTATES")
  (make-package "ROBOTNIK_BASE_HW_SIM::PICKSTATES"))

(in-package "ROS")
;;//! \htmlinclude PickStates.msg.html


(defclass robotnik_base_hw_sim::PickStates
  :super ros::object
  :slots (_picks ))

(defmethod robotnik_base_hw_sim::PickStates
  (:init
   (&key
    ((:picks __picks) (let (r) (dotimes (i 0) (push (instance robotnik_base_hw_sim::PickState :init) r)) r))
    )
   (send-super :init)
   (setq _picks __picks)
   self)
  (:picks
   (&rest __picks)
   (if (keywordp (car __picks))
       (send* _picks __picks)
     (progn
       (if __picks (setq _picks (car __picks)))
       _picks)))
  (:serialization-length
   ()
   (+
    ;; robotnik_base_hw_sim/PickState[] _picks
    (apply #'+ (send-all _picks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_base_hw_sim/PickState[] _picks
     (write-long (length _picks) s)
     (dolist (elem _picks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_base_hw_sim/PickState[] _picks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _picks (let (r) (dotimes (i n) (push (instance robotnik_base_hw_sim::PickState :init) r)) r))
     (dolist (elem- _picks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_base_hw_sim::PickStates :md5sum-) "a5959bc2f0ba4465d7d86c50b3f3f894")
(setf (get robotnik_base_hw_sim::PickStates :datatype-) "robotnik_base_hw_sim/PickStates")
(setf (get robotnik_base_hw_sim::PickStates :definition-)
      "# List of current picks
PickState[] picks
================================================================================
MSG: robotnik_base_hw_sim/PickState
string id
string robot_link
string object_link
")



(provide :robotnik_base_hw_sim/PickStates "a5959bc2f0ba4465d7d86c50b3f3f894")


