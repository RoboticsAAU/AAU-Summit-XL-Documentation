;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GoToNode)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GoToNode (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTONODE"))

(in-package "ROS")
;;//! \htmlinclude GoToNode.msg.html


(defclass robot_local_control_msgs::GoToNode
  :super ros::object
  :slots (_node _orientation_offset _position_offset ))

(defmethod robot_local_control_msgs::GoToNode
  (:init
   (&key
    ((:node __node) 0)
    ((:orientation_offset __orientation_offset) 0.0)
    ((:position_offset __position_offset) 0.0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _orientation_offset (float __orientation_offset))
   (setq _position_offset (float __position_offset))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:orientation_offset
   (&optional __orientation_offset)
   (if __orientation_offset (setq _orientation_offset __orientation_offset)) _orientation_offset)
  (:position_offset
   (&optional __position_offset)
   (if __position_offset (setq _position_offset __position_offset)) _position_offset)
  (:serialization-length
   ()
   (+
    ;; uint16 _node
    2
    ;; float32 _orientation_offset
    4
    ;; float32 _position_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _node
       (write-word _node s)
     ;; float32 _orientation_offset
       (sys::poke _orientation_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_offset
       (sys::poke _position_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _node
     (setq _node (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _orientation_offset
     (setq _orientation_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_offset
     (setq _position_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_local_control_msgs::GoToNode :md5sum-) "509df8f1262ef6d589b41c15ff4e1f1c")
(setf (get robot_local_control_msgs::GoToNode :datatype-) "robot_local_control_msgs/GoToNode")
(setf (get robot_local_control_msgs::GoToNode :definition-)
      "uint16 node
float32 orientation_offset
float32 position_offset
")



(provide :robot_local_control_msgs/GoToNode "509df8f1262ef6d589b41c15ff4e1f1c")


