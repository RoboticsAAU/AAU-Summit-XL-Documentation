;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MissionCommandPetition)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MissionCommandPetition (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMANDPETITION")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMANDPETITION"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMANDPETITIONREQUEST")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMANDPETITIONREQUEST"))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMANDPETITIONRESPONSE")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MISSIONCOMMANDPETITIONRESPONSE"))

(in-package "ROS")





(defclass robot_local_control_msgs::MissionCommandPetitionRequest
  :super ros::object
  :slots (_command ))

(defmethod robot_local_control_msgs::MissionCommandPetitionRequest
  (:init
   (&key
    ((:command __command) (instance robot_local_control_msgs::MissionCommand :init))
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:serialization-length
   ()
   (+
    ;; robot_local_control_msgs/MissionCommand _command
    (send _command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robot_local_control_msgs/MissionCommand _command
       (send _command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robot_local_control_msgs/MissionCommand _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;;
   self)
  )

(defclass robot_local_control_msgs::MissionCommandPetitionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_local_control_msgs::MissionCommandPetitionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_local_control_msgs::MissionCommandPetition
  :super ros::object
  :slots ())

(setf (get robot_local_control_msgs::MissionCommandPetition :md5sum-) "09baf2a641d8c856ea25723a419f07b4")
(setf (get robot_local_control_msgs::MissionCommandPetition :datatype-) "robot_local_control_msgs/MissionCommandPetition")
(setf (get robot_local_control_msgs::MissionCommandPetition :request) robot_local_control_msgs::MissionCommandPetitionRequest)
(setf (get robot_local_control_msgs::MissionCommandPetition :response) robot_local_control_msgs::MissionCommandPetitionResponse)

(defmethod robot_local_control_msgs::MissionCommandPetitionRequest
  (:response () (instance robot_local_control_msgs::MissionCommandPetitionResponse :init)))

(setf (get robot_local_control_msgs::MissionCommandPetitionRequest :md5sum-) "09baf2a641d8c856ea25723a419f07b4")
(setf (get robot_local_control_msgs::MissionCommandPetitionRequest :datatype-) "robot_local_control_msgs/MissionCommandPetitionRequest")
(setf (get robot_local_control_msgs::MissionCommandPetitionRequest :definition-)
      "MissionCommand command

================================================================================
MSG: robot_local_control_msgs/MissionCommand
# XXX: DO NOT USE THIS MESSAGE
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

---
bool success
string message

")

(setf (get robot_local_control_msgs::MissionCommandPetitionResponse :md5sum-) "09baf2a641d8c856ea25723a419f07b4")
(setf (get robot_local_control_msgs::MissionCommandPetitionResponse :datatype-) "robot_local_control_msgs/MissionCommandPetitionResponse")
(setf (get robot_local_control_msgs::MissionCommandPetitionResponse :definition-)
      "MissionCommand command

================================================================================
MSG: robot_local_control_msgs/MissionCommand
# XXX: DO NOT USE THIS MESSAGE
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

---
bool success
string message

")



(provide :robot_local_control_msgs/MissionCommandPetition "09baf2a641d8c856ea25723a419f07b4")


