;; Auto-generated. Do not edit!


(when (boundp 'robotnik_navigation_msgs::RobotnikMoveBaseFlexResultAction)
  (if (not (find-package "ROBOTNIK_NAVIGATION_MSGS"))
    (make-package "ROBOTNIK_NAVIGATION_MSGS"))
  (shadow 'RobotnikMoveBaseFlexResultAction (find-package "ROBOTNIK_NAVIGATION_MSGS")))
(unless (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXRESULTACTION")
  (make-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXRESULTACTION"))

(in-package "ROS")
;;//! \htmlinclude RobotnikMoveBaseFlexResultAction.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotnik_navigation_msgs::RobotnikMoveBaseFlexResultAction
  :super ros::object
  :slots (_outcome _message _dist_to_goal _angle_to_goal _current_pose _success _last_cmd_vel ))

(defmethod robotnik_navigation_msgs::RobotnikMoveBaseFlexResultAction
  (:init
   (&key
    ((:outcome __outcome) 0)
    ((:message __message) "")
    ((:dist_to_goal __dist_to_goal) 0.0)
    ((:angle_to_goal __angle_to_goal) 0.0)
    ((:current_pose __current_pose) (instance geometry_msgs::PoseStamped :init))
    ((:success __success) nil)
    ((:last_cmd_vel __last_cmd_vel) (instance geometry_msgs::TwistStamped :init))
    )
   (send-super :init)
   (setq _outcome (round __outcome))
   (setq _message (string __message))
   (setq _dist_to_goal (float __dist_to_goal))
   (setq _angle_to_goal (float __angle_to_goal))
   (setq _current_pose __current_pose)
   (setq _success __success)
   (setq _last_cmd_vel __last_cmd_vel)
   self)
  (:outcome
   (&optional __outcome)
   (if __outcome (setq _outcome __outcome)) _outcome)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:dist_to_goal
   (&optional __dist_to_goal)
   (if __dist_to_goal (setq _dist_to_goal __dist_to_goal)) _dist_to_goal)
  (:angle_to_goal
   (&optional __angle_to_goal)
   (if __angle_to_goal (setq _angle_to_goal __angle_to_goal)) _angle_to_goal)
  (:current_pose
   (&rest __current_pose)
   (if (keywordp (car __current_pose))
       (send* _current_pose __current_pose)
     (progn
       (if __current_pose (setq _current_pose (car __current_pose)))
       _current_pose)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:last_cmd_vel
   (&rest __last_cmd_vel)
   (if (keywordp (car __last_cmd_vel))
       (send* _last_cmd_vel __last_cmd_vel)
     (progn
       (if __last_cmd_vel (setq _last_cmd_vel (car __last_cmd_vel)))
       _last_cmd_vel)))
  (:serialization-length
   ()
   (+
    ;; uint32 _outcome
    4
    ;; string _message
    4 (length _message)
    ;; float32 _dist_to_goal
    4
    ;; float32 _angle_to_goal
    4
    ;; geometry_msgs/PoseStamped _current_pose
    (send _current_pose :serialization-length)
    ;; bool _success
    1
    ;; geometry_msgs/TwistStamped _last_cmd_vel
    (send _last_cmd_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _outcome
       (write-long _outcome s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float32 _dist_to_goal
       (sys::poke _dist_to_goal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_to_goal
       (sys::poke _angle_to_goal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseStamped _current_pose
       (send _current_pose :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/TwistStamped _last_cmd_vel
       (send _last_cmd_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _outcome
     (setq _outcome (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dist_to_goal
     (setq _dist_to_goal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_to_goal
     (setq _angle_to_goal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _current_pose
     (send _current_pose :deserialize buf ptr-) (incf ptr- (send _current_pose :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/TwistStamped _last_cmd_vel
     (send _last_cmd_vel :deserialize buf ptr-) (incf ptr- (send _last_cmd_vel :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexResultAction :md5sum-) "6e554920bf6d6eb237c78299c84b8368")
(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexResultAction :datatype-) "robotnik_navigation_msgs/RobotnikMoveBaseFlexResultAction")
(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexResultAction :definition-)
      "
# Outcome of most recent controller cycle. Same values as in MoveBase or ExePath result.
uint32 outcome
string message

float32 dist_to_goal
float32 angle_to_goal
geometry_msgs/PoseStamped current_pose
bool success
geometry_msgs/TwistStamped last_cmd_vel  # last command calculated by the controller

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :robotnik_navigation_msgs/RobotnikMoveBaseFlexResultAction "6e554920bf6d6eb237c78299c84b8368")


