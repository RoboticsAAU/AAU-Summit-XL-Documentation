;; Auto-generated. Do not edit!


(when (boundp 'robotnik_base_hw_sim::Pick)
  (if (not (find-package "ROBOTNIK_BASE_HW_SIM"))
    (make-package "ROBOTNIK_BASE_HW_SIM"))
  (shadow 'Pick (find-package "ROBOTNIK_BASE_HW_SIM")))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PICK")
  (make-package "ROBOTNIK_BASE_HW_SIM::PICK"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PICKREQUEST")
  (make-package "ROBOTNIK_BASE_HW_SIM::PICKREQUEST"))
(unless (find-package "ROBOTNIK_BASE_HW_SIM::PICKRESPONSE")
  (make-package "ROBOTNIK_BASE_HW_SIM::PICKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robotnik_base_hw_sim::PickRequest
  :super ros::object
  :slots (_object_model _object_link _robot_model _robot_link _pose ))

(defmethod robotnik_base_hw_sim::PickRequest
  (:init
   (&key
    ((:object_model __object_model) "")
    ((:object_link __object_link) "")
    ((:robot_model __robot_model) "")
    ((:robot_link __robot_link) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _object_model (string __object_model))
   (setq _object_link (string __object_link))
   (setq _robot_model (string __robot_model))
   (setq _robot_link (string __robot_link))
   (setq _pose __pose)
   self)
  (:object_model
   (&optional __object_model)
   (if __object_model (setq _object_model __object_model)) _object_model)
  (:object_link
   (&optional __object_link)
   (if __object_link (setq _object_link __object_link)) _object_link)
  (:robot_model
   (&optional __robot_model)
   (if __robot_model (setq _robot_model __robot_model)) _robot_model)
  (:robot_link
   (&optional __robot_link)
   (if __robot_link (setq _robot_link __robot_link)) _robot_link)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _object_model
    4 (length _object_model)
    ;; string _object_link
    4 (length _object_link)
    ;; string _robot_model
    4 (length _robot_model)
    ;; string _robot_link
    4 (length _robot_link)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_model
       (write-long (length _object_model) s) (princ _object_model s)
     ;; string _object_link
       (write-long (length _object_link) s) (princ _object_link s)
     ;; string _robot_model
       (write-long (length _robot_model) s) (princ _robot_model s)
     ;; string _robot_link
       (write-long (length _robot_link) s) (princ _robot_link s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass robotnik_base_hw_sim::PickResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod robotnik_base_hw_sim::PickResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_base_hw_sim::Pick
  :super ros::object
  :slots ())

(setf (get robotnik_base_hw_sim::Pick :md5sum-) "3cf02f67e5f48e886033088859c7e58a")
(setf (get robotnik_base_hw_sim::Pick :datatype-) "robotnik_base_hw_sim/Pick")
(setf (get robotnik_base_hw_sim::Pick :request) robotnik_base_hw_sim::PickRequest)
(setf (get robotnik_base_hw_sim::Pick :response) robotnik_base_hw_sim::PickResponse)

(defmethod robotnik_base_hw_sim::PickRequest
  (:response () (instance robotnik_base_hw_sim::PickResponse :init)))

(setf (get robotnik_base_hw_sim::PickRequest :md5sum-) "3cf02f67e5f48e886033088859c7e58a")
(setf (get robotnik_base_hw_sim::PickRequest :datatype-) "robotnik_base_hw_sim/PickRequest")
(setf (get robotnik_base_hw_sim::PickRequest :definition-)
      "# attach object link into robot link
# Links and models are refered to Gazebo
string object_model
string object_link
string robot_model
string robot_link
# pose related to the robot link
geometry_msgs/Pose pose

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
---
bool success
string msg

")

(setf (get robotnik_base_hw_sim::PickResponse :md5sum-) "3cf02f67e5f48e886033088859c7e58a")
(setf (get robotnik_base_hw_sim::PickResponse :datatype-) "robotnik_base_hw_sim/PickResponse")
(setf (get robotnik_base_hw_sim::PickResponse :definition-)
      "# attach object link into robot link
# Links and models are refered to Gazebo
string object_model
string object_link
string robot_model
string robot_link
# pose related to the robot link
geometry_msgs/Pose pose

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
---
bool success
string msg

")



(provide :robotnik_base_hw_sim/Pick "3cf02f67e5f48e886033088859c7e58a")


