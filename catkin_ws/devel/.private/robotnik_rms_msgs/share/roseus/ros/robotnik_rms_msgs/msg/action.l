;; Auto-generated. Do not edit!


(when (boundp 'robotnik_rms_msgs::action)
  (if (not (find-package "ROBOTNIK_RMS_MSGS"))
    (make-package "ROBOTNIK_RMS_MSGS"))
  (shadow 'action (find-package "ROBOTNIK_RMS_MSGS")))
(unless (find-package "ROBOTNIK_RMS_MSGS::ACTION")
  (make-package "ROBOTNIK_RMS_MSGS::ACTION"))

(in-package "ROS")
;;//! \htmlinclude action.msg.html


(defclass robotnik_rms_msgs::action
  :super ros::object
  :slots (_type_action _id_action _name_action _description ))

(defmethod robotnik_rms_msgs::action
  (:init
   (&key
    ((:type_action __type_action) 0)
    ((:id_action __id_action) "")
    ((:name_action __name_action) "")
    ((:description __description) "")
    )
   (send-super :init)
   (setq _type_action (round __type_action))
   (setq _id_action (string __id_action))
   (setq _name_action (string __name_action))
   (setq _description (string __description))
   self)
  (:type_action
   (&optional __type_action)
   (if __type_action (setq _type_action __type_action)) _type_action)
  (:id_action
   (&optional __id_action)
   (if __id_action (setq _id_action __id_action)) _id_action)
  (:name_action
   (&optional __name_action)
   (if __name_action (setq _name_action __name_action)) _name_action)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; int32 _type_action
    4
    ;; string _id_action
    4 (length _id_action)
    ;; string _name_action
    4 (length _name_action)
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type_action
       (write-long _type_action s)
     ;; string _id_action
       (write-long (length _id_action) s) (princ _id_action s)
     ;; string _name_action
       (write-long (length _name_action) s) (princ _name_action s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type_action
     (setq _type_action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _id_action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id_action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name_action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_rms_msgs::action :md5sum-) "f34f90c37eb15fa05a08b918922af021")
(setf (get robotnik_rms_msgs::action :datatype-) "robotnik_rms_msgs/action")
(setf (get robotnik_rms_msgs::action :definition-)
      "
int32 type_action
string id_action
string name_action
string description

")



(provide :robotnik_rms_msgs/action "f34f90c37eb15fa05a08b918922af021")


