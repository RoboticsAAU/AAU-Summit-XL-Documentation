;; Auto-generated. Do not edit!


(when (boundp 'robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction)
  (if (not (find-package "ROBOTNIK_NAVIGATION_MSGS"))
    (make-package "ROBOTNIK_NAVIGATION_MSGS"))
  (shadow 'RobotnikMoveBaseFlexFeedbackAction (find-package "ROBOTNIK_NAVIGATION_MSGS")))
(unless (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION")
  (make-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))

(in-package "ROS")
;;//! \htmlinclude RobotnikMoveBaseFlexFeedbackAction.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*SUCCESS*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*SUCCESS* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*SUCCESS* 0)
(intern "*FAILURE*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*FAILURE* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*FAILURE* 10)
(intern "*CANCELED*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*CANCELED* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*CANCELED* 11)
(intern "*COLLISION*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*COLLISION* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*COLLISION* 12)
(intern "*OSCILLATION*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*OSCILLATION* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*OSCILLATION* 13)
(intern "*START_BLOCKED*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*START_BLOCKED* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*START_BLOCKED* 14)
(intern "*GOAL_BLOCKED*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*GOAL_BLOCKED* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*GOAL_BLOCKED* 15)
(intern "*TF_ERROR*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*TF_ERROR* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*TF_ERROR* 16)
(intern "*INTERNAL_ERROR*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*INTERNAL_ERROR* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*INTERNAL_ERROR* 17)
(intern "*PLAN_FAILURE*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*PLAN_FAILURE* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*PLAN_FAILURE* 50)
(intern "*CTRL_FAILURE*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(shadow '*CTRL_FAILURE* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXFEEDBACKACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction::*CTRL_FAILURE* 100)
(defclass robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction
  :super ros::object
  :slots (_outcome _message _dist_to_goal _angle_to_goal _final_pose _current_pose_executing _dist_current_target _current_goal ))

(defmethod robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction
  (:init
   (&key
    ((:outcome __outcome) 0)
    ((:message __message) "")
    ((:dist_to_goal __dist_to_goal) 0.0)
    ((:angle_to_goal __angle_to_goal) 0.0)
    ((:final_pose __final_pose) (instance geometry_msgs::PoseStamped :init))
    ((:current_pose_executing __current_pose_executing) (instance geometry_msgs::PoseStamped :init))
    ((:dist_current_target __dist_current_target) (instance geometry_msgs::Pose2D :init))
    ((:current_goal __current_goal) 0)
    )
   (send-super :init)
   (setq _outcome (round __outcome))
   (setq _message (string __message))
   (setq _dist_to_goal (float __dist_to_goal))
   (setq _angle_to_goal (float __angle_to_goal))
   (setq _final_pose __final_pose)
   (setq _current_pose_executing __current_pose_executing)
   (setq _dist_current_target __dist_current_target)
   (setq _current_goal (round __current_goal))
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
  (:final_pose
   (&rest __final_pose)
   (if (keywordp (car __final_pose))
       (send* _final_pose __final_pose)
     (progn
       (if __final_pose (setq _final_pose (car __final_pose)))
       _final_pose)))
  (:current_pose_executing
   (&rest __current_pose_executing)
   (if (keywordp (car __current_pose_executing))
       (send* _current_pose_executing __current_pose_executing)
     (progn
       (if __current_pose_executing (setq _current_pose_executing (car __current_pose_executing)))
       _current_pose_executing)))
  (:dist_current_target
   (&rest __dist_current_target)
   (if (keywordp (car __dist_current_target))
       (send* _dist_current_target __dist_current_target)
     (progn
       (if __dist_current_target (setq _dist_current_target (car __dist_current_target)))
       _dist_current_target)))
  (:current_goal
   (&optional __current_goal)
   (if __current_goal (setq _current_goal __current_goal)) _current_goal)
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
    ;; geometry_msgs/PoseStamped _final_pose
    (send _final_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _current_pose_executing
    (send _current_pose_executing :serialization-length)
    ;; geometry_msgs/Pose2D _dist_current_target
    (send _dist_current_target :serialization-length)
    ;; uint32 _current_goal
    4
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
     ;; geometry_msgs/PoseStamped _final_pose
       (send _final_pose :serialize s)
     ;; geometry_msgs/PoseStamped _current_pose_executing
       (send _current_pose_executing :serialize s)
     ;; geometry_msgs/Pose2D _dist_current_target
       (send _dist_current_target :serialize s)
     ;; uint32 _current_goal
       (write-long _current_goal s)
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
   ;; geometry_msgs/PoseStamped _final_pose
     (send _final_pose :deserialize buf ptr-) (incf ptr- (send _final_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _current_pose_executing
     (send _current_pose_executing :deserialize buf ptr-) (incf ptr- (send _current_pose_executing :serialization-length))
   ;; geometry_msgs/Pose2D _dist_current_target
     (send _dist_current_target :deserialize buf ptr-) (incf ptr- (send _dist_current_target :serialization-length))
   ;; uint32 _current_goal
     (setq _current_goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction :md5sum-) "4fbebf6f8927950a648710178b5b3a02")
(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction :datatype-) "robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction")
(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexFeedbackAction :definition-)
      "
# Predefined success codes:
uint8 SUCCESS        = 0

# Predefined general error codes:
uint8 FAILURE        = 10
uint8 CANCELED       = 11
uint8 COLLISION      = 12
uint8 OSCILLATION    = 13
uint8 START_BLOCKED  = 14
uint8 GOAL_BLOCKED   = 15
uint8 TF_ERROR       = 16
uint8 INTERNAL_ERROR = 17
# 21..49 are reserved for future general error codes

# Planning/controlling failures:
uint8 PLAN_FAILURE   = 50
# 51..99 are reserved as global planner specific errors

uint8 CTRL_FAILURE   = 100
# 101..149 are reserved as local planner specific errors

uint32 outcome
string message

# Configuration upon action completion
float32 dist_to_goal
float32 angle_to_goal
geometry_msgs/PoseStamped final_pose
geometry_msgs/PoseStamped current_pose_executing
geometry_msgs/Pose2D dist_current_target

# Index of the current goal executing
uint32 current_goal

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
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :robotnik_navigation_msgs/RobotnikMoveBaseFlexFeedbackAction "4fbebf6f8927950a648710178b5b3a02")


