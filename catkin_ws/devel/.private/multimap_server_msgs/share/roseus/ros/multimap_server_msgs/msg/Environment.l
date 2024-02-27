;; Auto-generated. Do not edit!


(when (boundp 'multimap_server_msgs::Environment)
  (if (not (find-package "MULTIMAP_SERVER_MSGS"))
    (make-package "MULTIMAP_SERVER_MSGS"))
  (shadow 'Environment (find-package "MULTIMAP_SERVER_MSGS")))
(unless (find-package "MULTIMAP_SERVER_MSGS::ENVIRONMENT")
  (make-package "MULTIMAP_SERVER_MSGS::ENVIRONMENT"))

(in-package "ROS")
;;//! \htmlinclude Environment.msg.html


(defclass multimap_server_msgs::Environment
  :super ros::object
  :slots (_name _global_frame _map_name ))

(defmethod multimap_server_msgs::Environment
  (:init
   (&key
    ((:name __name) "")
    ((:global_frame __global_frame) "")
    ((:map_name __map_name) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _global_frame (string __global_frame))
   (setq _map_name __map_name)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:global_frame
   (&optional __global_frame)
   (if __global_frame (setq _global_frame __global_frame)) _global_frame)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _global_frame
    4 (length _global_frame)
    ;; string[] _map_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_name)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _global_frame
       (write-long (length _global_frame) s) (princ _global_frame s)
     ;; string[] _map_name
     (write-long (length _map_name) s)
     (dolist (elem _map_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _global_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _global_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _map_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get multimap_server_msgs::Environment :md5sum-) "aa9611ef212559f86614fff37385ab6a")
(setf (get multimap_server_msgs::Environment :datatype-) "multimap_server_msgs/Environment")
(setf (get multimap_server_msgs::Environment :definition-)
      "string name
string global_frame
string[] map_name

")



(provide :multimap_server_msgs/Environment "aa9611ef212559f86614fff37385ab6a")


