;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::GoToTag)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'GoToTag (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOTAG")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::GOTOTAG"))

(in-package "ROS")
;;//! \htmlinclude GoToTag.msg.html


(defclass robot_local_control_msgs::GoToTag
  :super ros::object
  :slots (_tag_name ))

(defmethod robot_local_control_msgs::GoToTag
  (:init
   (&key
    ((:tag_name __tag_name) "")
    )
   (send-super :init)
   (setq _tag_name (string __tag_name))
   self)
  (:tag_name
   (&optional __tag_name)
   (if __tag_name (setq _tag_name __tag_name)) _tag_name)
  (:serialization-length
   ()
   (+
    ;; string _tag_name
    4 (length _tag_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tag_name
       (write-long (length _tag_name) s) (princ _tag_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tag_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tag_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::GoToTag :md5sum-) "64fe6f350e21c129c2de5c718c8c8ea0")
(setf (get robot_local_control_msgs::GoToTag :datatype-) "robot_local_control_msgs/GoToTag")
(setf (get robot_local_control_msgs::GoToTag :definition-)
      "string tag_name

")



(provide :robot_local_control_msgs/GoToTag "64fe6f350e21c129c2de5c718c8c8ea0")


