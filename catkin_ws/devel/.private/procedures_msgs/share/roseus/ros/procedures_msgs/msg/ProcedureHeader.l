;; Auto-generated. Do not edit!


(when (boundp 'procedures_msgs::ProcedureHeader)
  (if (not (find-package "PROCEDURES_MSGS"))
    (make-package "PROCEDURES_MSGS"))
  (shadow 'ProcedureHeader (find-package "PROCEDURES_MSGS")))
(unless (find-package "PROCEDURES_MSGS::PROCEDUREHEADER")
  (make-package "PROCEDURES_MSGS::PROCEDUREHEADER"))

(in-package "ROS")
;;//! \htmlinclude ProcedureHeader.msg.html


(defclass procedures_msgs::ProcedureHeader
  :super ros::object
  :slots (_id _priority _stamp _name ))

(defmethod procedures_msgs::ProcedureHeader
  (:init
   (&key
    ((:id __id) 0)
    ((:priority __priority) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:name __name) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _priority (round __priority))
   (setq _stamp __stamp)
   (setq _name (string __name))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _priority
    4
    ;; time _stamp
    8
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _priority
       (write-long _priority s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get procedures_msgs::ProcedureHeader :md5sum-) "493985fca0cdb1fdc9c962db09efe534")
(setf (get procedures_msgs::ProcedureHeader :datatype-) "procedures_msgs/ProcedureHeader")
(setf (get procedures_msgs::ProcedureHeader :definition-)
      "# id: identifies the procedure in the robot context.
# user should do not set this, but the proceduremanager
# TODO: may be replaced with uuid_msgs/UniqueID.
int32 id
# priority: priority of the current procedure. used in case procedure preemption is allowed
int32 priority
# stamp: timestamp when procedure was started.
# may be used by the procedure manager.
time stamp
# name: human readable identificator.
# set by the user, can be empty
# not used by the procedure manager to identify the procedure
string name

")



(provide :procedures_msgs/ProcedureHeader "493985fca0cdb1fdc9c962db09efe534")


