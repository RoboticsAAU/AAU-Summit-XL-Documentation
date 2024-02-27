;; Auto-generated. Do not edit!


(when (boundp 'robotnik_rms_msgs::getMissions)
  (if (not (find-package "ROBOTNIK_RMS_MSGS"))
    (make-package "ROBOTNIK_RMS_MSGS"))
  (shadow 'getMissions (find-package "ROBOTNIK_RMS_MSGS")))
(unless (find-package "ROBOTNIK_RMS_MSGS::GETMISSIONS")
  (make-package "ROBOTNIK_RMS_MSGS::GETMISSIONS"))
(unless (find-package "ROBOTNIK_RMS_MSGS::GETMISSIONSREQUEST")
  (make-package "ROBOTNIK_RMS_MSGS::GETMISSIONSREQUEST"))
(unless (find-package "ROBOTNIK_RMS_MSGS::GETMISSIONSRESPONSE")
  (make-package "ROBOTNIK_RMS_MSGS::GETMISSIONSRESPONSE"))

(in-package "ROS")





(defclass robotnik_rms_msgs::getMissionsRequest
  :super ros::object
  :slots ())

(defmethod robotnik_rms_msgs::getMissionsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robotnik_rms_msgs::getMissionsResponse
  :super ros::object
  :slots (_missions _success _message ))

(defmethod robotnik_rms_msgs::getMissionsResponse
  (:init
   (&key
    ((:missions __missions) (let (r) (dotimes (i 0) (push (instance robotnik_rms_msgs::mission :init) r)) r))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _missions __missions)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:missions
   (&rest __missions)
   (if (keywordp (car __missions))
       (send* _missions __missions)
     (progn
       (if __missions (setq _missions (car __missions)))
       _missions)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; robotnik_rms_msgs/mission[] _missions
    (apply #'+ (send-all _missions :serialization-length)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_rms_msgs/mission[] _missions
     (write-long (length _missions) s)
     (dolist (elem _missions)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_rms_msgs/mission[] _missions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _missions (let (r) (dotimes (i n) (push (instance robotnik_rms_msgs::mission :init) r)) r))
     (dolist (elem- _missions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_rms_msgs::getMissions
  :super ros::object
  :slots ())

(setf (get robotnik_rms_msgs::getMissions :md5sum-) "b76c60d5e61505e4ed284f030715b867")
(setf (get robotnik_rms_msgs::getMissions :datatype-) "robotnik_rms_msgs/getMissions")
(setf (get robotnik_rms_msgs::getMissions :request) robotnik_rms_msgs::getMissionsRequest)
(setf (get robotnik_rms_msgs::getMissions :response) robotnik_rms_msgs::getMissionsResponse)

(defmethod robotnik_rms_msgs::getMissionsRequest
  (:response () (instance robotnik_rms_msgs::getMissionsResponse :init)))

(setf (get robotnik_rms_msgs::getMissionsRequest :md5sum-) "b76c60d5e61505e4ed284f030715b867")
(setf (get robotnik_rms_msgs::getMissionsRequest :datatype-) "robotnik_rms_msgs/getMissionsRequest")
(setf (get robotnik_rms_msgs::getMissionsRequest :definition-)
      "---
robotnik_rms_msgs/mission[] missions
bool success
string message

================================================================================
MSG: robotnik_rms_msgs/mission
string name_mission
int32 id_mission
string description
robotnik_rms_msgs/action[] actions

================================================================================
MSG: robotnik_rms_msgs/action

int32 type_action
string id_action
string name_action
string description
")

(setf (get robotnik_rms_msgs::getMissionsResponse :md5sum-) "b76c60d5e61505e4ed284f030715b867")
(setf (get robotnik_rms_msgs::getMissionsResponse :datatype-) "robotnik_rms_msgs/getMissionsResponse")
(setf (get robotnik_rms_msgs::getMissionsResponse :definition-)
      "---
robotnik_rms_msgs/mission[] missions
bool success
string message

================================================================================
MSG: robotnik_rms_msgs/mission
string name_mission
int32 id_mission
string description
robotnik_rms_msgs/action[] actions

================================================================================
MSG: robotnik_rms_msgs/action

int32 type_action
string id_action
string name_action
string description
")



(provide :robotnik_rms_msgs/getMissions "b76c60d5e61505e4ed284f030715b867")


