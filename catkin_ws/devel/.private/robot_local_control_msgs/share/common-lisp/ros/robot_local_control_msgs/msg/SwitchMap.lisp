; Auto-generated. Do not edit!


(cl:in-package robot_local_control_msgs-msg)


;//! \htmlinclude SwitchMap.msg.html

(cl:defclass <SwitchMap> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (theta
    :reader theta
    :initarg :theta
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass SwitchMap (<SwitchMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_local_control_msgs-msg:<SwitchMap> is deprecated: use robot_local_control_msgs-msg:SwitchMap instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <SwitchMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:map-val is deprecated.  Use robot_local_control_msgs-msg:map instead.")
  (map m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SwitchMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:x-val is deprecated.  Use robot_local_control_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SwitchMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:y-val is deprecated.  Use robot_local_control_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <SwitchMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_local_control_msgs-msg:theta-val is deprecated.  Use robot_local_control_msgs-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMap>) ostream)
  "Serializes a message object of type '<SwitchMap>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMap>) istream)
  "Deserializes a message object of type '<SwitchMap>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMap>)))
  "Returns string type for a message object of type '<SwitchMap>"
  "robot_local_control_msgs/SwitchMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMap)))
  "Returns string type for a message object of type 'SwitchMap"
  "robot_local_control_msgs/SwitchMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMap>)))
  "Returns md5sum for a message object of type '<SwitchMap>"
  "a2fabb463b583973fe1c29042f0add80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMap)))
  "Returns md5sum for a message object of type 'SwitchMap"
  "a2fabb463b583973fe1c29042f0add80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMap>)))
  "Returns full string definition for message of type '<SwitchMap>"
  (cl:format cl:nil "# sample values: floor_0, floor_1~%string map~%~%# position and orentation on the new floor~%std_msgs/Float32 x ~%std_msgs/Float32 y~%std_msgs/Float32 theta~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMap)))
  "Returns full string definition for message of type 'SwitchMap"
  (cl:format cl:nil "# sample values: floor_0, floor_1~%string map~%~%# position and orentation on the new floor~%std_msgs/Float32 x ~%std_msgs/Float32 y~%std_msgs/Float32 theta~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMap>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMap>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMap
    (cl:cons ':map (map msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
