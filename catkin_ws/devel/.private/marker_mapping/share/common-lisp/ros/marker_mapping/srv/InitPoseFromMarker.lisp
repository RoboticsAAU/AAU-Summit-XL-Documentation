; Auto-generated. Do not edit!


(cl:in-package marker_mapping-srv)


;//! \htmlinclude InitPoseFromMarker-request.msg.html

(cl:defclass <InitPoseFromMarker-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass InitPoseFromMarker-request (<InitPoseFromMarker-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPoseFromMarker-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPoseFromMarker-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<InitPoseFromMarker-request> is deprecated: use marker_mapping-srv:InitPoseFromMarker-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <InitPoseFromMarker-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:id-val is deprecated.  Use marker_mapping-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPoseFromMarker-request>) ostream)
  "Serializes a message object of type '<InitPoseFromMarker-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPoseFromMarker-request>) istream)
  "Deserializes a message object of type '<InitPoseFromMarker-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPoseFromMarker-request>)))
  "Returns string type for a service object of type '<InitPoseFromMarker-request>"
  "marker_mapping/InitPoseFromMarkerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPoseFromMarker-request)))
  "Returns string type for a service object of type 'InitPoseFromMarker-request"
  "marker_mapping/InitPoseFromMarkerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPoseFromMarker-request>)))
  "Returns md5sum for a message object of type '<InitPoseFromMarker-request>"
  "1c1b8afbabfa4d07e7285e6b778506a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPoseFromMarker-request)))
  "Returns md5sum for a message object of type 'InitPoseFromMarker-request"
  "1c1b8afbabfa4d07e7285e6b778506a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPoseFromMarker-request>)))
  "Returns full string definition for message of type '<InitPoseFromMarker-request>"
  (cl:format cl:nil "# Marker selected to load~%uint32[] id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPoseFromMarker-request)))
  "Returns full string definition for message of type 'InitPoseFromMarker-request"
  (cl:format cl:nil "# Marker selected to load~%uint32[] id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPoseFromMarker-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPoseFromMarker-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPoseFromMarker-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude InitPoseFromMarker-response.msg.html

(cl:defclass <InitPoseFromMarker-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass InitPoseFromMarker-response (<InitPoseFromMarker-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitPoseFromMarker-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitPoseFromMarker-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_mapping-srv:<InitPoseFromMarker-response> is deprecated: use marker_mapping-srv:InitPoseFromMarker-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <InitPoseFromMarker-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_mapping-srv:ret-val is deprecated.  Use marker_mapping-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitPoseFromMarker-response>) ostream)
  "Serializes a message object of type '<InitPoseFromMarker-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitPoseFromMarker-response>) istream)
  "Deserializes a message object of type '<InitPoseFromMarker-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitPoseFromMarker-response>)))
  "Returns string type for a service object of type '<InitPoseFromMarker-response>"
  "marker_mapping/InitPoseFromMarkerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPoseFromMarker-response)))
  "Returns string type for a service object of type 'InitPoseFromMarker-response"
  "marker_mapping/InitPoseFromMarkerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitPoseFromMarker-response>)))
  "Returns md5sum for a message object of type '<InitPoseFromMarker-response>"
  "1c1b8afbabfa4d07e7285e6b778506a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitPoseFromMarker-response)))
  "Returns md5sum for a message object of type 'InitPoseFromMarker-response"
  "1c1b8afbabfa4d07e7285e6b778506a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitPoseFromMarker-response>)))
  "Returns full string definition for message of type '<InitPoseFromMarker-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitPoseFromMarker-response)))
  "Returns full string definition for message of type 'InitPoseFromMarker-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitPoseFromMarker-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitPoseFromMarker-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitPoseFromMarker-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitPoseFromMarker)))
  'InitPoseFromMarker-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitPoseFromMarker)))
  'InitPoseFromMarker-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitPoseFromMarker)))
  "Returns string type for a service object of type '<InitPoseFromMarker>"
  "marker_mapping/InitPoseFromMarker")