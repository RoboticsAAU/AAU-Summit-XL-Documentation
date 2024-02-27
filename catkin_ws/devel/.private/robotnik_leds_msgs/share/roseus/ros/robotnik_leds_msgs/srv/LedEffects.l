;; Auto-generated. Do not edit!


(when (boundp 'robotnik_leds_msgs::LedEffects)
  (if (not (find-package "ROBOTNIK_LEDS_MSGS"))
    (make-package "ROBOTNIK_LEDS_MSGS"))
  (shadow 'LedEffects (find-package "ROBOTNIK_LEDS_MSGS")))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDEFFECTS")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDEFFECTS"))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDEFFECTSREQUEST")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDEFFECTSREQUEST"))
(unless (find-package "ROBOTNIK_LEDS_MSGS::LEDEFFECTSRESPONSE")
  (make-package "ROBOTNIK_LEDS_MSGS::LEDEFFECTSRESPONSE"))

(in-package "ROS")





(defclass robotnik_leds_msgs::LedEffectsRequest
  :super ros::object
  :slots (_id _mode _channel _type _color_R _color_G _color_B _color_W _start_led _end_led _ms_on _ms_off _fade_in _fade_out _background_R _background_G _background_B _background_W _direction _speed _sleep _led_increment _layer _enabled ))

(defmethod robotnik_leds_msgs::LedEffectsRequest
  (:init
   (&key
    ((:id __id) "")
    ((:mode __mode) "")
    ((:channel __channel) 0)
    ((:type __type) "")
    ((:color_R __color_R) 0)
    ((:color_G __color_G) 0)
    ((:color_B __color_B) 0)
    ((:color_W __color_W) 0)
    ((:start_led __start_led) 0)
    ((:end_led __end_led) 0)
    ((:ms_on __ms_on) 0)
    ((:ms_off __ms_off) 0)
    ((:fade_in __fade_in) 0)
    ((:fade_out __fade_out) 0)
    ((:background_R __background_R) 0)
    ((:background_G __background_G) 0)
    ((:background_B __background_B) 0)
    ((:background_W __background_W) 0)
    ((:direction __direction) "")
    ((:speed __speed) 0)
    ((:sleep __sleep) 0)
    ((:led_increment __led_increment) 0)
    ((:layer __layer) 0)
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _mode (string __mode))
   (setq _channel (round __channel))
   (setq _type (string __type))
   (setq _color_R (round __color_R))
   (setq _color_G (round __color_G))
   (setq _color_B (round __color_B))
   (setq _color_W (round __color_W))
   (setq _start_led (round __start_led))
   (setq _end_led (round __end_led))
   (setq _ms_on (round __ms_on))
   (setq _ms_off (round __ms_off))
   (setq _fade_in (round __fade_in))
   (setq _fade_out (round __fade_out))
   (setq _background_R (round __background_R))
   (setq _background_G (round __background_G))
   (setq _background_B (round __background_B))
   (setq _background_W (round __background_W))
   (setq _direction (string __direction))
   (setq _speed (round __speed))
   (setq _sleep (round __sleep))
   (setq _led_increment (round __led_increment))
   (setq _layer (round __layer))
   (setq _enabled __enabled)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
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
  (:fade_in
   (&optional __fade_in)
   (if __fade_in (setq _fade_in __fade_in)) _fade_in)
  (:fade_out
   (&optional __fade_out)
   (if __fade_out (setq _fade_out __fade_out)) _fade_out)
  (:background_R
   (&optional __background_R)
   (if __background_R (setq _background_R __background_R)) _background_R)
  (:background_G
   (&optional __background_G)
   (if __background_G (setq _background_G __background_G)) _background_G)
  (:background_B
   (&optional __background_B)
   (if __background_B (setq _background_B __background_B)) _background_B)
  (:background_W
   (&optional __background_W)
   (if __background_W (setq _background_W __background_W)) _background_W)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:sleep
   (&optional __sleep)
   (if __sleep (setq _sleep __sleep)) _sleep)
  (:led_increment
   (&optional __led_increment)
   (if __led_increment (setq _led_increment __led_increment)) _led_increment)
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _mode
    4 (length _mode)
    ;; uint8 _channel
    1
    ;; string _type
    4 (length _type)
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
    ;; uint16 _fade_in
    2
    ;; uint16 _fade_out
    2
    ;; uint8 _background_R
    1
    ;; uint8 _background_G
    1
    ;; uint8 _background_B
    1
    ;; uint8 _background_W
    1
    ;; string _direction
    4 (length _direction)
    ;; uint16 _speed
    2
    ;; uint16 _sleep
    2
    ;; uint16 _led_increment
    2
    ;; uint8 _layer
    1
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
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
     ;; uint16 _fade_in
       (write-word _fade_in s)
     ;; uint16 _fade_out
       (write-word _fade_out s)
     ;; uint8 _background_R
       (write-byte _background_R s)
     ;; uint8 _background_G
       (write-byte _background_G s)
     ;; uint8 _background_B
       (write-byte _background_B s)
     ;; uint8 _background_W
       (write-byte _background_W s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;; uint16 _speed
       (write-word _speed s)
     ;; uint16 _sleep
       (write-word _sleep s)
     ;; uint16 _led_increment
       (write-word _led_increment s)
     ;; uint8 _layer
       (write-byte _layer s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; uint16 _fade_in
     (setq _fade_in (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _fade_out
     (setq _fade_out (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _background_R
     (setq _background_R (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _background_G
     (setq _background_G (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _background_B
     (setq _background_B (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _background_W
     (setq _background_W (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sleep
     (setq _sleep (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _led_increment
     (setq _led_increment (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _layer
     (setq _layer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_leds_msgs::LedEffectsResponse
  :super ros::object
  :slots (_state ))

(defmethod robotnik_leds_msgs::LedEffectsResponse
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_leds_msgs::LedEffects
  :super ros::object
  :slots ())

(setf (get robotnik_leds_msgs::LedEffects :md5sum-) "ef2dbe370ba8b09e224378629b1a3ae5")
(setf (get robotnik_leds_msgs::LedEffects :datatype-) "robotnik_leds_msgs/LedEffects")
(setf (get robotnik_leds_msgs::LedEffects :request) robotnik_leds_msgs::LedEffectsRequest)
(setf (get robotnik_leds_msgs::LedEffects :response) robotnik_leds_msgs::LedEffectsResponse)

(defmethod robotnik_leds_msgs::LedEffectsRequest
  (:response () (instance robotnik_leds_msgs::LedEffectsResponse :init)))

(setf (get robotnik_leds_msgs::LedEffectsRequest :md5sum-) "ef2dbe370ba8b09e224378629b1a3ae5")
(setf (get robotnik_leds_msgs::LedEffectsRequest :datatype-) "robotnik_leds_msgs/LedEffectsRequest")
(setf (get robotnik_leds_msgs::LedEffectsRequest :definition-)
      "string  id
string  mode
uint8   channel
string  type
uint8   color_R
uint8   color_G
uint8   color_B
uint8   color_W 
uint16  start_led
uint16  end_led
uint16  ms_on
uint16  ms_off
uint16  fade_in
uint16  fade_out
uint8   background_R
uint8   background_G
uint8   background_B
uint8   background_W
string  direction
uint16  speed
uint16  sleep
uint16  led_increment
uint8   layer
bool    enabled
---
uint8  state

")

(setf (get robotnik_leds_msgs::LedEffectsResponse :md5sum-) "ef2dbe370ba8b09e224378629b1a3ae5")
(setf (get robotnik_leds_msgs::LedEffectsResponse :datatype-) "robotnik_leds_msgs/LedEffectsResponse")
(setf (get robotnik_leds_msgs::LedEffectsResponse :definition-)
      "string  id
string  mode
uint8   channel
string  type
uint8   color_R
uint8   color_G
uint8   color_B
uint8   color_W 
uint16  start_led
uint16  end_led
uint16  ms_on
uint16  ms_off
uint16  fade_in
uint16  fade_out
uint8   background_R
uint8   background_G
uint8   background_B
uint8   background_W
string  direction
uint16  speed
uint16  sleep
uint16  led_increment
uint8   layer
bool    enabled
---
uint8  state

")



(provide :robotnik_leds_msgs/LedEffects "ef2dbe370ba8b09e224378629b1a3ae5")


