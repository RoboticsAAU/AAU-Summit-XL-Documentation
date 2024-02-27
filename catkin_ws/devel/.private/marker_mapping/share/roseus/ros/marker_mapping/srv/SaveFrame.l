;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::SaveFrame)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'SaveFrame (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::SAVEFRAME")
  (make-package "MARKER_MAPPING::SAVEFRAME"))
(unless (find-package "MARKER_MAPPING::SAVEFRAMEREQUEST")
  (make-package "MARKER_MAPPING::SAVEFRAMEREQUEST"))
(unless (find-package "MARKER_MAPPING::SAVEFRAMERESPONSE")
  (make-package "MARKER_MAPPING::SAVEFRAMERESPONSE"))

(in-package "ROS")





(defclass marker_mapping::SaveFrameRequest
  :super ros::object
  :slots (_frame_id ))

(defmethod marker_mapping::SaveFrameRequest
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

(defclass marker_mapping::SaveFrameResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_mapping::SaveFrameResponse
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

(defclass marker_mapping::SaveFrame
  :super ros::object
  :slots ())

(setf (get marker_mapping::SaveFrame :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get marker_mapping::SaveFrame :datatype-) "marker_mapping/SaveFrame")
(setf (get marker_mapping::SaveFrame :request) marker_mapping::SaveFrameRequest)
(setf (get marker_mapping::SaveFrame :response) marker_mapping::SaveFrameResponse)

(defmethod marker_mapping::SaveFrameRequest
  (:response () (instance marker_mapping::SaveFrameResponse :init)))

(setf (get marker_mapping::SaveFrameRequest :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get marker_mapping::SaveFrameRequest :datatype-) "marker_mapping/SaveFrameRequest")
(setf (get marker_mapping::SaveFrameRequest :definition-)
      "# frame to save
string frame_id
---
bool success
string message

")

(setf (get marker_mapping::SaveFrameResponse :md5sum-) "35f2ba3133054633678b5f61278846ec")
(setf (get marker_mapping::SaveFrameResponse :datatype-) "marker_mapping/SaveFrameResponse")
(setf (get marker_mapping::SaveFrameResponse :definition-)
      "# frame to save
string frame_id
---
bool success
string message

")



(provide :marker_mapping/SaveFrame "35f2ba3133054633678b5f61278846ec")


