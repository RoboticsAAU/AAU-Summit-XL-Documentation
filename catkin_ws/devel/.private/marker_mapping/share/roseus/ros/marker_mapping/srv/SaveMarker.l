;; Auto-generated. Do not edit!


(when (boundp 'marker_mapping::SaveMarker)
  (if (not (find-package "MARKER_MAPPING"))
    (make-package "MARKER_MAPPING"))
  (shadow 'SaveMarker (find-package "MARKER_MAPPING")))
(unless (find-package "MARKER_MAPPING::SAVEMARKER")
  (make-package "MARKER_MAPPING::SAVEMARKER"))
(unless (find-package "MARKER_MAPPING::SAVEMARKERREQUEST")
  (make-package "MARKER_MAPPING::SAVEMARKERREQUEST"))
(unless (find-package "MARKER_MAPPING::SAVEMARKERRESPONSE")
  (make-package "MARKER_MAPPING::SAVEMARKERRESPONSE"))

(in-package "ROS")





(defclass marker_mapping::SaveMarkerRequest
  :super ros::object
  :slots (_id _filename ))

(defmethod marker_mapping::SaveMarkerRequest
  (:init
   (&key
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _id __id)
   (setq _filename (string __filename))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; uint32[] _id
    (* 4    (length _id)) 4
    ;; string _filename
    4 (length _filename)
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
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
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
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marker_mapping::SaveMarkerResponse
  :super ros::object
  :slots (_ret ))

(defmethod marker_mapping::SaveMarkerResponse
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

(defclass marker_mapping::SaveMarker
  :super ros::object
  :slots ())

(setf (get marker_mapping::SaveMarker :md5sum-) "17128a6bd3a25a11bd83a0c0ca87deda")
(setf (get marker_mapping::SaveMarker :datatype-) "marker_mapping/SaveMarker")
(setf (get marker_mapping::SaveMarker :request) marker_mapping::SaveMarkerRequest)
(setf (get marker_mapping::SaveMarker :response) marker_mapping::SaveMarkerResponse)

(defmethod marker_mapping::SaveMarkerRequest
  (:response () (instance marker_mapping::SaveMarkerResponse :init)))

(setf (get marker_mapping::SaveMarkerRequest :md5sum-) "17128a6bd3a25a11bd83a0c0ca87deda")
(setf (get marker_mapping::SaveMarkerRequest :datatype-) "marker_mapping/SaveMarkerRequest")
(setf (get marker_mapping::SaveMarkerRequest :definition-)
      "# List of markers to save (if no one, it saves any marker detected)
uint32[] id
# (optional) Filename to save the marker list
string filename
---
bool ret

")

(setf (get marker_mapping::SaveMarkerResponse :md5sum-) "17128a6bd3a25a11bd83a0c0ca87deda")
(setf (get marker_mapping::SaveMarkerResponse :datatype-) "marker_mapping/SaveMarkerResponse")
(setf (get marker_mapping::SaveMarkerResponse :definition-)
      "# List of markers to save (if no one, it saves any marker detected)
uint32[] id
# (optional) Filename to save the marker list
string filename
---
bool ret

")



(provide :marker_mapping/SaveMarker "17128a6bd3a25a11bd83a0c0ca87deda")


