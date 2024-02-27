;; Auto-generated. Do not edit!


(when (boundp 'robot_simple_command_manager_msgs::GetHandlerInfo)
  (if (not (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
    (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS"))
  (shadow 'GetHandlerInfo (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS")))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERINFO")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERINFO"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERINFOREQUEST")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERINFOREQUEST"))
(unless (find-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERINFORESPONSE")
  (make-package "ROBOT_SIMPLE_COMMAND_MANAGER_MSGS::GETHANDLERINFORESPONSE"))

(in-package "ROS")





(defclass robot_simple_command_manager_msgs::GetHandlerInfoRequest
  :super ros::object
  :slots (_name ))

(defmethod robot_simple_command_manager_msgs::GetHandlerInfoRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::GetHandlerInfoResponse
  :super ros::object
  :slots (_success _description _types ))

(defmethod robot_simple_command_manager_msgs::GetHandlerInfoResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:description __description) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:types __types) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _description __description)
   (setq _types __types)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:types
   (&optional __types)
   (if __types (setq _types __types)) _types)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string[] _description
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _description)) 4
    ;; string[] _types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _types)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string[] _description
     (write-long (length _description) s)
     (dolist (elem _description)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _description
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _description (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _description i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robot_simple_command_manager_msgs::GetHandlerInfo
  :super ros::object
  :slots ())

(setf (get robot_simple_command_manager_msgs::GetHandlerInfo :md5sum-) "5255a97f7f207306f16086ffc767a36b")
(setf (get robot_simple_command_manager_msgs::GetHandlerInfo :datatype-) "robot_simple_command_manager_msgs/GetHandlerInfo")
(setf (get robot_simple_command_manager_msgs::GetHandlerInfo :request) robot_simple_command_manager_msgs::GetHandlerInfoRequest)
(setf (get robot_simple_command_manager_msgs::GetHandlerInfo :response) robot_simple_command_manager_msgs::GetHandlerInfoResponse)

(defmethod robot_simple_command_manager_msgs::GetHandlerInfoRequest
  (:response () (instance robot_simple_command_manager_msgs::GetHandlerInfoResponse :init)))

(setf (get robot_simple_command_manager_msgs::GetHandlerInfoRequest :md5sum-) "5255a97f7f207306f16086ffc767a36b")
(setf (get robot_simple_command_manager_msgs::GetHandlerInfoRequest :datatype-) "robot_simple_command_manager_msgs/GetHandlerInfoRequest")
(setf (get robot_simple_command_manager_msgs::GetHandlerInfoRequest :definition-)
      "string name
---
bool success
string[] description
string[] types

")

(setf (get robot_simple_command_manager_msgs::GetHandlerInfoResponse :md5sum-) "5255a97f7f207306f16086ffc767a36b")
(setf (get robot_simple_command_manager_msgs::GetHandlerInfoResponse :datatype-) "robot_simple_command_manager_msgs/GetHandlerInfoResponse")
(setf (get robot_simple_command_manager_msgs::GetHandlerInfoResponse :definition-)
      "string name
---
bool success
string[] description
string[] types

")



(provide :robot_simple_command_manager_msgs/GetHandlerInfo "5255a97f7f207306f16086ffc767a36b")


