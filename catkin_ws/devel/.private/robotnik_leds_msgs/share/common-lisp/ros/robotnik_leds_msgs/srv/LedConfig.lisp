; Auto-generated. Do not edit!


(cl:in-package robotnik_leds_msgs-srv)


;//! \htmlinclude LedConfig-request.msg.html

(cl:defclass <LedConfig-request> (roslisp-msg-protocol:ros-message)
  ((password
    :reader password
    :initarg :password
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
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
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedConfig-request (<LedConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_leds_msgs-srv:<LedConfig-request> is deprecated: use robotnik_leds_msgs-srv:LedConfig-request instead.")))

(cl:ensure-generic-function 'password-val :lambda-list '(m))
(cl:defmethod password-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:password-val is deprecated.  Use robotnik_leds_msgs-srv:password instead.")
  (password m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:state-val is deprecated.  Use robotnik_leds_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:mode-val is deprecated.  Use robotnik_leds_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'color_R-val :lambda-list '(m))
(cl:defmethod color_R-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_R-val is deprecated.  Use robotnik_leds_msgs-srv:color_R instead.")
  (color_R m))

(cl:ensure-generic-function 'color_G-val :lambda-list '(m))
(cl:defmethod color_G-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_G-val is deprecated.  Use robotnik_leds_msgs-srv:color_G instead.")
  (color_G m))

(cl:ensure-generic-function 'color_B-val :lambda-list '(m))
(cl:defmethod color_B-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_B-val is deprecated.  Use robotnik_leds_msgs-srv:color_B instead.")
  (color_B m))

(cl:ensure-generic-function 'color_W-val :lambda-list '(m))
(cl:defmethod color_W-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:color_W-val is deprecated.  Use robotnik_leds_msgs-srv:color_W instead.")
  (color_W m))

(cl:ensure-generic-function 'start_led-val :lambda-list '(m))
(cl:defmethod start_led-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:start_led-val is deprecated.  Use robotnik_leds_msgs-srv:start_led instead.")
  (start_led m))

(cl:ensure-generic-function 'end_led-val :lambda-list '(m))
(cl:defmethod end_led-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:end_led-val is deprecated.  Use robotnik_leds_msgs-srv:end_led instead.")
  (end_led m))

(cl:ensure-generic-function 'ms_on-val :lambda-list '(m))
(cl:defmethod ms_on-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:ms_on-val is deprecated.  Use robotnik_leds_msgs-srv:ms_on instead.")
  (ms_on m))

(cl:ensure-generic-function 'ms_off-val :lambda-list '(m))
(cl:defmethod ms_off-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:ms_off-val is deprecated.  Use robotnik_leds_msgs-srv:ms_off instead.")
  (ms_off m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:direction-val is deprecated.  Use robotnik_leds_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LedConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:speed-val is deprecated.  Use robotnik_leds_msgs-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedConfig-request>) ostream)
  "Serializes a message object of type '<LedConfig-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'password))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'password))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedConfig-request>) istream)
  "Deserializes a message object of type '<LedConfig-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'password) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'password) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedConfig-request>)))
  "Returns string type for a service object of type '<LedConfig-request>"
  "robotnik_leds_msgs/LedConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedConfig-request)))
  "Returns string type for a service object of type 'LedConfig-request"
  "robotnik_leds_msgs/LedConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedConfig-request>)))
  "Returns md5sum for a message object of type '<LedConfig-request>"
  "9c4a062f09c33316e0077d371ce11963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedConfig-request)))
  "Returns md5sum for a message object of type 'LedConfig-request"
  "9c4a062f09c33316e0077d371ce11963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedConfig-request>)))
  "Returns full string definition for message of type '<LedConfig-request>"
  (cl:format cl:nil "string password  # Same password used on robotnik robots~%string state     # BOOTING, READY, EXIT~%string mode	 # Properties to configure effects~%uint8  color_R   ~%uint8  color_G~%uint8  color_B~%uint8  color_W ~%uint16 start_led~%uint16 end_led~%uint16 ms_on~%uint16 ms_off~%string direction~%uint16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedConfig-request)))
  "Returns full string definition for message of type 'LedConfig-request"
  (cl:format cl:nil "string password  # Same password used on robotnik robots~%string state     # BOOTING, READY, EXIT~%string mode	 # Properties to configure effects~%uint8  color_R   ~%uint8  color_G~%uint8  color_B~%uint8  color_W ~%uint16 start_led~%uint16 end_led~%uint16 ms_on~%uint16 ms_off~%string direction~%uint16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedConfig-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'password))
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'mode))
     1
     1
     1
     1
     2
     2
     2
     2
     4 (cl:length (cl:slot-value msg 'direction))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedConfig-request
    (cl:cons ':password (password msg))
    (cl:cons ':state (state msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':color_R (color_R msg))
    (cl:cons ':color_G (color_G msg))
    (cl:cons ':color_B (color_B msg))
    (cl:cons ':color_W (color_W msg))
    (cl:cons ':start_led (start_led msg))
    (cl:cons ':end_led (end_led msg))
    (cl:cons ':ms_on (ms_on msg))
    (cl:cons ':ms_off (ms_off msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude LedConfig-response.msg.html

(cl:defclass <LedConfig-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass LedConfig-response (<LedConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_leds_msgs-srv:<LedConfig-response> is deprecated: use robotnik_leds_msgs-srv:LedConfig-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LedConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_leds_msgs-srv:message-val is deprecated.  Use robotnik_leds_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedConfig-response>) ostream)
  "Serializes a message object of type '<LedConfig-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedConfig-response>) istream)
  "Deserializes a message object of type '<LedConfig-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedConfig-response>)))
  "Returns string type for a service object of type '<LedConfig-response>"
  "robotnik_leds_msgs/LedConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedConfig-response)))
  "Returns string type for a service object of type 'LedConfig-response"
  "robotnik_leds_msgs/LedConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedConfig-response>)))
  "Returns md5sum for a message object of type '<LedConfig-response>"
  "9c4a062f09c33316e0077d371ce11963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedConfig-response)))
  "Returns md5sum for a message object of type 'LedConfig-response"
  "9c4a062f09c33316e0077d371ce11963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedConfig-response>)))
  "Returns full string definition for message of type '<LedConfig-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedConfig-response)))
  "Returns full string definition for message of type 'LedConfig-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedConfig-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedConfig-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedConfig)))
  'LedConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedConfig)))
  'LedConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedConfig)))
  "Returns string type for a service object of type '<LedConfig>"
  "robotnik_leds_msgs/LedConfig")