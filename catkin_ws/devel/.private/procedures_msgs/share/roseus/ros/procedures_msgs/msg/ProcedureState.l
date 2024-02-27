;; Auto-generated. Do not edit!


(when (boundp 'procedures_msgs::ProcedureState)
  (if (not (find-package "PROCEDURES_MSGS"))
    (make-package "PROCEDURES_MSGS"))
  (shadow 'ProcedureState (find-package "PROCEDURES_MSGS")))
(unless (find-package "PROCEDURES_MSGS::PROCEDURESTATE")
  (make-package "PROCEDURES_MSGS::PROCEDURESTATE"))

(in-package "ROS")
;;//! \htmlinclude ProcedureState.msg.html


(intern "*QUEUED*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*QUEUED* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*QUEUED* "queued")
(intern "*RUNNING*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*RUNNING* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*RUNNING* "running")
(intern "*PAUSED*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*PAUSED* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*PAUSED* "paused")
(intern "*FINISHED*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*FINISHED* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*FINISHED* "finished")
(intern "*ADDED*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*ADDED* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*ADDED* "added")
(intern "*START*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*START* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*START* "start")
(intern "*STOP*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*STOP* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*STOP* "stop")
(intern "*CANCEL*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*CANCEL* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*CANCEL* "cancel")
(intern "*PAUSE*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*PAUSE* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*PAUSE* "pause")
(intern "*RESUME*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*RESUME* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*RESUME* "resume")
(intern "*FINISH*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*FINISH* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*FINISH* "finish")
(intern "*ABORT*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*ABORT* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*ABORT* "abort")
(intern "*UNKNOWN*" (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(shadow '*UNKNOWN* (find-package "PROCEDURES_MSGS::PROCEDURESTATE"))
(defconstant procedures_msgs::ProcedureState::*UNKNOWN* "unknown")
(defclass procedures_msgs::ProcedureState
  :super ros::object
  :slots (_header _current_state _last_event ))

(defmethod procedures_msgs::ProcedureState
  (:init
   (&key
    ((:header __header) (instance procedures_msgs::ProcedureHeader :init))
    ((:current_state __current_state) "")
    ((:last_event __last_event) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_state (string __current_state))
   (setq _last_event (string __last_event))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_state
   (&optional __current_state)
   (if __current_state (setq _current_state __current_state)) _current_state)
  (:last_event
   (&optional __last_event)
   (if __last_event (setq _last_event __last_event)) _last_event)
  (:serialization-length
   ()
   (+
    ;; procedures_msgs/ProcedureHeader _header
    (send _header :serialization-length)
    ;; string _current_state
    4 (length _current_state)
    ;; string _last_event
    4 (length _last_event)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; procedures_msgs/ProcedureHeader _header
       (send _header :serialize s)
     ;; string _current_state
       (write-long (length _current_state) s) (princ _current_state s)
     ;; string _last_event
       (write-long (length _last_event) s) (princ _last_event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; procedures_msgs/ProcedureHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _current_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _last_event
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_event (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get procedures_msgs::ProcedureState :md5sum-) "6979cad7e83ce5406a65ccecf3686f85")
(setf (get procedures_msgs::ProcedureState :datatype-) "procedures_msgs/ProcedureState")
(setf (get procedures_msgs::ProcedureState :definition-)
      "# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message
string QUEUED=queued
string RUNNING=running
string PAUSED=paused
string FINISHED=finished

# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message
# events triggered from outside
string ADDED=added
string START=start
string STOP=stop
string CANCEL=cancel
string PAUSE=pause
string RESUME=resume
# self triggered events
string FINISH=finish
string ABORT=abort

# additionally, both state and event can be UNKNOW
string UNKNOWN=unknown

ProcedureHeader header
string current_state
string last_event

================================================================================
MSG: procedures_msgs/ProcedureHeader
# id: identifies the procedure in the robot context.
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



(provide :procedures_msgs/ProcedureState "6979cad7e83ce5406a65ccecf3686f85")


