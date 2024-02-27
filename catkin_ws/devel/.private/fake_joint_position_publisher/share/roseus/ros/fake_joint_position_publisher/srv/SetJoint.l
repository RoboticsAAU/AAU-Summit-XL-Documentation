;; Auto-generated. Do not edit!


(when (boundp 'fake_joint_position_publisher::SetJoint)
  (if (not (find-package "FAKE_JOINT_POSITION_PUBLISHER"))
    (make-package "FAKE_JOINT_POSITION_PUBLISHER"))
  (shadow 'SetJoint (find-package "FAKE_JOINT_POSITION_PUBLISHER")))
(unless (find-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINT")
  (make-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINT"))
(unless (find-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTREQUEST")
  (make-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTREQUEST"))
(unless (find-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTRESPONSE")
  (make-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTRESPONSE"))

(in-package "ROS")





(defclass fake_joint_position_publisher::SetJointRequest
  :super ros::object
  :slots (_joint_name _position ))

(defmethod fake_joint_position_publisher::SetJointRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _position (float __position))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; float32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass fake_joint_position_publisher::SetJointResponse
  :super ros::object
  :slots (_success _message ))

(defmethod fake_joint_position_publisher::SetJointResponse
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

(defclass fake_joint_position_publisher::SetJoint
  :super ros::object
  :slots ())

(setf (get fake_joint_position_publisher::SetJoint :md5sum-) "2463b264eef9b352ee7f6a0b85cc616a")
(setf (get fake_joint_position_publisher::SetJoint :datatype-) "fake_joint_position_publisher/SetJoint")
(setf (get fake_joint_position_publisher::SetJoint :request) fake_joint_position_publisher::SetJointRequest)
(setf (get fake_joint_position_publisher::SetJoint :response) fake_joint_position_publisher::SetJointResponse)

(defmethod fake_joint_position_publisher::SetJointRequest
  (:response () (instance fake_joint_position_publisher::SetJointResponse :init)))

(setf (get fake_joint_position_publisher::SetJointRequest :md5sum-) "2463b264eef9b352ee7f6a0b85cc616a")
(setf (get fake_joint_position_publisher::SetJointRequest :datatype-) "fake_joint_position_publisher/SetJointRequest")
(setf (get fake_joint_position_publisher::SetJointRequest :definition-)
      "string joint_name
float32 position
---
bool success
string message
")

(setf (get fake_joint_position_publisher::SetJointResponse :md5sum-) "2463b264eef9b352ee7f6a0b85cc616a")
(setf (get fake_joint_position_publisher::SetJointResponse :datatype-) "fake_joint_position_publisher/SetJointResponse")
(setf (get fake_joint_position_publisher::SetJointResponse :definition-)
      "string joint_name
float32 position
---
bool success
string message
")



(provide :fake_joint_position_publisher/SetJoint "2463b264eef9b352ee7f6a0b85cc616a")


