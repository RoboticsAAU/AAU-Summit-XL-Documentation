; Auto-generated. Do not edit!


(cl:in-package robotnik_rms_msgs-msg)


;//! \htmlinclude action.msg.html

(cl:defclass <action> (roslisp-msg-protocol:ros-message)
  ((type_action
    :reader type_action
    :initarg :type_action
    :type cl:integer
    :initform 0)
   (id_action
    :reader id_action
    :initarg :id_action
    :type cl:string
    :initform "")
   (name_action
    :reader name_action
    :initarg :name_action
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass action (<action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_rms_msgs-msg:<action> is deprecated: use robotnik_rms_msgs-msg:action instead.")))

(cl:ensure-generic-function 'type_action-val :lambda-list '(m))
(cl:defmethod type_action-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:type_action-val is deprecated.  Use robotnik_rms_msgs-msg:type_action instead.")
  (type_action m))

(cl:ensure-generic-function 'id_action-val :lambda-list '(m))
(cl:defmethod id_action-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:id_action-val is deprecated.  Use robotnik_rms_msgs-msg:id_action instead.")
  (id_action m))

(cl:ensure-generic-function 'name_action-val :lambda-list '(m))
(cl:defmethod name_action-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:name_action-val is deprecated.  Use robotnik_rms_msgs-msg:name_action instead.")
  (name_action m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_rms_msgs-msg:description-val is deprecated.  Use robotnik_rms_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action>) ostream)
  "Serializes a message object of type '<action>"
  (cl:let* ((signed (cl:slot-value msg 'type_action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id_action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action>) istream)
  "Deserializes a message object of type '<action>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id_action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action>)))
  "Returns string type for a message object of type '<action>"
  "robotnik_rms_msgs/action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action)))
  "Returns string type for a message object of type 'action"
  "robotnik_rms_msgs/action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action>)))
  "Returns md5sum for a message object of type '<action>"
  "f34f90c37eb15fa05a08b918922af021")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action)))
  "Returns md5sum for a message object of type 'action"
  "f34f90c37eb15fa05a08b918922af021")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action>)))
  "Returns full string definition for message of type '<action>"
  (cl:format cl:nil "~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action)))
  "Returns full string definition for message of type 'action"
  (cl:format cl:nil "~%int32 type_action~%string id_action~%string name_action~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'id_action))
     4 (cl:length (cl:slot-value msg 'name_action))
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action>))
  "Converts a ROS message object to a list"
  (cl:list 'action
    (cl:cons ':type_action (type_action msg))
    (cl:cons ':id_action (id_action msg))
    (cl:cons ':name_action (name_action msg))
    (cl:cons ':description (description msg))
))
