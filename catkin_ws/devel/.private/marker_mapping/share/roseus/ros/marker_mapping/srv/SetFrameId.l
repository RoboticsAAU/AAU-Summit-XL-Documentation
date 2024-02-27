;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::SetFrameId)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'SetFrameId (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::SETFRAMEID")
  (make-package "MARKER_MAPPING::SETFRAMEID"))
(unless (find-package "MARKER_MAPPING::SETFRAMEIDREQUEST")
  (make-package "MARKER_MAPPING::SETFRAMEIDREQUEST"))
(unless (find-package "MARKER_MAPPING::SETFRAMEIDRESPONSE")
  (make-package "MARKER_MAPPING::SETFRAMEIDRESPONSE"))

(in-package "ROS")





(defclass marker_mapping::SetFrameIdRequest
  :super ros::object
  :slots (_frame_id ))

(defmethod marker_mapping::SetFrameIdRequest
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

(defclass marker_mapping::SetFrameIdResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod marker_mapping::SetFrameIdResponse
  (:init
   (&key
    ((:ret __ret) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ret __ret)
   (setq _message (string __message))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marker_mapping::SetFrameId
  :super ros::object
  :slots ())

(setf (get marker_mapping::SetFrameId :md5sum-) "8f31220030fae0baa0b9a03e2cca0af8")
(setf (get marker_mapping::SetFrameId :datatype-) "marker_mapping/SetFrameId")
(setf (get marker_mapping::SetFrameId :request) marker_mapping::SetFrameIdRequest)
(setf (get marker_mapping::SetFrameId :response) marker_mapping::SetFrameIdResponse)

(defmethod marker_mapping::SetFrameIdRequest
  (:response () (instance marker_mapping::SetFrameIdResponse :init)))

(setf (get marker_mapping::SetFrameIdRequest :md5sum-) "8f31220030fae0baa0b9a03e2cca0af8")
(setf (get marker_mapping::SetFrameIdRequest :datatype-) "marker_mapping/SetFrameIdRequest")
(setf (get marker_mapping::SetFrameIdRequest :definition-)
      "string frame_id
---
bool ret
string message

")

(setf (get marker_mapping::SetFrameIdResponse :md5sum-) "8f31220030fae0baa0b9a03e2cca0af8")
(setf (get marker_mapping::SetFrameIdResponse :datatype-) "marker_mapping/SetFrameIdResponse")
(setf (get marker_mapping::SetFrameIdResponse :definition-)
      "string frame_id
---
bool ret
string message

")



(provide :marker_mapping/SetFrameId "8f31220030fae0baa0b9a03e2cca0af8")


