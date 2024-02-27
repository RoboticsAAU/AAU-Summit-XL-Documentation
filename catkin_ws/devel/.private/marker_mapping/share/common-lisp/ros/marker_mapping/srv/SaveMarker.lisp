; Auto-generated. Do not edit!


(cl:in-package marker_mapping-srv)


;//! \htmlinclude SaveMarker-request.msg.html

(cl:defclass <SaveMarker-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SaveMarker-request (<SaveMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<SaveMarker-request> is deprecated: use marker_mapping-srv:SaveMarker-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SaveMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:id-val is deprecated.  Use marker_mapping-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:filename-val is deprecated.  Use marker_mapping-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMarker-request>) ostream)
  "Serializes a message object of type '<SaveMarker-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMarker-request>) istream)
  "Deserializes a message object of type '<SaveMarker-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMarker-request>)))
  "Returns string type for a service object of type '<SaveMarker-request>"
  "marker_mapping/SaveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMarker-request)))
  "Returns string type for a service object of type 'SaveMarker-request"
  "marker_mapping/SaveMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMarker-request>)))
  "Returns md5sum for a message object of type '<SaveMarker-request>"
  "17128a6bd3a25a11bd83a0c0ca87deda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMarker-request)))
  "Returns md5sum for a message object of type 'SaveMarker-request"
  "17128a6bd3a25a11bd83a0c0ca87deda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMarker-request>)))
  "Returns full string definition for message of type '<SaveMarker-request>"
  (cl:format cl:nil "# List of markers to save (if no one, it saves any marker detected)~%uint32[] id~%# (optional) Filename to save the marker list~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMarker-request)))
  "Returns full string definition for message of type 'SaveMarker-request"
  (cl:format cl:nil "# List of markers to save (if no one, it saves any marker detected)~%uint32[] id~%# (optional) Filename to save the marker list~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMarker-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMarker-request
    (cl:cons ':id (id msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SaveMarker-response.msg.html

(cl:defclass <SaveMarker-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveMarker-response (<SaveMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<SaveMarker-response> is deprecated: use marker_mapping-srv:SaveMarker-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SaveMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:ret-val is deprecated.  Use marker_mapping-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMarker-response>) ostream)
  "Serializes a message object of type '<SaveMarker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMarker-response>) istream)
  "Deserializes a message object of type '<SaveMarker-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMarker-response>)))
  "Returns string type for a service object of type '<SaveMarker-response>"
  "marker_mapping/SaveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMarker-response)))
  "Returns string type for a service object of type 'SaveMarker-response"
  "marker_mapping/SaveMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMarker-response>)))
  "Returns md5sum for a message object of type '<SaveMarker-response>"
  "17128a6bd3a25a11bd83a0c0ca87deda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMarker-response)))
  "Returns md5sum for a message object of type 'SaveMarker-response"
  "17128a6bd3a25a11bd83a0c0ca87deda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMarker-response>)))
  "Returns full string definition for message of type '<SaveMarker-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMarker-response)))
  "Returns full string definition for message of type 'SaveMarker-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMarker-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMarker-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveMarker)))
  'SaveMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveMarker)))
  'SaveMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMarker)))
  "Returns string type for a service object of type '<SaveMarker>"
  "marker_mapping/SaveMarker")