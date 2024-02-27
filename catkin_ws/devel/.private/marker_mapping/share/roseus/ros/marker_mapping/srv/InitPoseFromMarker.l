;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::InitPoseFromMarker)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'InitPoseFromMarker (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::INITPOSEFROMMARKER")
  (make-package "MARKER_MAPPING::INITPOSEFROMMARKER"))
(unless (find-package "MARKER_MAPPING::INITPOSEFROMMARKERREQUEST")
  (make-package "MARKER_MAPPING::INITPOSEFROMMARKERREQUEST"))
(unless (find-package "MARKER_MAPPING::INITPOSEFROMMARKERRESPONSE")
  (make-package "MARKER_MAPPING::INITPOSEFROMMARKERRESPONSE"))

(in-package "ROS")





(defclass marker_mapping::InitPoseFromMarkerRequest
  :super ros::object
  :slots (_id ))

(defmethod marker_mapping::InitPoseFromMarkerRequest
  (:init
   (&key
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id __id)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint32[] _id
    (* 4    (length _id)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-long (elt _id i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass marker_mapping::InitPoseFromMarkerResponse
  :super ros::object
  :slots (_ret ))

(defmethod marker_mapping::InitPoseFromMarkerResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass marker_mapping::InitPoseFromMarker
  :super ros::object
  :slots ())

(setf (get marker_mapping::InitPoseFromMarker :md5sum-) "1c1b8afbabfa4d07e7285e6b778506a5")
(setf (get marker_mapping::InitPoseFromMarker :datatype-) "marker_mapping/InitPoseFromMarker")
(setf (get marker_mapping::InitPoseFromMarker :request) marker_mapping::InitPoseFromMarkerRequest)
(setf (get marker_mapping::InitPoseFromMarker :response) marker_mapping::InitPoseFromMarkerResponse)

(defmethod marker_mapping::InitPoseFromMarkerRequest
  (:response () (instance marker_mapping::InitPoseFromMarkerResponse :init)))

(setf (get marker_mapping::InitPoseFromMarkerRequest :md5sum-) "1c1b8afbabfa4d07e7285e6b778506a5")
(setf (get marker_mapping::InitPoseFromMarkerRequest :datatype-) "marker_mapping/InitPoseFromMarkerRequest")
(setf (get marker_mapping::InitPoseFromMarkerRequest :definition-)
      "# Marker selected to load
uint32[] id
---
bool ret

")

(setf (get marker_mapping::InitPoseFromMarkerResponse :md5sum-) "1c1b8afbabfa4d07e7285e6b778506a5")
(setf (get marker_mapping::InitPoseFromMarkerResponse :datatype-) "marker_mapping/InitPoseFromMarkerResponse")
(setf (get marker_mapping::InitPoseFromMarkerResponse :definition-)
      "# Marker selected to load
uint32[] id
---
bool ret

")



(provide :marker_mapping/InitPoseFromMarker "1c1b8afbabfa4d07e7285e6b778506a5")


