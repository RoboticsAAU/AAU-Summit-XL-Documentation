; Auto-generated. Do not edit!


(cl:in-package robotnik_rms_msgs-msg)


;//! \htmlinclude mission.msg.html

(cl:defclass <mission> (roslisp-msg-protocol:ros-message)
  ((name_mission
    :reader name_mission
    :initarg :name_mission
    :type cl:string
    :initform "")
   (id_mission
    :reader id_mission
    :initarg :id_mission
    :type cl:integer
    :initform 0)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (actions
    :reader actions
    :initarg :actions
    :type (cl:vector robotnik_rms_msgs-msg:action)
   :initform (cl:make-array 0 :element-type 'robotnik_rms_msgs-msg:action :initial-element (cl:make-instance 'robotnik_rms_msgs-msg:action))))
)

(cl:defclass mission (<mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-msg:<mission> is deprecated: use robotnik_rms_msgs-msg:mission instead.")))

(cl:ensure-generic-function 'name_mission-val :lambda-list '(m))
(cl:defmethod name_mission-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:name_mission-val is deprecated.  Use robotnik_rms_msgs-msg:name_mission instead.")
  (name_mission m))

(cl:ensure-generic-function 'id_mission-val :lambda-list '(m))
(cl:defmethod id_mission-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:id_mission-val is deprecated.  Use robotnik_rms_msgs-msg:id_mission instead.")
  (id_mission m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:description-val is deprecated.  Use robotnik_rms_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:actions-val is deprecated.  Use robotnik_rms_msgs-msg:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission>) ostream)
  "Serializes a message object of type '<mission>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_mission))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_mission))
  (cl:let* ((signed (cl:slot-value msg 'id_mission)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission>) istream)
  "Deserializes a message object of type '<mission>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_mission) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_mission) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_mission) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_rms_msgs-msg:action))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission>)))
  "Returns string type for a message object of type '<mission>"
  "robotnik_rms_msgs/mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission)))
  "Returns string type for a message object of type 'mission"
  "robotnik_rms_msgs/mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission>)))
  "Returns md5sum for a message object of type '<mission>"
  "78cd14bad56ac69e0a4b2c9b5cf0cce1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission)))
  "Returns md5sum for a message object of type 'mission"
  "78cd14bad56ac69e0a4b2c9b5cf0cce1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission>)))
  "Returns full string definition for message of type '<mission>"
  (cl:format cl:nil "string name_mission~%int32 id_mission~%string description~%robotnik_rms_msgs/action[] actions~%~%================================================================================~%MSG: robotnik_rms_msgs/action~%~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission)))
  "Returns full string definition for message of type 'mission"
  (cl:format cl:nil "string name_mission~%int32 id_mission~%string description~%robotnik_rms_msgs/action[] actions~%~%================================================================================~%MSG: robotnik_rms_msgs/action~%~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name_mission))
     4
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission>))
  "Converts a ROS message object to a list"
  (cl:list 'mission
    (cl:cons ':name_mission (name_mission msg))
    (cl:cons ':id_mission (id_mission msg))
    (cl:cons ':description (description msg))
    (cl:cons ':actions (actions msg))
))
