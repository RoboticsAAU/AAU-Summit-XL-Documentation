; Auto-generated. Do not edit!


(cl:in-package robotnik_base_hw_sim-msg)


;//! \htmlinclude PickState.msg.html

(cl:defclass <PickState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (robot_link
    :reader robot_link
    :initarg :robot_link
    :type cl:string
    :initform "")
   (object_link
    :reader object_link
    :initarg :object_link
    :type cl:string
    :initform ""))
)

(cl:defclass PickState (<PickState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-msg:<PickState> is deprecated: use robotnik_base_hw_sim-msg:PickState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-msg:id-val is deprecated.  Use robotnik_base_hw_sim-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'robot_link-val :lambda-list '(m))
(cl:defmethod robot_link-val ((m <PickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-msg:robot_link-val is deprecated.  Use robotnik_base_hw_sim-msg:robot_link instead.")
  (robot_link m))

(cl:ensure-generic-function 'object_link-val :lambda-list '(m))
(cl:defmethod object_link-val ((m <PickState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-msg:object_link-val is deprecated.  Use robotnik_base_hw_sim-msg:object_link instead.")
  (object_link m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickState>) ostream)
  "Serializes a message object of type '<PickState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_link))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_link))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickState>) istream)
  "Deserializes a message object of type '<PickState>"
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
      (cl:setf (cl:slot-value msg 'robot_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickState>)))
  "Returns string type for a message object of type '<PickState>"
  "robotnik_base_hw_sim/PickState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickState)))
  "Returns string type for a message object of type 'PickState"
  "robotnik_base_hw_sim/PickState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickState>)))
  "Returns md5sum for a message object of type '<PickState>"
  "32d0a87c73c7ac6e9560c3de9aff0951")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickState)))
  "Returns md5sum for a message object of type 'PickState"
  "32d0a87c73c7ac6e9560c3de9aff0951")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickState>)))
  "Returns full string definition for message of type '<PickState>"
  (cl:format cl:nil "string id~%string robot_link~%string object_link~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickState)))
  "Returns full string definition for message of type 'PickState"
  (cl:format cl:nil "string id~%string robot_link~%string object_link~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'robot_link))
     4 (cl:length (cl:slot-value msg 'object_link))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickState>))
  "Converts a ROS message object to a list"
  (cl:list 'PickState
    (cl:cons ':id (id msg))
    (cl:cons ':robot_link (robot_link msg))
    (cl:cons ':object_link (object_link msg))
))
