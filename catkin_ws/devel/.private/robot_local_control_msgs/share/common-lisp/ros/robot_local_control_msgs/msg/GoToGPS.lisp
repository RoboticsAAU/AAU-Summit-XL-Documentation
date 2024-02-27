; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude GoToGPS.msg.html

(cl:defclass <GoToGPS> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (goals
    :reader goals
    :initarg :goals
    :type (cl:vector robot_local_control_msgs-msg:PointGPS)
   :initform (cl:make-array 0 :element-type 'robot_local_control_msgs-msg:PointGPS :initial-element (cl:make-instance 'robot_local_control_msgs-msg:PointGPS)))
   (max_velocity
    :reader max_velocity
    :initarg :max_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass GoToGPS (<GoToGPS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToGPS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToGPS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<GoToGPS> is deprecated: use robot_local_control_msgs-msg:GoToGPS instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <GoToGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:frame_id-val is deprecated.  Use robot_local_control_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <GoToGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:goals-val is deprecated.  Use robot_local_control_msgs-msg:goals instead.")
  (goals m))

(cl:ensure-generic-function 'max_velocity-val :lambda-list '(m))
(cl:defmethod max_velocity-val ((m <GoToGPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:max_velocity-val is deprecated.  Use robot_local_control_msgs-msg:max_velocity instead.")
  (max_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToGPS>) ostream)
  "Serializes a message object of type '<GoToGPS>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToGPS>) istream)
  "Deserializes a message object of type '<GoToGPS>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_local_control_msgs-msg:PointGPS))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToGPS>)))
  "Returns string type for a message object of type '<GoToGPS>"
  "robot_local_control_msgs/GoToGPS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToGPS)))
  "Returns string type for a message object of type 'GoToGPS"
  "robot_local_control_msgs/GoToGPS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToGPS>)))
  "Returns md5sum for a message object of type '<GoToGPS>"
  "1d4fbf4472de3812fca8b47adb405a90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToGPS)))
  "Returns md5sum for a message object of type 'GoToGPS"
  "1d4fbf4472de3812fca8b47adb405a90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToGPS>)))
  "Returns full string definition for message of type '<GoToGPS>"
  (cl:format cl:nil "string frame_id~%~%PointGPS[] goals~%~%# Sets the max velocity through the path~%float32 max_velocity~%~%================================================================================~%MSG: robot_local_control_msgs/PointGPS~%float64 latitude~%float64 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToGPS)))
  "Returns full string definition for message of type 'GoToGPS"
  (cl:format cl:nil "string frame_id~%~%PointGPS[] goals~%~%# Sets the max velocity through the path~%float32 max_velocity~%~%================================================================================~%MSG: robot_local_control_msgs/PointGPS~%float64 latitude~%float64 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToGPS>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToGPS>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToGPS
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':goals (goals msg))
    (cl:cons ':max_velocity (max_velocity msg))
))
