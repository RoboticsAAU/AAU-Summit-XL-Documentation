;; Auto-generated. Do not edit!


(when (boundp 'robotnik_rms_msgs::mission)
  (if (not (find-package "ROBOTNIK_RMS_MSGS"))
    (make-package "ROBOTNIK_RMS_MSGS"))
  (shadow 'mission (find-package "ROBOTNIK_RMS_MSGS")))
(unless (find-package "ROBOTNIK_RMS_MSGS::MISSION")
  (make-package "ROBOTNIK_RMS_MSGS::MISSION"))

(in-package "ROS")
;;//! \htmlinclude mission.msg.html


(defclass robotnik_rms_msgs::mission
  :super ros::object
  :slots (_name_mission _id_mission _description _actions ))

(defmethod robotnik_rms_msgs::mission
  (:init
   (&key
    ((:name_mission __name_mission) "")
    ((:id_mission __id_mission) 0)
    ((:description __description) "")
    ((:actions __actions) (let (r) (dotimes (i 0) (push (instance robotnik_rms_msgs::action :init) r)) r))
    )
   (send-super :init)
   (setq _name_mission (string __name_mission))
   (setq _id_mission (round __id_mission))
   (setq _description (string __description))
   (setq _actions __actions)
   self)
  (:name_mission
   (&optional __name_mission)
   (if __name_mission (setq _name_mission __name_mission)) _name_mission)
  (:id_mission
   (&optional __id_mission)
   (if __id_mission (setq _id_mission __id_mission)) _id_mission)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; string _name_mission
    4 (length _name_mission)
    ;; int32 _id_mission
    4
    ;; string _description
    4 (length _description)
    ;; robotnik_rms_msgs/action[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name_mission
       (write-long (length _name_mission) s) (princ _name_mission s)
     ;; int32 _id_mission
       (write-long _id_mission s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; robotnik_rms_msgs/action[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name_mission
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_mission (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id_mission
     (setq _id_mission (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robotnik_rms_msgs/action[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance robotnik_rms_msgs::action :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_rms_msgs::mission :md5sum-) "78cd14bad56ac69e0a4b2c9b5cf0cce1")
(setf (get robotnik_rms_msgs::mission :datatype-) "robotnik_rms_msgs/mission")
(setf (get robotnik_rms_msgs::mission :definition-)
      "string name_mission
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



(provide :robotnik_rms_msgs/mission "78cd14bad56ac69e0a4b2c9b5cf0cce1")


