; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude EventScheduler.msg.html

(cl:defclass <EventScheduler> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (wk
    :reader wk
    :initarg :wk
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (date_start
    :reader date_start
    :initarg :date_start
    :type cl:string
    :initform "")
   (date_end
    :reader date_end
    :initarg :date_end
    :type cl:string
    :initform "")
   (hour
    :reader hour
    :initarg :hour
    :type cl:integer
    :initform 0)
   (minute
    :reader minute
    :initarg :minute
    :type cl:integer
    :initform 0)
   (repeat_hour
    :reader repeat_hour
    :initarg :repeat_hour
    :type cl:integer
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (commands
    :reader commands
    :initarg :commands
    :type cl:string
    :initform ""))
)

(cl:defclass EventScheduler (<EventScheduler>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventScheduler>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventScheduler)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<EventScheduler> is deprecated: use robot_simple_command_manager_msgs-msg:EventScheduler instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:id-val is deprecated.  Use robot_simple_command_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'wk-val :lambda-list '(m))
(cl:defmethod wk-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:wk-val is deprecated.  Use robot_simple_command_manager_msgs-msg:wk instead.")
  (wk m))

(cl:ensure-generic-function 'date_start-val :lambda-list '(m))
(cl:defmethod date_start-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:date_start-val is deprecated.  Use robot_simple_command_manager_msgs-msg:date_start instead.")
  (date_start m))

(cl:ensure-generic-function 'date_end-val :lambda-list '(m))
(cl:defmethod date_end-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:date_end-val is deprecated.  Use robot_simple_command_manager_msgs-msg:date_end instead.")
  (date_end m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:hour-val is deprecated.  Use robot_simple_command_manager_msgs-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'minute-val :lambda-list '(m))
(cl:defmethod minute-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:minute-val is deprecated.  Use robot_simple_command_manager_msgs-msg:minute instead.")
  (minute m))

(cl:ensure-generic-function 'repeat_hour-val :lambda-list '(m))
(cl:defmethod repeat_hour-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:repeat_hour-val is deprecated.  Use robot_simple_command_manager_msgs-msg:repeat_hour instead.")
  (repeat_hour m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:enabled-val is deprecated.  Use robot_simple_command_manager_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <EventScheduler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:commands-val is deprecated.  Use robot_simple_command_manager_msgs-msg:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventScheduler>) ostream)
  "Serializes a message object of type '<EventScheduler>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'wk))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date_start))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date_end))
  (cl:let* ((signed (cl:slot-value msg 'hour)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'minute)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'repeat_hour)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventScheduler>) istream)
  "Deserializes a message object of type '<EventScheduler>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wk) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wk)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date_start) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date_start) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date_end) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date_end) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hour) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'minute) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repeat_hour) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'commands) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'commands) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventScheduler>)))
  "Returns string type for a message object of type '<EventScheduler>"
  "robot_simple_command_manager_msgs/EventScheduler")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventScheduler)))
  "Returns string type for a message object of type 'EventScheduler"
  "robot_simple_command_manager_msgs/EventScheduler")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventScheduler>)))
  "Returns md5sum for a message object of type '<EventScheduler>"
  "27881408b237c4e879319551ad0eebe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventScheduler)))
  "Returns md5sum for a message object of type 'EventScheduler"
  "27881408b237c4e879319551ad0eebe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventScheduler>)))
  "Returns full string definition for message of type '<EventScheduler>"
  (cl:format cl:nil "string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventScheduler)))
  "Returns full string definition for message of type 'EventScheduler"
  (cl:format cl:nil "string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventScheduler>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wk) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'date_start))
     4 (cl:length (cl:slot-value msg 'date_end))
     4
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'commands))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventScheduler>))
  "Converts a ROS message object to a list"
  (cl:list 'EventScheduler
    (cl:cons ':id (id msg))
    (cl:cons ':wk (wk msg))
    (cl:cons ':date_start (date_start msg))
    (cl:cons ':date_end (date_end msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':minute (minute msg))
    (cl:cons ':repeat_hour (repeat_hour msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':commands (commands msg))
))
