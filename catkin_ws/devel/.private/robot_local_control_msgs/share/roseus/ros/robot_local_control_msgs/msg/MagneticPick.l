;; Auto-generated. Do not edit!


(when (boundp 'robot_local_control_msgs::MagneticPick)
  (if (not (find-package "ROBOT_LOCAL_CONTROL_MSGS"))
    (make-package "ROBOT_LOCAL_CONTROL_MSGS"))
  (shadow 'MagneticPick (find-package "ROBOT_LOCAL_CONTROL_MSGS")))
(unless (find-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICK")
  (make-package "ROBOT_LOCAL_CONTROL_MSGS::MAGNETICPICK"))

(in-package "ROS")
;;//! \htmlinclude MagneticPick.msg.html


(defclass robot_local_control_msgs::MagneticPick
  :super ros::object
  :slots (_lane _cart_position _turn_direction _allow_markers _cart_id ))

(defmethod robot_local_control_msgs::MagneticPick
  (:init
   (&key
    ((:lane __lane) 0)
    ((:cart_position __cart_position) 0)
    ((:turn_direction __turn_direction) "")
    ((:allow_markers __allow_markers) nil)
    ((:cart_id __cart_id) "")
    )
   (send-super :init)
   (setq _lane (round __lane))
   (setq _cart_position (round __cart_position))
   (setq _turn_direction (string __turn_direction))
   (setq _allow_markers __allow_markers)
   (setq _cart_id (string __cart_id))
   self)
  (:lane
   (&optional __lane)
   (if __lane (setq _lane __lane)) _lane)
  (:cart_position
   (&optional __cart_position)
   (if __cart_position (setq _cart_position __cart_position)) _cart_position)
  (:turn_direction
   (&optional __turn_direction)
   (if __turn_direction (setq _turn_direction __turn_direction)) _turn_direction)
  (:allow_markers
   (&optional __allow_markers)
   (if __allow_markers (setq _allow_markers __allow_markers)) _allow_markers)
  (:cart_id
   (&optional __cart_id)
   (if __cart_id (setq _cart_id __cart_id)) _cart_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _lane
    4
    ;; uint32 _cart_position
    4
    ;; string _turn_direction
    4 (length _turn_direction)
    ;; bool _allow_markers
    1
    ;; string _cart_id
    4 (length _cart_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _lane
       (write-long _lane s)
     ;; uint32 _cart_position
       (write-long _cart_position s)
     ;; string _turn_direction
       (write-long (length _turn_direction) s) (princ _turn_direction s)
     ;; bool _allow_markers
       (if _allow_markers (write-byte -1 s) (write-byte 0 s))
     ;; string _cart_id
       (write-long (length _cart_id) s) (princ _cart_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _lane
     (setq _lane (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cart_position
     (setq _cart_position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _turn_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _turn_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _allow_markers
     (setq _allow_markers (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _cart_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cart_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_local_control_msgs::MagneticPick :md5sum-) "dbbbfba3c2d148076e68cb0bb8f8902d")
(setf (get robot_local_control_msgs::MagneticPick :datatype-) "robot_local_control_msgs/MagneticPick")
(setf (get robot_local_control_msgs::MagneticPick :definition-)
      "uint32 lane
uint32 cart_position
string turn_direction
bool allow_markers
string cart_id

")



(provide :robot_local_control_msgs/MagneticPick "dbbbfba3c2d148076e68cb0bb8f8902d")


