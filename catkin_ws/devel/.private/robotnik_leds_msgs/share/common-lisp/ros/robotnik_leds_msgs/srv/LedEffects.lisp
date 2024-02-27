; Auto-generated. Do not edit!


(cl:in-package robotnik_leds_msgs-srv)


;//! \htmlinclude LedEffects-request.msg.html

(cl:defclass <LedEffects-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (color_R
    :reader color_R
    :initarg :color_R
    :type cl:fixnum
    :initform 0)
   (color_G
    :reader color_G
    :initarg :color_G
    :type cl:fixnum
    :initform 0)
   (color_B
    :reader color_B
    :initarg :color_B
    :type cl:fixnum
    :initform 0)
   (color_W
    :reader color_W
    :initarg :color_W
    :type cl:fixnum
    :initform 0)
   (start_led
    :reader start_led
    :initarg :start_led
    :type cl:fixnum
    :initform 0)
   (end_led
    :reader end_led
    :initarg :end_led
    :type cl:fixnum
    :initform 0)
   (ms_on
    :reader ms_on
    :initarg :ms_on
    :type cl:fixnum
    :initform 0)
   (ms_off
    :reader ms_off
    :initarg :ms_off
    :type cl:fixnum
    :initform 0)
   (fade_in
    :reader fade_in
    :initarg :fade_in
    :type cl:fixnum
    :initform 0)
   (fade_out
    :reader fade_out
    :initarg :fade_out
    :type cl:fixnum
    :initform 0)
   (background_R
    :reader background_R
    :initarg :background_R
    :type cl:fixnum
    :initform 0)
   (background_G
    :reader background_G
    :initarg :background_G
    :type cl:fixnum
    :initform 0)
   (background_B
    :reader background_B
    :initarg :background_B
    :type cl:fixnum
    :initform 0)
   (background_W
    :reader background_W
    :initarg :background_W
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0)
   (sleep
    :reader sleep
    :initarg :sleep
    :type cl:fixnum
    :initform 0)
   (led_increment
    :reader led_increment
    :initarg :led_increment
    :type cl:fixnum
    :initform 0)
   (layer
    :reader layer
    :initarg :layer
    :type cl:fixnum
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LedEffects-request (<LedEffects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedEffects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedEffects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_leds_msgs-srv:<LedEffects-request> is deprecated: use robotnik_leds_msgs-srv:LedEffects-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:id-val is deprecated.  Use robotnik_leds_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:mode-val is deprecated.  Use robotnik_leds_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:channel-val is deprecated.  Use robotnik_leds_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:type-val is deprecated.  Use robotnik_leds_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'color_R-val :lambda-list '(m))
(cl:defmethod color_R-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_R-val is deprecated.  Use robotnik_leds_msgs-srv:color_R instead.")
  (color_R m))

(cl:ensure-generic-function 'color_G-val :lambda-list '(m))
(cl:defmethod color_G-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_G-val is deprecated.  Use robotnik_leds_msgs-srv:color_G instead.")
  (color_G m))

(cl:ensure-generic-function 'color_B-val :lambda-list '(m))
(cl:defmethod color_B-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_B-val is deprecated.  Use robotnik_leds_msgs-srv:color_B instead.")
  (color_B m))

(cl:ensure-generic-function 'color_W-val :lambda-list '(m))
(cl:defmethod color_W-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_W-val is deprecated.  Use robotnik_leds_msgs-srv:color_W instead.")
  (color_W m))

(cl:ensure-generic-function 'start_led-val :lambda-list '(m))
(cl:defmethod start_led-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:start_led-val is deprecated.  Use robotnik_leds_msgs-srv:start_led instead.")
  (start_led m))

(cl:ensure-generic-function 'end_led-val :lambda-list '(m))
(cl:defmethod end_led-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:end_led-val is deprecated.  Use robotnik_leds_msgs-srv:end_led instead.")
  (end_led m))

(cl:ensure-generic-function 'ms_on-val :lambda-list '(m))
(cl:defmethod ms_on-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:ms_on-val is deprecated.  Use robotnik_leds_msgs-srv:ms_on instead.")
  (ms_on m))

(cl:ensure-generic-function 'ms_off-val :lambda-list '(m))
(cl:defmethod ms_off-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:ms_off-val is deprecated.  Use robotnik_leds_msgs-srv:ms_off instead.")
  (ms_off m))

(cl:ensure-generic-function 'fade_in-val :lambda-list '(m))
(cl:defmethod fade_in-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:fade_in-val is deprecated.  Use robotnik_leds_msgs-srv:fade_in instead.")
  (fade_in m))

(cl:ensure-generic-function 'fade_out-val :lambda-list '(m))
(cl:defmethod fade_out-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:fade_out-val is deprecated.  Use robotnik_leds_msgs-srv:fade_out instead.")
  (fade_out m))

(cl:ensure-generic-function 'background_R-val :lambda-list '(m))
(cl:defmethod background_R-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:background_R-val is deprecated.  Use robotnik_leds_msgs-srv:background_R instead.")
  (background_R m))

(cl:ensure-generic-function 'background_G-val :lambda-list '(m))
(cl:defmethod background_G-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:background_G-val is deprecated.  Use robotnik_leds_msgs-srv:background_G instead.")
  (background_G m))

(cl:ensure-generic-function 'background_B-val :lambda-list '(m))
(cl:defmethod background_B-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:background_B-val is deprecated.  Use robotnik_leds_msgs-srv:background_B instead.")
  (background_B m))

(cl:ensure-generic-function 'background_W-val :lambda-list '(m))
(cl:defmethod background_W-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:background_W-val is deprecated.  Use robotnik_leds_msgs-srv:background_W instead.")
  (background_W m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:direction-val is deprecated.  Use robotnik_leds_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:speed-val is deprecated.  Use robotnik_leds_msgs-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'sleep-val :lambda-list '(m))
(cl:defmethod sleep-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:sleep-val is deprecated.  Use robotnik_leds_msgs-srv:sleep instead.")
  (sleep m))

(cl:ensure-generic-function 'led_increment-val :lambda-list '(m))
(cl:defmethod led_increment-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:led_increment-val is deprecated.  Use robotnik_leds_msgs-srv:led_increment instead.")
  (led_increment m))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:layer-val is deprecated.  Use robotnik_leds_msgs-srv:layer instead.")
  (layer m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <LedEffects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:enabled-val is deprecated.  Use robotnik_leds_msgs-srv:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedEffects-request>) ostream)
  "Serializes a message object of type '<LedEffects-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_R)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_G)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_B)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_W)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_led)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_off)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_off)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fade_in)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fade_in)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fade_out)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fade_out)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_R)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_G)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_B)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_W)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sleep)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sleep)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'led_increment)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'led_increment)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedEffects-request>) istream)
  "Deserializes a message object of type '<LedEffects-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_R)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_G)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_B)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color_W)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_led)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_led)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_led)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_led)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_on)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_off)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_off)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fade_in)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fade_in)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fade_out)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fade_out)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_R)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_G)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_B)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'background_W)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sleep)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sleep)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'led_increment)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'led_increment)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedEffects-request>)))
  "Returns string type for a service object of type '<LedEffects-request>"
  "robotnik_leds_msgs/LedEffectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedEffects-request)))
  "Returns string type for a service object of type 'LedEffects-request"
  "robotnik_leds_msgs/LedEffectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedEffects-request>)))
  "Returns md5sum for a message object of type '<LedEffects-request>"
  "ef2dbe370ba8b09e224378629b1a3ae5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedEffects-request)))
  "Returns md5sum for a message object of type 'LedEffects-request"
  "ef2dbe370ba8b09e224378629b1a3ae5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedEffects-request>)))
  "Returns full string definition for message of type '<LedEffects-request>"
  (cl:format cl:nil "string  id~%string  mode~%uint8   channel~%string  type~%uint8   color_R~%uint8   color_G~%uint8   color_B~%uint8   color_W ~%uint16  start_led~%uint16  end_led~%uint16  ms_on~%uint16  ms_off~%uint16  fade_in~%uint16  fade_out~%uint8   background_R~%uint8   background_G~%uint8   background_B~%uint8   background_W~%string  direction~%uint16  speed~%uint16  sleep~%uint16  led_increment~%uint8   layer~%bool    enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedEffects-request)))
  "Returns full string definition for message of type 'LedEffects-request"
  (cl:format cl:nil "string  id~%string  mode~%uint8   channel~%string  type~%uint8   color_R~%uint8   color_G~%uint8   color_B~%uint8   color_W ~%uint16  start_led~%uint16  end_led~%uint16  ms_on~%uint16  ms_off~%uint16  fade_in~%uint16  fade_out~%uint8   background_R~%uint8   background_G~%uint8   background_B~%uint8   background_W~%string  direction~%uint16  speed~%uint16  sleep~%uint16  led_increment~%uint8   layer~%bool    enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedEffects-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'mode))
     1
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
     1
     1
     2
     2
     2
     2
     2
     2
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'direction))
     2
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedEffects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedEffects-request
    (cl:cons ':id (id msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':type (type msg))
    (cl:cons ':color_R (color_R msg))
    (cl:cons ':color_G (color_G msg))
    (cl:cons ':color_B (color_B msg))
    (cl:cons ':color_W (color_W msg))
    (cl:cons ':start_led (start_led msg))
    (cl:cons ':end_led (end_led msg))
    (cl:cons ':ms_on (ms_on msg))
    (cl:cons ':ms_off (ms_off msg))
    (cl:cons ':fade_in (fade_in msg))
    (cl:cons ':fade_out (fade_out msg))
    (cl:cons ':background_R (background_R msg))
    (cl:cons ':background_G (background_G msg))
    (cl:cons ':background_B (background_B msg))
    (cl:cons ':background_W (background_W msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':sleep (sleep msg))
    (cl:cons ':led_increment (led_increment msg))
    (cl:cons ':layer (layer msg))
    (cl:cons ':enabled (enabled msg))
))
;//! \htmlinclude LedEffects-response.msg.html

(cl:defclass <LedEffects-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedEffects-response (<LedEffects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedEffects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedEffects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_leds_msgs-srv:<LedEffects-response> is deprecated: use robotnik_leds_msgs-srv:LedEffects-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <LedEffects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:state-val is deprecated.  Use robotnik_leds_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedEffects-response>) ostream)
  "Serializes a message object of type '<LedEffects-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedEffects-response>) istream)
  "Deserializes a message object of type '<LedEffects-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedEffects-response>)))
  "Returns string type for a service object of type '<LedEffects-response>"
  "robotnik_leds_msgs/LedEffectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedEffects-response)))
  "Returns string type for a service object of type 'LedEffects-response"
  "robotnik_leds_msgs/LedEffectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedEffects-response>)))
  "Returns md5sum for a message object of type '<LedEffects-response>"
  "ef2dbe370ba8b09e224378629b1a3ae5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedEffects-response)))
  "Returns md5sum for a message object of type 'LedEffects-response"
  "ef2dbe370ba8b09e224378629b1a3ae5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedEffects-response>)))
  "Returns full string definition for message of type '<LedEffects-response>"
  (cl:format cl:nil "uint8  state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedEffects-response)))
  "Returns full string definition for message of type 'LedEffects-response"
  (cl:format cl:nil "uint8  state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedEffects-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedEffects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedEffects-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedEffects)))
  'LedEffects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedEffects)))
  'LedEffects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedEffects)))
  "Returns string type for a service object of type '<LedEffects>"
  "robotnik_leds_msgs/LedEffects")