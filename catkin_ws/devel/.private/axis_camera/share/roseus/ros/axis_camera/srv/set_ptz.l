;; Auto-generated. Do not edit!


(when (boundp 'axis_camera::set_ptz)
  (if (not (find-package "AXIS_CAMERA"))
    (make-package "AXIS_CAMERA"))
  (shadow 'set_ptz (find-package "AXIS_CAMERA")))
(unless (find-package "AXIS_CAMERA::SET_PTZ")
  (make-package "AXIS_CAMERA::SET_PTZ"))
(unless (find-package "AXIS_CAMERA::SET_PTZREQUEST")
  (make-package "AXIS_CAMERA::SET_PTZREQUEST"))
(unless (find-package "AXIS_CAMERA::SET_PTZRESPONSE")
  (make-package "AXIS_CAMERA::SET_PTZRESPONSE"))

(in-package "ROS")





(defclass axis_camera::set_ptzRequest
  :super ros::object
  :slots (_pan _tilt _zoom _relative ))

(defmethod axis_camera::set_ptzRequest
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    ((:zoom __zoom) 0.0)
    ((:relative __relative) nil)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   (setq _zoom (float __zoom))
   (setq _relative __relative)
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:zoom
   (&optional __zoom)
   (if __zoom (setq _zoom __zoom)) _zoom)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ;; float32 _zoom
    4
    ;; bool _relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zoom
       (sys::poke _zoom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zoom
     (setq _zoom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass axis_camera::set_ptzResponse
  :super ros::object
  :slots (_ret ))

(defmethod axis_camera::set_ptzResponse
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

(defclass axis_camera::set_ptz
  :super ros::object
  :slots ())

(setf (get axis_camera::set_ptz :md5sum-) "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(setf (get axis_camera::set_ptz :datatype-) "axis_camera/set_ptz")
(setf (get axis_camera::set_ptz :request) axis_camera::set_ptzRequest)
(setf (get axis_camera::set_ptz :response) axis_camera::set_ptzResponse)

(defmethod axis_camera::set_ptzRequest
  (:response () (instance axis_camera::set_ptzResponse :init)))

(setf (get axis_camera::set_ptzRequest :md5sum-) "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(setf (get axis_camera::set_ptzRequest :datatype-) "axis_camera/set_ptzRequest")
(setf (get axis_camera::set_ptzRequest :definition-)
      "# PAN value
float32 pan
# Tilt value
float32 tilt
# Zoom value
float32 zoom
# Flag for relative  movements
bool relative
---
bool ret 

")

(setf (get axis_camera::set_ptzResponse :md5sum-) "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(setf (get axis_camera::set_ptzResponse :datatype-) "axis_camera/set_ptzResponse")
(setf (get axis_camera::set_ptzResponse :definition-)
      "# PAN value
float32 pan
# Tilt value
float32 tilt
# Zoom value
float32 zoom
# Flag for relative  movements
bool relative
---
bool ret 

")



(provide :axis_camera/set_ptz "b0b0a0b023ba1e7f5ff6a9d48ee0689b")


