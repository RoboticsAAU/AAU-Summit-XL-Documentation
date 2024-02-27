;; Auto-generated. Do not edit!


(when (boundp 'fake_joint_position_publisher::SetJoints)
  (if (not (find-package "FAKE_JOINT_POSITION_PUBLISHER"))
    (make-package "FAKE_JOINT_POSITION_PUBLISHER"))
  (shadow 'SetJoints (find-package "FAKE_JOINT_POSITION_PUBLISHER")))
(unless (find-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTS")
  (make-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTS"))
(unless (find-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTSREQUEST")
  (make-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTSREQUEST"))
(unless (find-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTSRESPONSE")
  (make-package "FAKE_JOINT_POSITION_PUBLISHER::SETJOINTSRESPONSE"))

(in-package "ROS")





(defclass fake_joint_position_publisher::SetJointsRequest
  :super ros::object
  :slots (_joints_names _positions ))

(defmethod fake_joint_position_publisher::SetJointsRequest
  (:init
   (&key
    ((:joints_names __joints_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints_names __joints_names)
   (setq _positions __positions)
   self)
  (:joints_names
   (&optional __joints_names)
   (if __joints_names (setq _joints_names __joints_names)) _joints_names)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; string[] _joints_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joints_names)) 4
    ;; float32[] _positions
    (* 4    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joints_names
     (write-long (length _joints_names) s)
     (dolist (elem _joints_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joints_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joints_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass fake_joint_position_publisher::SetJointsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod fake_joint_position_publisher::SetJointsResponse
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

(defclass fake_joint_position_publisher::SetJoints
  :super ros::object
  :slots ())

(setf (get fake_joint_position_publisher::SetJoints :md5sum-) "0f74c2ba51844f89cb01d50b436f6fba")
(setf (get fake_joint_position_publisher::SetJoints :datatype-) "fake_joint_position_publisher/SetJoints")
(setf (get fake_joint_position_publisher::SetJoints :request) fake_joint_position_publisher::SetJointsRequest)
(setf (get fake_joint_position_publisher::SetJoints :response) fake_joint_position_publisher::SetJointsResponse)

(defmethod fake_joint_position_publisher::SetJointsRequest
  (:response () (instance fake_joint_position_publisher::SetJointsResponse :init)))

(setf (get fake_joint_position_publisher::SetJointsRequest :md5sum-) "0f74c2ba51844f89cb01d50b436f6fba")
(setf (get fake_joint_position_publisher::SetJointsRequest :datatype-) "fake_joint_position_publisher/SetJointsRequest")
(setf (get fake_joint_position_publisher::SetJointsRequest :definition-)
      "string[] joints_names
float32[] positions
---
bool success
string message
")

(setf (get fake_joint_position_publisher::SetJointsResponse :md5sum-) "0f74c2ba51844f89cb01d50b436f6fba")
(setf (get fake_joint_position_publisher::SetJointsResponse :datatype-) "fake_joint_position_publisher/SetJointsResponse")
(setf (get fake_joint_position_publisher::SetJointsResponse :definition-)
      "string[] joints_names
float32[] positions
---
bool success
string message
")



(provide :fake_joint_position_publisher/SetJoints "0f74c2ba51844f89cb01d50b436f6fba")


