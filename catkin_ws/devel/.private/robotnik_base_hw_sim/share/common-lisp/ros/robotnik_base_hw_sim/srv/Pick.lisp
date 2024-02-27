; Auto-generated. Do not edit!


(cl:in-package robotnik_base_hw_sim-srv)


;//! \htmlinclude Pick-request.msg.html

(cl:defclass <Pick-request> (roslisp-msg-protocol:ros-message)
  ((object_model
    :reader object_model
    :initarg :object_model
    :type cl:string
    :initform "")
   (object_link
    :reader object_link
    :initarg :object_link
    :type cl:string
    :initform "")
   (robot_model
    :reader robot_model
    :initarg :robot_model
    :type cl:string
    :initform "")
   (robot_link
    :reader robot_link
    :initarg :robot_link
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Pick-request (<Pick-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pick-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pick-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<Pick-request> is deprecated: use robotnik_base_hw_sim-srv:Pick-request instead.")))

(cl:ensure-generic-function 'object_model-val :lambda-list '(m))
(cl:defmethod object_model-val ((m <Pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:object_model-val is deprecated.  Use robotnik_base_hw_sim-srv:object_model instead.")
  (object_model m))

(cl:ensure-generic-function 'object_link-val :lambda-list '(m))
(cl:defmethod object_link-val ((m <Pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:object_link-val is deprecated.  Use robotnik_base_hw_sim-srv:object_link instead.")
  (object_link m))

(cl:ensure-generic-function 'robot_model-val :lambda-list '(m))
(cl:defmethod robot_model-val ((m <Pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:robot_model-val is deprecated.  Use robotnik_base_hw_sim-srv:robot_model instead.")
  (robot_model m))

(cl:ensure-generic-function 'robot_link-val :lambda-list '(m))
(cl:defmethod robot_link-val ((m <Pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:robot_link-val is deprecated.  Use robotnik_base_hw_sim-srv:robot_link instead.")
  (robot_link m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:pose-val is deprecated.  Use robotnik_base_hw_sim-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pick-request>) ostream)
  "Serializes a message object of type '<Pick-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_link))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_link))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pick-request>) istream)
  "Deserializes a message object of type '<Pick-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pick-request>)))
  "Returns string type for a service object of type '<Pick-request>"
  "robotnik_base_hw_sim/PickRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pick-request)))
  "Returns string type for a service object of type 'Pick-request"
  "robotnik_base_hw_sim/PickRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pick-request>)))
  "Returns md5sum for a message object of type '<Pick-request>"
  "3cf02f67e5f48e886033088859c7e58a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pick-request)))
  "Returns md5sum for a message object of type 'Pick-request"
  "3cf02f67e5f48e886033088859c7e58a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pick-request>)))
  "Returns full string definition for message of type '<Pick-request>"
  (cl:format cl:nil "# attach object link into robot link~%# Links and models are refered to Gazebo~%string object_model~%string object_link~%string robot_model~%string robot_link~%# pose related to the robot link~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pick-request)))
  "Returns full string definition for message of type 'Pick-request"
  (cl:format cl:nil "# attach object link into robot link~%# Links and models are refered to Gazebo~%string object_model~%string object_link~%string robot_model~%string robot_link~%# pose related to the robot link~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pick-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_model))
     4 (cl:length (cl:slot-value msg 'object_link))
     4 (cl:length (cl:slot-value msg 'robot_model))
     4 (cl:length (cl:slot-value msg 'robot_link))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pick-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pick-request
    (cl:cons ':object_model (object_model msg))
    (cl:cons ':object_link (object_link msg))
    (cl:cons ':robot_model (robot_model msg))
    (cl:cons ':robot_link (robot_link msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude Pick-response.msg.html

(cl:defclass <Pick-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass Pick-response (<Pick-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pick-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pick-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<Pick-response> is deprecated: use robotnik_base_hw_sim-srv:Pick-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Pick-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:success-val is deprecated.  Use robotnik_base_hw_sim-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Pick-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:msg-val is deprecated.  Use robotnik_base_hw_sim-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pick-response>) ostream)
  "Serializes a message object of type '<Pick-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pick-response>) istream)
  "Deserializes a message object of type '<Pick-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pick-response>)))
  "Returns string type for a service object of type '<Pick-response>"
  "robotnik_base_hw_sim/PickResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pick-response)))
  "Returns string type for a service object of type 'Pick-response"
  "robotnik_base_hw_sim/PickResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pick-response>)))
  "Returns md5sum for a message object of type '<Pick-response>"
  "3cf02f67e5f48e886033088859c7e58a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pick-response)))
  "Returns md5sum for a message object of type 'Pick-response"
  "3cf02f67e5f48e886033088859c7e58a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pick-response>)))
  "Returns full string definition for message of type '<Pick-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pick-response)))
  "Returns full string definition for message of type 'Pick-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pick-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pick-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pick-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pick)))
  'Pick-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pick)))
  'Pick-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pick)))
  "Returns string type for a service object of type '<Pick>"
  "robotnik_base_hw_sim/Pick")