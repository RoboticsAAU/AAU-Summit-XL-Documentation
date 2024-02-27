; Auto-generated. Do not edit!


(cl:in-package robotnik_base_hw_sim-srv)


;//! \htmlinclude SimplePlace-request.msg.html

(cl:defclass <SimplePlace-request> (roslisp-msg-protocol:ros-message)
  ((robot_model
    :reader robot_model
    :initarg :robot_model
    :type cl:string
    :initform ""))
)

(cl:defclass SimplePlace-request (<SimplePlace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePlace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePlace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<SimplePlace-request> is deprecated: use robotnik_base_hw_sim-srv:SimplePlace-request instead.")))

(cl:ensure-generic-function 'robot_model-val :lambda-list '(m))
(cl:defmethod robot_model-val ((m <SimplePlace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:robot_model-val is deprecated.  Use robotnik_base_hw_sim-srv:robot_model instead.")
  (robot_model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePlace-request>) ostream)
  "Serializes a message object of type '<SimplePlace-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_model))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePlace-request>) istream)
  "Deserializes a message object of type '<SimplePlace-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePlace-request>)))
  "Returns string type for a service object of type '<SimplePlace-request>"
  "robotnik_base_hw_sim/SimplePlaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePlace-request)))
  "Returns string type for a service object of type 'SimplePlace-request"
  "robotnik_base_hw_sim/SimplePlaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePlace-request>)))
  "Returns md5sum for a message object of type '<SimplePlace-request>"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePlace-request)))
  "Returns md5sum for a message object of type 'SimplePlace-request"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePlace-request>)))
  "Returns full string definition for message of type '<SimplePlace-request>"
  (cl:format cl:nil "# gazebo robot model ~%string robot_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePlace-request)))
  "Returns full string definition for message of type 'SimplePlace-request"
  (cl:format cl:nil "# gazebo robot model ~%string robot_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePlace-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_model))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePlace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePlace-request
    (cl:cons ':robot_model (robot_model msg))
))
;//! \htmlinclude SimplePlace-response.msg.html

(cl:defclass <SimplePlace-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SimplePlace-response (<SimplePlace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplePlace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplePlace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<SimplePlace-response> is deprecated: use robotnik_base_hw_sim-srv:SimplePlace-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SimplePlace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:success-val is deprecated.  Use robotnik_base_hw_sim-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SimplePlace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:msg-val is deprecated.  Use robotnik_base_hw_sim-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplePlace-response>) ostream)
  "Serializes a message object of type '<SimplePlace-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplePlace-response>) istream)
  "Deserializes a message object of type '<SimplePlace-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplePlace-response>)))
  "Returns string type for a service object of type '<SimplePlace-response>"
  "robotnik_base_hw_sim/SimplePlaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePlace-response)))
  "Returns string type for a service object of type 'SimplePlace-response"
  "robotnik_base_hw_sim/SimplePlaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplePlace-response>)))
  "Returns md5sum for a message object of type '<SimplePlace-response>"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplePlace-response)))
  "Returns md5sum for a message object of type 'SimplePlace-response"
  "95799f2d58893c79e6082b9161169c3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplePlace-response>)))
  "Returns full string definition for message of type '<SimplePlace-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplePlace-response)))
  "Returns full string definition for message of type 'SimplePlace-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplePlace-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplePlace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplePlace-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimplePlace)))
  'SimplePlace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimplePlace)))
  'SimplePlace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplePlace)))
  "Returns string type for a service object of type '<SimplePlace>"
  "robotnik_base_hw_sim/SimplePlace")