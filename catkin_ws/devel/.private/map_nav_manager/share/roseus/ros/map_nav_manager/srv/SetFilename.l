;; Auto-generated. Do not edit!


(when (boundp 'map_nav_manager::SetFilename)
  (if (not (find-package "MAP_NAV_MANAGER"))
    (make-package "MAP_NAV_MANAGER"))
  (shadow 'SetFilename (find-package "MAP_NAV_MANAGER")))
(unless (find-package "MAP_NAV_MANAGER::SETFILENAME")
  (make-package "MAP_NAV_MANAGER::SETFILENAME"))
(unless (find-package "MAP_NAV_MANAGER::SETFILENAMEREQUEST")
  (make-package "MAP_NAV_MANAGER::SETFILENAMEREQUEST"))
(unless (find-package "MAP_NAV_MANAGER::SETFILENAMERESPONSE")
  (make-package "MAP_NAV_MANAGER::SETFILENAMERESPONSE"))

(in-package "ROS")





(defclass map_nav_manager::SetFilenameRequest
  :super ros::object
  :slots (_name _use_it_by_default ))

(defmethod map_nav_manager::SetFilenameRequest
  (:init
   (&key
    ((:name __name) "")
    ((:use_it_by_default __use_it_by_default) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _use_it_by_default __use_it_by_default)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:use_it_by_default
   (&optional __use_it_by_default)
   (if __use_it_by_default (setq _use_it_by_default __use_it_by_default)) _use_it_by_default)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _use_it_by_default
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _use_it_by_default
       (if _use_it_by_default (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _use_it_by_default
     (setq _use_it_by_default (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass map_nav_manager::SetFilenameResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod map_nav_manager::SetFilenameResponse
  (:init
   (&key
    ((:ret __ret) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _ret __ret)
   (setq _msg (string __msg))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass map_nav_manager::SetFilename
  :super ros::object
  :slots ())

(setf (get map_nav_manager::SetFilename :md5sum-) "0e2ab6c0c250dbb3b3cac558b01494a6")
(setf (get map_nav_manager::SetFilename :datatype-) "map_nav_manager/SetFilename")
(setf (get map_nav_manager::SetFilename :request) map_nav_manager::SetFilenameRequest)
(setf (get map_nav_manager::SetFilename :response) map_nav_manager::SetFilenameResponse)

(defmethod map_nav_manager::SetFilenameRequest
  (:response () (instance map_nav_manager::SetFilenameResponse :init)))

(setf (get map_nav_manager::SetFilenameRequest :md5sum-) "0e2ab6c0c250dbb3b3cac558b01494a6")
(setf (get map_nav_manager::SetFilenameRequest :datatype-) "map_nav_manager/SetFilenameRequest")
(setf (get map_nav_manager::SetFilenameRequest :definition-)
      "string name
# used to use it this file by default
bool use_it_by_default
---
bool ret
string msg

")

(setf (get map_nav_manager::SetFilenameResponse :md5sum-) "0e2ab6c0c250dbb3b3cac558b01494a6")
(setf (get map_nav_manager::SetFilenameResponse :datatype-) "map_nav_manager/SetFilenameResponse")
(setf (get map_nav_manager::SetFilenameResponse :definition-)
      "string name
# used to use it this file by default
bool use_it_by_default
---
bool ret
string msg

")



(provide :map_nav_manager/SetFilename "0e2ab6c0c250dbb3b3cac558b01494a6")


