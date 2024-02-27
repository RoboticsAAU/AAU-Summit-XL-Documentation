;; Auto-generated. Do not edit!


(when (boundp 'robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction)
  (if (not (find-package "ROBOTNIK_NAVIGATION_MSGS"))
    (make-package "ROBOTNIK_NAVIGATION_MSGS"))
  (shadow 'RobotnikMoveBaseFlexGoalAction (find-package "ROBOTNIK_NAVIGATION_MSGS")))
(unless (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION")
  (make-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))

(in-package "ROS")
;;//! \htmlinclude RobotnikMoveBaseFlexGoalAction.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*NAVIGATION_TYPE_POINT_TO_POINT*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(shadow '*NAVIGATION_TYPE_POINT_TO_POINT* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction::*NAVIGATION_TYPE_POINT_TO_POINT* "POINT_TO_POINT")
(intern "*NAVIGATION_TYPE_END_POINT*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(shadow '*NAVIGATION_TYPE_END_POINT* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction::*NAVIGATION_TYPE_END_POINT* "END_POINT")
(intern "*GOAL_TARGET_TYPE_GPS*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(shadow '*GOAL_TARGET_TYPE_GPS* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction::*GOAL_TARGET_TYPE_GPS* "GPS")
(intern "*GOAL_TARGET_TYPE_CARTESIAN*" (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(shadow '*GOAL_TARGET_TYPE_CARTESIAN* (find-package "ROBOTNIK_NAVIGATION_MSGS::ROBOTNIKMOVEBASEFLEXGOALACTION"))
(defconstant robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction::*GOAL_TARGET_TYPE_CARTESIAN* "CARTESIAN")
(defclass robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction
  :super ros::object
  :slots (_goal_target_pose _controller _planner _recovery_behaviors _goal_tolerance _navigation_type _goal_target_type _max_vel ))

(defmethod robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction
  (:init
   (&key
    ((:goal_target_pose __goal_target_pose) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:controller __controller) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:planner __planner) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:recovery_behaviors __recovery_behaviors) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:goal_tolerance __goal_tolerance) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:navigation_type __navigation_type) "")
    ((:goal_target_type __goal_target_type) "")
    ((:max_vel __max_vel) 0.0)
    )
   (send-super :init)
   (setq _goal_target_pose __goal_target_pose)
   (setq _controller __controller)
   (setq _planner __planner)
   (setq _recovery_behaviors __recovery_behaviors)
   (setq _goal_tolerance __goal_tolerance)
   (setq _navigation_type (string __navigation_type))
   (setq _goal_target_type (string __goal_target_type))
   (setq _max_vel (float __max_vel))
   self)
  (:goal_target_pose
   (&rest __goal_target_pose)
   (if (keywordp (car __goal_target_pose))
       (send* _goal_target_pose __goal_target_pose)
     (progn
       (if __goal_target_pose (setq _goal_target_pose (car __goal_target_pose)))
       _goal_target_pose)))
  (:controller
   (&optional __controller)
   (if __controller (setq _controller __controller)) _controller)
  (:planner
   (&optional __planner)
   (if __planner (setq _planner __planner)) _planner)
  (:recovery_behaviors
   (&optional __recovery_behaviors)
   (if __recovery_behaviors (setq _recovery_behaviors __recovery_behaviors)) _recovery_behaviors)
  (:goal_tolerance
   (&rest __goal_tolerance)
   (if (keywordp (car __goal_tolerance))
       (send* _goal_tolerance __goal_tolerance)
     (progn
       (if __goal_tolerance (setq _goal_tolerance (car __goal_tolerance)))
       _goal_tolerance)))
  (:navigation_type
   (&optional __navigation_type)
   (if __navigation_type (setq _navigation_type __navigation_type)) _navigation_type)
  (:goal_target_type
   (&optional __goal_target_type)
   (if __goal_target_type (setq _goal_target_type __goal_target_type)) _goal_target_type)
  (:max_vel
   (&optional __max_vel)
   (if __max_vel (setq _max_vel __max_vel)) _max_vel)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _goal_target_pose
    (apply #'+ (send-all _goal_target_pose :serialization-length)) 4
    ;; string[] _controller
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _controller)) 4
    ;; string[] _planner
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _planner)) 4
    ;; string[] _recovery_behaviors
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _recovery_behaviors)) 4
    ;; geometry_msgs/Pose[] _goal_tolerance
    (apply #'+ (send-all _goal_tolerance :serialization-length)) 4
    ;; string _navigation_type
    4 (length _navigation_type)
    ;; string _goal_target_type
    4 (length _goal_target_type)
    ;; float32 _max_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _goal_target_pose
     (write-long (length _goal_target_pose) s)
     (dolist (elem _goal_target_pose)
       (send elem :serialize s)
       )
     ;; string[] _controller
     (write-long (length _controller) s)
     (dolist (elem _controller)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _planner
     (write-long (length _planner) s)
     (dolist (elem _planner)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _recovery_behaviors
     (write-long (length _recovery_behaviors) s)
     (dolist (elem _recovery_behaviors)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose[] _goal_tolerance
     (write-long (length _goal_tolerance) s)
     (dolist (elem _goal_tolerance)
       (send elem :serialize s)
       )
     ;; string _navigation_type
       (write-long (length _navigation_type) s) (princ _navigation_type s)
     ;; string _goal_target_type
       (write-long (length _goal_target_type) s) (princ _goal_target_type s)
     ;; float32 _max_vel
       (sys::poke _max_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _goal_target_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_target_pose (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _goal_target_pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _controller
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controller (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _controller i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _planner
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planner (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _planner i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _recovery_behaviors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _recovery_behaviors (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _recovery_behaviors i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose[] _goal_tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_tolerance (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _goal_tolerance)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _navigation_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _navigation_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_target_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_target_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _max_vel
     (setq _max_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction :md5sum-) "ca45ca2f4b0324a8e695c151e7aace54")
(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction :datatype-) "robotnik_navigation_msgs/RobotnikMoveBaseFlexGoalAction")
(setf (get robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction :definition-)
      "string NAVIGATION_TYPE_POINT_TO_POINT = POINT_TO_POINT
string NAVIGATION_TYPE_END_POINT= END_POINT

string GOAL_TARGET_TYPE_GPS = GPS
string GOAL_TARGET_TYPE_CARTESIAN = CARTESIAN

geometry_msgs/PoseStamped[] goal_target_pose
string[] controller
string[] planner
string[] recovery_behaviors
geometry_msgs/Pose[] goal_tolerance
string navigation_type
string goal_target_type
float32 max_vel

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

")



(provide :robotnik_navigation_msgs/RobotnikMoveBaseFlexGoalAction "ca45ca2f4b0324a8e695c151e7aace54")


