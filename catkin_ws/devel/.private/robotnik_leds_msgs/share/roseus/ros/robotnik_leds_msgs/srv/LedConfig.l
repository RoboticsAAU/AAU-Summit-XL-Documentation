;; Auto-generated. Do not edit!


(when (boundp 'robotnik_leds_msgs::LedConfig)
  (if (not (find-package "ROBOTNIK_LEDS_MSGS"))
    (make-package "ROBOTNIK_LEDS_MSGS"))
  (shadow 'LedConfig (find-package "ROBOTNIK_LEDS_MSGS")))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDCONFIG")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDCONFIG"))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDCONFIGREQUEST")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDCONFIGREQUEST"))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDCONFIGRESPONSE")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDCONFIGRESPONSE"))

(in-package "ROS")





(defclass robotnik_leds_msgs::LedConfigRequest
  :super ros::object
  :slots (_password _state _mode _color_R _color_G _color_B _color_W _start_led _end_led _ms_on _ms_off _direction _speed ))

(defmethod robotnik_leds_msgs::LedConfigRequest
  (:init
   (&key
    ((:password __password) "")
    ((:state __state) "")
    ((:mode __mode) "")
    ((:color_R __color_R) 0)
    ((:color_G __color_G) 0)
    ((:color_B __color_B) 0)
    ((:color_W __color_W) 0)
    ((:start_led __start_led) 0)
    ((:end_led __end_led) 0)
    ((:ms_on __ms_on) 0)
    ((:ms_off __ms_off) 0)
    ((:direction __direction) "")
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _password (string __password))
   (setq _state (string __state))
   (setq _mode (string __mode))
   (setq _color_R (round __color_R))
   (setq _color_G (round __color_G))
   (setq _color_B (round __color_B))
   (setq _color_W (round __color_W))
   (setq _start_led (round __start_led))
   (setq _end_led (round __end_led))
   (setq _ms_on (round __ms_on))
   (setq _ms_off (round __ms_off))
   (setq _direction (string __direction))
   (setq _speed (round __speed))
   self)
  (:password
   (&optional __password)
   (if __password (setq _password __password)) _password)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:color_R
   (&optional __color_R)
   (if __color_R (setq _color_R __color_R)) _color_R)
  (:color_G
   (&optional __color_G)
   (if __color_G (setq _color_G __color_G)) _color_G)
  (:color_B
   (&optional __color_B)
   (if __color_B (setq _color_B __color_B)) _color_B)
  (:color_W
   (&optional __color_W)
   (if __color_W (setq _color_W __color_W)) _color_W)
  (:start_led
   (&optional __start_led)
   (if __start_led (setq _start_led __start_led)) _start_led)
  (:end_led
   (&optional __end_led)
   (if __end_led (setq _end_led __end_led)) _end_led)
  (:ms_on
   (&optional __ms_on)
   (if __ms_on (setq _ms_on __ms_on)) _ms_on)
  (:ms_off
   (&optional __ms_off)
   (if __ms_off (setq _ms_off __ms_off)) _ms_off)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; string _password
    4 (length _password)
    ;; string _state
    4 (length _state)
    ;; string _mode
    4 (length _mode)
    ;; uint8 _color_R
    1
    ;; uint8 _color_G
    1
    ;; uint8 _color_B
    1
    ;; uint8 _color_W
    1
    ;; uint16 _start_led
    2
    ;; uint16 _end_led
    2
    ;; uint16 _ms_on
    2
    ;; uint16 _ms_off
    2
    ;; string _direction
    4 (length _direction)
    ;; uint16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _password
       (write-long (length _password) s) (princ _password s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8 _color_R
       (write-byte _color_R s)
     ;; uint8 _color_G
       (write-byte _color_G s)
     ;; uint8 _color_B
       (write-byte _color_B s)
     ;; uint8 _color_W
       (write-byte _color_W s)
     ;; uint16 _start_led
       (write-word _start_led s)
     ;; uint16 _end_led
       (write-word _end_led s)
     ;; uint16 _ms_on
       (write-word _ms_on s)
     ;; uint16 _ms_off
       (write-word _ms_off s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; uint16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _password
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _password (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _color_R
     (setq _color_R (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _color_G
     (setq _color_G (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _color_B
     (setq _color_B (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _color_W
     (setq _color_W (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _start_led
     (setq _start_led (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end_led
     (setq _end_led (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ms_on
     (setq _ms_on (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ms_off
     (setq _ms_off (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robotnik_leds_msgs::LedConfigResponse
  :super ros::object
  :slots (_message ))

(defmethod robotnik_leds_msgs::LedConfigResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_leds_msgs::LedConfig
  :super ros::object
  :slots ())

(setf (get robotnik_leds_msgs::LedConfig :md5sum-) "9c4a062f09c33316e0077d371ce11963")
(setf (get robotnik_leds_msgs::LedConfig :datatype-) "robotnik_leds_msgs/LedConfig")
(setf (get robotnik_leds_msgs::LedConfig :request) robotnik_leds_msgs::LedConfigRequest)
(setf (get robotnik_leds_msgs::LedConfig :response) robotnik_leds_msgs::LedConfigResponse)

(defmethod robotnik_leds_msgs::LedConfigRequest
  (:response () (instance robotnik_leds_msgs::LedConfigResponse :init)))

(setf (get robotnik_leds_msgs::LedConfigRequest :md5sum-) "9c4a062f09c33316e0077d371ce11963")
(setf (get robotnik_leds_msgs::LedConfigRequest :datatype-) "robotnik_leds_msgs/LedConfigRequest")
(setf (get robotnik_leds_msgs::LedConfigRequest :definition-)
      "string password  # Same password used on robotnik robots
string state     # BOOTING, READY, EXIT
string mode	 # Properties to configure effects
uint8  color_R   
uint8  color_G
uint8  color_B
uint8  color_W 
uint16 start_led
uint16 end_led
uint16 ms_on
uint16 ms_off
string direction
uint16 speed
---
string message

")

(setf (get robotnik_leds_msgs::LedConfigResponse :md5sum-) "9c4a062f09c33316e0077d371ce11963")
(setf (get robotnik_leds_msgs::LedConfigResponse :datatype-) "robotnik_leds_msgs/LedConfigResponse")
(setf (get robotnik_leds_msgs::LedConfigResponse :definition-)
      "string password  # Same password used on robotnik robots
string state     # BOOTING, READY, EXIT
string mode	 # Properties to configure effects
uint8  color_R   
uint8  color_G
uint8  color_B
uint8  color_W 
uint16 start_led
uint16 end_led
uint16 ms_on
uint16 ms_off
string direction
uint16 speed
---
string message

")



(provide :robotnik_leds_msgs/LedConfig "9c4a062f09c33316e0077d371ce11963")


