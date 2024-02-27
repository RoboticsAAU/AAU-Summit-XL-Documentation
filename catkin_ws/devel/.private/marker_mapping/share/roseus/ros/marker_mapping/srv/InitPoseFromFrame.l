;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::InitPoseFromFrame)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'InitPoseFromFrame (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::INITPOSEFROMFRAME")
  (make-package "MARKER_MAPPING::INITPOSEFROMFRAME"))
(unless (find-package "MARKER_MAPPING::INITPOSEFROMFRAMEREQUEST")
  (make-package "MARKER_MAPPING::INITPOSEFROMFRAMEREQUEST"))
(unless (find-package "MARKER_MAPPING::INITPOSEFROMFRAMERESPONSE")
  (make-package "MARKER_MAPPING::INITPOSEFROMFRAMERESPONSE"))

(in-package "ROS")





(defclass marker_mapping::InitPoseFromFrameRequest
  :super ros::object
  :slots (_frame_id ))

(defmethod marker_mapping::InitPoseFromFrameRequest
  (:init
   (&key
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marker_mapping::InitPoseFromFrameResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_mapping::InitPoseFromFrameResponse
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

(defclass marker_mapping::InitPoseFromFrame
  :super ros::object
  :slots ())

(setf (get marker_mapping::InitPoseFromFrame :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get marker_mapping::InitPoseFromFrame :datatype-) "marker_mapping/InitPoseFromFrame")
(setf (get marker_mapping::InitPoseFromFrame :request) marker_mapping::InitPoseFromFrameRequest)
(setf (get marker_mapping::InitPoseFromFrame :response) marker_mapping::InitPoseFromFrameResponse)

(defmethod marker_mapping::InitPoseFromFrameRequest
  (:response () (instance marker_mapping::InitPoseFromFrameResponse :init)))

(setf (get marker_mapping::InitPoseFromFrameRequest :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get marker_mapping::InitPoseFromFrameRequest :datatype-) "marker_mapping/InitPoseFromFrameRequest")
(setf (get marker_mapping::InitPoseFromFrameRequest :definition-)
      "# Marker selected to load
string frame_id
---
bool success
string message

")

(setf (get marker_mapping::InitPoseFromFrameResponse :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get marker_mapping::InitPoseFromFrameResponse :datatype-) "marker_mapping/InitPoseFromFrameResponse")
(setf (get marker_mapping::InitPoseFromFrameResponse :definition-)
      "# Marker selected to load
string frame_id
---
bool success
string message

")



(provide :marker_mapping/InitPoseFromFrame "35f2ba3133054633678b5f61278846ec")


