; Auto-generated. Do not edit!


(cl:in-package axis_camera-msg)


;//! \htmlinclude ptz.msg.html

(cl:defclass <ptz> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0)
   (zoom
    :reader zoom
    :initarg :zoom
    :type cl:float
    :initform 0.0)
   (relative
    :reader relative
    :initarg :relative
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ptz (<ptz>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ptz>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ptz)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name axis_camera-msg:<ptz> is deprecated: use axis_camera-msg:ptz instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <ptz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-msg:pan-val is deprecated.  Use axis_camera-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <ptz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-msg:tilt-val is deprecated.  Use axis_camera-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'zoom-val :lambda-list '(m))
(cl:defmethod zoom-val ((m <ptz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-msg:zoom-val is deprecated.  Use axis_camera-msg:zoom instead.")
  (zoom m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <ptz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-msg:relative-val is deprecated.  Use axis_camera-msg:relative instead.")
  (relative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ptz>) ostream)
  "Serializes a message object of type '<ptz>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zoom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ptz>) istream)
  "Deserializes a message object of type '<ptz>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zoom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'relative) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ptz>)))
  "Returns string type for a message object of type '<ptz>"
  "axis_camera/ptz")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ptz)))
  "Returns string type for a message object of type 'ptz"
  "axis_camera/ptz")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ptz>)))
  "Returns md5sum for a message object of type '<ptz>"
  "84c4d3942670b5782592e834a63c50ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ptz)))
  "Returns md5sum for a message object of type 'ptz"
  "84c4d3942670b5782592e834a63c50ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ptz>)))
  "Returns full string definition for message of type '<ptz>"
  (cl:format cl:nil "# PAN value~%float32 pan~%# Tilt value~%float32 tilt~%# Zoom value~%float32 zoom~%# Flag for relative  movements~%bool relative~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ptz)))
  "Returns full string definition for message of type 'ptz"
  (cl:format cl:nil "# PAN value~%float32 pan~%# Tilt value~%float32 tilt~%# Zoom value~%float32 zoom~%# Flag for relative  movements~%bool relative~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ptz>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ptz>))
  "Converts a ROS message object to a list"
  (cl:list 'ptz
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':zoom (zoom msg))
    (cl:cons ':relative (relative msg))
))
