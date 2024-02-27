; Auto-generated. Do not edit!


(cl:in-package robotnik_base_hw_sim-srv)


;//! \htmlinclude SimplePick-request.msg.html

(cl:defclass <SimplePick-request> (roslisp-msg-protocol:ros-message)
  ((robot_model
    :reader robot_model
    :initarg :robot_model
    :type cl:string
    :initform ""))
)

(cl:defclass SimplePick-request (<SimplePick-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePick-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePick-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<SimplePick-request> is deprecated: use robotnik_base_hw_sim-srv:SimplePick-request instead.")))

(cl:ensure-generic-function 'robot_model-val :lambda-list '(m))
(cl:defmethod robot_model-val ((m <SimplePick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:robot_model-val is deprecated.  Use robotnik_base_hw_sim-srv:robot_model instead.")
  (robot_model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePick-request>) ostream)
  "Serializes a message object of type '<SimplePick-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_model))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePick-request>) istream)
  "Deserializes a message object of type '<SimplePick-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePick-request>)))
  "Returns string type for a service object of type '<SimplePick-request>"
  "robotnik_base_hw_sim/SimplePickRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePick-request)))
  "Returns string type for a service object of type 'SimplePick-request"
  "robotnik_base_hw_sim/SimplePickRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePick-request>)))
  "Returns md5sum for a message object of type '<SimplePick-request>"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePick-request)))
  "Returns md5sum for a message object of type 'SimplePick-request"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePick-request>)))
  "Returns full string definition for message of type '<SimplePick-request>"
  (cl:format cl:nil "# Picks closes object~%string robot_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePick-request)))
  "Returns full string definition for message of type 'SimplePick-request"
  (cl:format cl:nil "# Picks closes object~%string robot_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePick-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_model))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePick-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePick-request
    (cl:cons ':robot_model (robot_model msg))
))
;//! \htmlinclude SimplePick-response.msg.html

(cl:defclass <SimplePick-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SimplePick-response (<SimplePick-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePick-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePick-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<SimplePick-response> is deprecated: use robotnik_base_hw_sim-srv:SimplePick-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SimplePick-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:success-val is deprecated.  Use robotnik_base_hw_sim-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SimplePick-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:msg-val is deprecated.  Use robotnik_base_hw_sim-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePick-response>) ostream)
  "Serializes a message object of type '<SimplePick-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePick-response>) istream)
  "Deserializes a message object of type '<SimplePick-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePick-response>)))
  "Returns string type for a service object of type '<SimplePick-response>"
  "robotnik_base_hw_sim/SimplePickResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePick-response)))
  "Returns string type for a service object of type 'SimplePick-response"
  "robotnik_base_hw_sim/SimplePickResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePick-response>)))
  "Returns md5sum for a message object of type '<SimplePick-response>"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePick-response)))
  "Returns md5sum for a message object of type 'SimplePick-response"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePick-response>)))
  "Returns full string definition for message of type '<SimplePick-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePick-response)))
  "Returns full string definition for message of type 'SimplePick-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePick-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePick-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePick-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimplePick)))
  'SimplePick-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimplePick)))
  'SimplePick-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePick)))
  "Returns string type for a service object of type '<SimplePick>"
  "robotnik_base_hw_sim/SimplePick")