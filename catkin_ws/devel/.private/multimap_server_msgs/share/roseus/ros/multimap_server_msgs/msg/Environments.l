;; Auto-generated. Do not edit!


(when (boundp 'multimap_server_msgs::Environments)
  (if (not (find-package "MULTIMAP_SERVER_MSGS"))
    (make-package "MULTIMAP_SERVER_MSGS"))
  (shadow 'Environments (find-package "MULTIMAP_SERVER_MSGS")))
(unless (find-package "MULTIMAP_SERVER_MSGS::ENVIRONMENTS")
  (make-package "MULTIMAP_SERVER_MSGS::ENVIRONMENTS"))

(in-package "ROS")
;;//! \htmlinclude Environments.msg.html


(defclass multimap_server_msgs::Environments
  :super ros::object
  :slots (_environments ))

(defmethod multimap_server_msgs::Environments
  (:init
   (&key
    ((:environments __environments) (let (r) (dotimes (i 0) (push (instance multimap_server_msgs::Environment :init) r)) r))
    )
   (send-super :init)
   (setq _environments __environments)
   self)
  (:environments
   (&rest __environments)
   (if (keywordp (car __environments))
       (send* _environments __environments)
     (progn
       (if __environments (setq _environments (car __environments)))
       _environments)))
  (:serialization-length
   ()
   (+
    ;; multimap_server_msgs/Environment[] _environments
    (apply #'+ (send-all _environments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; multimap_server_msgs/Environment[] _environments
     (write-long (length _environments) s)
     (dolist (elem _environments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; multimap_server_msgs/Environment[] _environments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _environments (let (r) (dotimes (i n) (push (instance multimap_server_msgs::Environment :init) r)) r))
     (dolist (elem- _environments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multimap_server_msgs::Environments :md5sum-) "a38a933443cfbee1aab1953a7c63dd5d")
(setf (get multimap_server_msgs::Environments :datatype-) "multimap_server_msgs/Environments")
(setf (get multimap_server_msgs::Environments :definition-)
      "Environment[] environments

================================================================================
MSG: multimap_server_msgs/Environment
string name
string global_frame
string[] map_name

")



(provide :multimap_server_msgs/Environments "a38a933443cfbee1aab1953a7c63dd5d")


