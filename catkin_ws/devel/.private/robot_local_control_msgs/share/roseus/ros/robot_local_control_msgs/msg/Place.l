;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::Place)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'Place (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::PLACE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::PLACE"))

(in-package "ROS")
;;//! \htmlinclude Place.msg.html


(defclass robot_local_control_msgs::Place
  :super ros::object
  :slots (_pick_frame_id ))

(defmethod robot_local_control_msgs::Place
  (:init
   (&key
    ((:pick_frame_id __pick_frame_id) "")
    )
   (send-super :init)
   (setq _pick_frame_id (string __pick_frame_id))
   self)
  (:pick_frame_id
   (&optional __pick_frame_id)
   (if __pick_frame_id (setq _pick_frame_id __pick_frame_id)) _pick_frame_id)
  (:serialization-length
   ()
   (+
    ;; string _pick_frame_id
    4 (length _pick_frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pick_frame_id
       (write-long (length _pick_frame_id) s) (princ _pick_frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pick_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pick_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::Place :md5sum-) "39794562465f5c9f200e6d805267c9b2")
(setf (get robot_local_control_msgs::Place :datatype-) "robot_local_control_msgs/Place")
(setf (get robot_local_control_msgs::Place :definition-)
      "string pick_frame_id # object, represented by its frame, that is to be picked

")



(provide :robot_local_control_msgs/Place "39794562465f5c9f200e6d805267c9b2")


