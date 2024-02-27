;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::NavigationStatus)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'NavigationStatus (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavigationStatus.msg.html


(intern "*NAVIGATION_TYPE_NONE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_TYPE_NONE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_TYPE_NONE* "none")
(intern "*NAVIGATION_TYPE_1*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_TYPE_1* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_TYPE_1* "1")
(intern "*NAVIGATION_TYPE_2*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_TYPE_2* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_TYPE_2* "2")
(intern "*NAVIGATION_TYPE_3*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_TYPE_3* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_TYPE_3* "3")
(intern "*NAVIGATION_STATE_INIT*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_STATE_INIT* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_STATE_INIT* "init")
(intern "*NAVIGATION_STATE_STANDBY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_STATE_STANDBY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_STATE_STANDBY* "standby")
(intern "*NAVIGATION_STATE_READY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_STATE_READY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_STATE_READY* "ready")
(intern "*NAVIGATION_STATE_EMERGENCY*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_STATE_EMERGENCY* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_STATE_EMERGENCY* "emergency")
(intern "*NAVIGATION_STATE_FAILURE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(shadow '*NAVIGATION_STATE_FAILURE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::NAVIGATIONSTATUS"))
(defconstant robot_local_control_msgs::NavigationStatus::*NAVIGATION_STATE_FAILURE* "failure")
(defclass robot_local_control_msgs::NavigationStatus
  :super ros::object
  :slots (_type _state ))

(defmethod robot_local_control_msgs::NavigationStatus
  (:init
   (&key
    ((:type __type) "")
    ((:state __state) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _state (string __state))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::NavigationStatus :md5sum-) "c5c9b34f80bcdaf33edc1d8103d13065")
(setf (get robot_local_control_msgs::NavigationStatus :datatype-) "robot_local_control_msgs/NavigationStatus")
(setf (get robot_local_control_msgs::NavigationStatus :definition-)
      "# type of navigation package/algorithm currently used
string NAVIGATION_TYPE_NONE=none
# move_base
string NAVIGATION_TYPE_1=1
# purepursuit
string NAVIGATION_TYPE_2=2
# Dock
string NAVIGATION_TYPE_3=3 

# state of the navigation node running
string NAVIGATION_STATE_INIT=init
string NAVIGATION_STATE_STANDBY=standby
string NAVIGATION_STATE_READY=ready
string NAVIGATION_STATE_EMERGENCY=emergency
string NAVIGATION_STATE_FAILURE=failure

# Navigation algorithm being used
string type

# INIT, READY, EMERGENCY, FAILURE
string state

")



(provide :robot_local_control_msgs/NavigationStatus "c5c9b34f80bcdaf33edc1d8103d13065")


