; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude NavigationStatus.msg.html

(cl:defclass <NavigationStatus> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass NavigationStatus (<NavigationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<NavigationStatus> is deprecated: use robot_local_control_msgs-msg:NavigationStatus instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:type-val is deprecated.  Use robot_local_control_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:state-val is deprecated.  Use robot_local_control_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationStatus>)))
    "Constants for message type '<NavigationStatus>"
  '((:NAVIGATION_TYPE_NONE . none)
    (:NAVIGATION_TYPE_1 . 1)
    (:NAVIGATION_TYPE_2 . 2)
    (:NAVIGATION_TYPE_3 . 3)
    (:NAVIGATION_STATE_INIT . init)
    (:NAVIGATION_STATE_STANDBY . standby)
    (:NAVIGATION_STATE_READY . ready)
    (:NAVIGATION_STATE_EMERGENCY . emergency)
    (:NAVIGATION_STATE_FAILURE . failure))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationStatus)))
    "Constants for message type 'NavigationStatus"
  '((:NAVIGATION_TYPE_NONE . none)
    (:NAVIGATION_TYPE_1 . 1)
    (:NAVIGATION_TYPE_2 . 2)
    (:NAVIGATION_TYPE_3 . 3)
    (:NAVIGATION_STATE_INIT . init)
    (:NAVIGATION_STATE_STANDBY . standby)
    (:NAVIGATION_STATE_READY . ready)
    (:NAVIGATION_STATE_EMERGENCY . emergency)
    (:NAVIGATION_STATE_FAILURE . failure))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatus>) ostream)
  "Serializes a message object of type '<NavigationStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatus>) istream)
  "Deserializes a message object of type '<NavigationStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatus>)))
  "Returns string type for a message object of type '<NavigationStatus>"
  "robot_local_control_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatus)))
  "Returns string type for a message object of type 'NavigationStatus"
  "robot_local_control_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatus>)))
  "Returns md5sum for a message object of type '<NavigationStatus>"
  "c5c9b34f80bcdaf33edc1d8103d13065")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatus)))
  "Returns md5sum for a message object of type 'NavigationStatus"
  "c5c9b34f80bcdaf33edc1d8103d13065")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatus>)))
  "Returns full string definition for message of type '<NavigationStatus>"
  (cl:format cl:nil "# type of navigation package/algorithm currently used~%string NAVIGATION_TYPE_NONE=none~%# move_base~%string NAVIGATION_TYPE_1=1~%# purepursuit~%string NAVIGATION_TYPE_2=2~%# Dock~%string NAVIGATION_TYPE_3=3 ~%~%# state of the navigation node running~%string NAVIGATION_STATE_INIT=init~%string NAVIGATION_STATE_STANDBY=standby~%string NAVIGATION_STATE_READY=ready~%string NAVIGATION_STATE_EMERGENCY=emergency~%string NAVIGATION_STATE_FAILURE=failure~%~%# Navigation algorithm being used~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatus)))
  "Returns full string definition for message of type 'NavigationStatus"
  (cl:format cl:nil "# type of navigation package/algorithm currently used~%string NAVIGATION_TYPE_NONE=none~%# move_base~%string NAVIGATION_TYPE_1=1~%# purepursuit~%string NAVIGATION_TYPE_2=2~%# Dock~%string NAVIGATION_TYPE_3=3 ~%~%# state of the navigation node running~%string NAVIGATION_STATE_INIT=init~%string NAVIGATION_STATE_STANDBY=standby~%string NAVIGATION_STATE_READY=ready~%string NAVIGATION_STATE_EMERGENCY=emergency~%string NAVIGATION_STATE_FAILURE=failure~%~%# Navigation algorithm being used~%string type~%~%# INIT, READY, EMERGENCY, FAILURE~%string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatus
    (cl:cons ':type (type msg))
    (cl:cons ':state (state msg))
))
