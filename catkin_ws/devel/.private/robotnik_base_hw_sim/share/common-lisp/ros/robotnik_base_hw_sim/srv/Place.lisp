; Auto-generated. Do not edit!


(cl:in-package robotnik_base_hw_sim-srv)


;//! \htmlinclude Place-request.msg.html

(cl:defclass <Place-request> (roslisp-msg-protocol:ros-message)
  ((object_model
    :reader object_model
    :initarg :object_model
    :type cl:string
    :initform "")
   (robot_model
    :reader robot_model
    :initarg :robot_model
    :type cl:string
    :initform ""))
)

(cl:defclass Place-request (<Place-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Place-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Place-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<Place-request> is deprecated: use robotnik_base_hw_sim-srv:Place-request instead.")))

(cl:ensure-generic-function 'object_model-val :lambda-list '(m))
(cl:defmethod object_model-val ((m <Place-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:object_model-val is deprecated.  Use robotnik_base_hw_sim-srv:object_model instead.")
  (object_model m))

(cl:ensure-generic-function 'robot_model-val :lambda-list '(m))
(cl:defmethod robot_model-val ((m <Place-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:robot_model-val is deprecated.  Use robotnik_base_hw_sim-srv:robot_model instead.")
  (robot_model m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Place-request>) ostream)
  "Serializes a message object of type '<Place-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_model))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Place-request>) istream)
  "Deserializes a message object of type '<Place-request>"
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
      (cl:setf (cl:slot-value msg 'robot_model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Place-request>)))
  "Returns string type for a service object of type '<Place-request>"
  "robotnik_base_hw_sim/PlaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place-request)))
  "Returns string type for a service object of type 'Place-request"
  "robotnik_base_hw_sim/PlaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Place-request>)))
  "Returns md5sum for a message object of type '<Place-request>"
  "07bbfe2a52b1b081057b9ea660d0c474")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Place-request)))
  "Returns md5sum for a message object of type 'Place-request"
  "07bbfe2a52b1b081057b9ea660d0c474")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Place-request>)))
  "Returns full string definition for message of type '<Place-request>"
  (cl:format cl:nil "# attach object link into robot link~%# Links and models are refered to Gazebo~%string object_model~%string robot_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Place-request)))
  "Returns full string definition for message of type 'Place-request"
  (cl:format cl:nil "# attach object link into robot link~%# Links and models are refered to Gazebo~%string object_model~%string robot_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Place-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_model))
     4 (cl:length (cl:slot-value msg 'robot_model))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Place-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Place-request
    (cl:cons ':object_model (object_model msg))
    (cl:cons ':robot_model (robot_model msg))
))
;//! \htmlinclude Place-response.msg.html

(cl:defclass <Place-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Place-response (<Place-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Place-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Place-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-srv:<Place-response> is deprecated: use robotnik_base_hw_sim-srv:Place-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Place-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:success-val is deprecated.  Use robotnik_base_hw_sim-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <Place-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-srv:msg-val is deprecated.  Use robotnik_base_hw_sim-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Place-response>) ostream)
  "Serializes a message object of type '<Place-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Place-response>) istream)
  "Deserializes a message object of type '<Place-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Place-response>)))
  "Returns string type for a service object of type '<Place-response>"
  "robotnik_base_hw_sim/PlaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place-response)))
  "Returns string type for a service object of type 'Place-response"
  "robotnik_base_hw_sim/PlaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Place-response>)))
  "Returns md5sum for a message object of type '<Place-response>"
  "07bbfe2a52b1b081057b9ea660d0c474")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Place-response)))
  "Returns md5sum for a message object of type 'Place-response"
  "07bbfe2a52b1b081057b9ea660d0c474")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Place-response>)))
  "Returns full string definition for message of type '<Place-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Place-response)))
  "Returns full string definition for message of type 'Place-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Place-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Place-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Place-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Place)))
  'Place-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Place)))
  'Place-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place)))
  "Returns string type for a service object of type '<Place>"
  "robotnik_base_hw_sim/Place")