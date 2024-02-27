;; Auto-generated. Do not edit!


(when (boundp 'poi_manager_msgs::GetPOI_params)
  (if (not (find-package "POI_MANAGER_MSGS"))
    (make-package "POI_MANAGER_MSGS"))
  (shadow 'GetPOI_params (find-package "POI_MANAGER_MSGS")))
(unless (find-package "POI_MANAGER_MSGS::GETPOI_PARAMS")
  (make-package "POI_MANAGER_MSGS::GETPOI_PARAMS"))
(unless (find-package "POI_MANAGER_MSGS::GETPOI_PARAMSREQUEST")
  (make-package "POI_MANAGER_MSGS::GETPOI_PARAMSREQUEST"))
(unless (find-package "POI_MANAGER_MSGS::GETPOI_PARAMSRESPONSE")
  (make-package "POI_MANAGER_MSGS::GETPOI_PARAMSRESPONSE"))

(in-package "ROS")





(defclass poi_manager_msgs::GetPOI_paramsRequest
  :super ros::object
  :slots (_name _environment ))

(defmethod poi_manager_msgs::GetPOI_paramsRequest
  (:init
   (&key
    ((:name __name) "")
    ((:environment __environment) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _environment (string __environment))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _environment
    4 (length _environment)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetPOI_paramsResponse
  :super ros::object
  :slots (_name _environment _frame_id _params _x _y _z _roll _pitch _yaw _success _message ))

(defmethod poi_manager_msgs::GetPOI_paramsResponse
  (:init
   (&key
    ((:name __name) "")
    ((:environment __environment) "")
    ((:frame_id __frame_id) "")
    ((:params __params) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _environment (string __environment))
   (setq _frame_id (string __frame_id))
   (setq _params (string __params))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _environment
    4 (length _environment)
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _params
    4 (length _params)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _params
       (write-long (length _params) s) (princ _params s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass poi_manager_msgs::GetPOI_params
  :super ros::object
  :slots ())

(setf (get poi_manager_msgs::GetPOI_params :md5sum-) "a3f80f632bdd70740700383ed303765c")
(setf (get poi_manager_msgs::GetPOI_params :datatype-) "poi_manager_msgs/GetPOI_params")
(setf (get poi_manager_msgs::GetPOI_params :request) poi_manager_msgs::GetPOI_paramsRequest)
(setf (get poi_manager_msgs::GetPOI_params :response) poi_manager_msgs::GetPOI_paramsResponse)

(defmethod poi_manager_msgs::GetPOI_paramsRequest
  (:response () (instance poi_manager_msgs::GetPOI_paramsResponse :init)))

(setf (get poi_manager_msgs::GetPOI_paramsRequest :md5sum-) "a3f80f632bdd70740700383ed303765c")
(setf (get poi_manager_msgs::GetPOI_paramsRequest :datatype-) "poi_manager_msgs/GetPOI_paramsRequest")
(setf (get poi_manager_msgs::GetPOI_paramsRequest :definition-)
      "string name
string environment
---
string name
string environment
string frame_id
string params
float32 x
float32 y
float32 z
float32 roll
float32 pitch
float32 yaw
bool success
string message

")

(setf (get poi_manager_msgs::GetPOI_paramsResponse :md5sum-) "a3f80f632bdd70740700383ed303765c")
(setf (get poi_manager_msgs::GetPOI_paramsResponse :datatype-) "poi_manager_msgs/GetPOI_paramsResponse")
(setf (get poi_manager_msgs::GetPOI_paramsResponse :definition-)
      "string name
string environment
---
string name
string environment
string frame_id
string params
float32 x
float32 y
float32 z
float32 roll
float32 pitch
float32 yaw
bool success
string message

")



(provide :poi_manager_msgs/GetPOI_params "a3f80f632bdd70740700383ed303765c")


