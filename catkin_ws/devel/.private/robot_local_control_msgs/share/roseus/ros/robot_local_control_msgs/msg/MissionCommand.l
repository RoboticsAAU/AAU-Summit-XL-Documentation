;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MissionCommand)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MissionCommand (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MissionCommand.msg.html


(intern "*GOTO_POSE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))
(shadow '*GOTO_POSE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))
(defconstant robot_local_control_msgs::MissionCommand::*GOTO_POSE* "goto_pose")
(intern "*GOTO_TAG*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))
(shadow '*GOTO_TAG* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))
(defconstant robot_local_control_msgs::MissionCommand::*GOTO_TAG* "goto_tag")
(intern "*GOTO_NODE*" (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))
(shadow '*GOTO_NODE* (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMAND"))
(defconstant robot_local_control_msgs::MissionCommand::*GOTO_NODE* "goto_node")
(defclass robot_local_control_msgs::MissionCommand
  :super ros::object
  :slots (_id _command _int_params _float_params _string_params _bool_params ))

(defmethod robot_local_control_msgs::MissionCommand
  (:init
   (&key
    ((:id __id) 0)
    ((:command __command) "")
    ((:int_params __int_params) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::MissionParamInt :init) r)) r))
    ((:float_params __float_params) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::MissionParamFloat :init) r)) r))
    ((:string_params __string_params) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::MissionParamString :init) r)) r))
    ((:bool_params __bool_params) (let (r) (dotimes (i 0) (push (instance robot_local_control_msgs::MissionParamBool :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _command (string __command))
   (setq _int_params __int_params)
   (setq _float_params __float_params)
   (setq _string_params __string_params)
   (setq _bool_params __bool_params)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:int_params
   (&rest __int_params)
   (if (keywordp (car __int_params))
       (send* _int_params __int_params)
     (progn
       (if __int_params (setq _int_params (car __int_params)))
       _int_params)))
  (:float_params
   (&rest __float_params)
   (if (keywordp (car __float_params))
       (send* _float_params __float_params)
     (progn
       (if __float_params (setq _float_params (car __float_params)))
       _float_params)))
  (:string_params
   (&rest __string_params)
   (if (keywordp (car __string_params))
       (send* _string_params __string_params)
     (progn
       (if __string_params (setq _string_params (car __string_params)))
       _string_params)))
  (:bool_params
   (&rest __bool_params)
   (if (keywordp (car __bool_params))
       (send* _bool_params __bool_params)
     (progn
       (if __bool_params (setq _bool_params (car __bool_params)))
       _bool_params)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _command
    4 (length _command)
    ;; robot_local_control_msgs/MissionParamInt[] _int_params
    (apply #'+ (send-all _int_params :serialization-length)) 4
    ;; robot_local_control_msgs/MissionParamFloat[] _float_params
    (apply #'+ (send-all _float_params :serialization-length)) 4
    ;; robot_local_control_msgs/MissionParamString[] _string_params
    (apply #'+ (send-all _string_params :serialization-length)) 4
    ;; robot_local_control_msgs/MissionParamBool[] _bool_params
    (apply #'+ (send-all _bool_params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; robot_local_control_msgs/MissionParamInt[] _int_params
     (write-long (length _int_params) s)
     (dolist (elem _int_params)
       (send elem :serialize s)
       )
     ;; robot_local_control_msgs/MissionParamFloat[] _float_params
     (write-long (length _float_params) s)
     (dolist (elem _float_params)
       (send elem :serialize s)
       )
     ;; robot_local_control_msgs/MissionParamString[] _string_params
     (write-long (length _string_params) s)
     (dolist (elem _string_params)
       (send elem :serialize s)
       )
     ;; robot_local_control_msgs/MissionParamBool[] _bool_params
     (write-long (length _bool_params) s)
     (dolist (elem _bool_params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robot_local_control_msgs/MissionParamInt[] _int_params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int_params (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::MissionParamInt :init) r)) r))
     (dolist (elem- _int_params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robot_local_control_msgs/MissionParamFloat[] _float_params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _float_params (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::MissionParamFloat :init) r)) r))
     (dolist (elem- _float_params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robot_local_control_msgs/MissionParamString[] _string_params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _string_params (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::MissionParamString :init) r)) r))
     (dolist (elem- _string_params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robot_local_control_msgs/MissionParamBool[] _bool_params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bool_params (let (r) (dotimes (i n) (push (instance robot_local_control_msgs::MissionParamBool :init) r)) r))
     (dolist (elem- _bool_params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MissionCommand :md5sum-) "c34ea7f130e34df4f5f94460596dd71a")
(setf (get robot_local_control_msgs::MissionCommand :datatype-) "robot_local_control_msgs/MissionCommand")
(setf (get robot_local_control_msgs::MissionCommand :definition-)
      "# XXX: DO NOT USE THIS MESSAGE
# available commands
string GOTO_POSE=goto_pose
string GOTO_TAG=goto_tag
string GOTO_NODE=goto_node

# id set from the subsystem calling the service
int32 id
# command from the available commands
string command

MissionParamInt[] int_params
MissionParamFloat[] float_params
MissionParamString[] string_params
MissionParamBool[] bool_params




================================================================================
MSG: robot_local_control_msgs/MissionParamInt
# param name
string name
# param value
int32 value


================================================================================
MSG: robot_local_control_msgs/MissionParamFloat
# param name
string name
# param value
float32 value


================================================================================
MSG: robot_local_control_msgs/MissionParamString
# param name
string name
# param value
string value


================================================================================
MSG: robot_local_control_msgs/MissionParamBool
# param name
string name
# param value
bool value


")



(provide :robot_local_control_msgs/MissionCommand "c34ea7f130e34df4f5f94460596dd71a")


