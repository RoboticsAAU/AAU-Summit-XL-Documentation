; Auto-generated. Do not edit!


(cl:in-package procedures_msgs-msg)


;//! \htmlinclude ProcedureResult.msg.html

(cl:defclass <ProcedureResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ProcedureResult (<ProcedureResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcedureResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcedureResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name procedures_msgs-msg:<ProcedureResult> is deprecated: use procedures_msgs-msg:ProcedureResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ProcedureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-msg:result-val is deprecated.  Use procedures_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ProcedureResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader procedures_msgs-msg:message-val is deprecated.  Use procedures_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProcedureResult>)))
    "Constants for message type '<ProcedureResult>"
  '((:OK . ok)
    (:ERROR . error))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProcedureResult)))
    "Constants for message type 'ProcedureResult"
  '((:OK . ok)
    (:ERROR . error))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcedureResult>) ostream)
  "Serializes a message object of type '<ProcedureResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcedureResult>) istream)
  "Deserializes a message object of type '<ProcedureResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcedureResult>)))
  "Returns string type for a message object of type '<ProcedureResult>"
  "procedures_msgs/ProcedureResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcedureResult)))
  "Returns string type for a message object of type 'ProcedureResult"
  "procedures_msgs/ProcedureResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcedureResult>)))
  "Returns md5sum for a message object of type '<ProcedureResult>"
  "cad7f991fe633cf8d87eb04d33da9dfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcedureResult)))
  "Returns md5sum for a message object of type 'ProcedureResult"
  "cad7f991fe633cf8d87eb04d33da9dfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcedureResult>)))
  "Returns full string definition for message of type '<ProcedureResult>"
  (cl:format cl:nil "# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcedureResult)))
  "Returns full string definition for message of type 'ProcedureResult"
  (cl:format cl:nil "# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message~%string OK=ok~%string ERROR=error~%~%string result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcedureResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcedureResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcedureResult
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
