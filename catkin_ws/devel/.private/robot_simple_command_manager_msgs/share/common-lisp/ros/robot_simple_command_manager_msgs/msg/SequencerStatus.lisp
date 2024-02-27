; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude SequencerStatus.msg.html

(cl:defclass <SequencerStatus> (roslisp-msg-protocol:ros-message)
  ((loaded_sequences
    :reader loaded_sequences
    :initarg :loaded_sequences
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (current_sequence
    :reader current_sequence
    :initarg :current_sequence
    :type robot_simple_command_manager_msgs-msg:SequenceStatus
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:SequenceStatus))
   (last_error
    :reader last_error
    :initarg :last_error
    :type cl:string
    :initform ""))
)

(cl:defclass SequencerStatus (<SequencerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SequencerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SequencerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<SequencerStatus> is deprecated: use robot_simple_command_manager_msgs-msg:SequencerStatus instead.")))

(cl:ensure-generic-function 'loaded_sequences-val :lambda-list '(m))
(cl:defmethod loaded_sequences-val ((m <SequencerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:loaded_sequences-val is deprecated.  Use robot_simple_command_manager_msgs-msg:loaded_sequences instead.")
  (loaded_sequences m))

(cl:ensure-generic-function 'current_sequence-val :lambda-list '(m))
(cl:defmethod current_sequence-val ((m <SequencerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:current_sequence-val is deprecated.  Use robot_simple_command_manager_msgs-msg:current_sequence instead.")
  (current_sequence m))

(cl:ensure-generic-function 'last_error-val :lambda-list '(m))
(cl:defmethod last_error-val ((m <SequencerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:last_error-val is deprecated.  Use robot_simple_command_manager_msgs-msg:last_error instead.")
  (last_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SequencerStatus>) ostream)
  "Serializes a message object of type '<SequencerStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'loaded_sequences))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'loaded_sequences))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_sequence) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SequencerStatus>) istream)
  "Deserializes a message object of type '<SequencerStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'loaded_sequences) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'loaded_sequences)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_sequence) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SequencerStatus>)))
  "Returns string type for a message object of type '<SequencerStatus>"
  "robot_simple_command_manager_msgs/SequencerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SequencerStatus)))
  "Returns string type for a message object of type 'SequencerStatus"
  "robot_simple_command_manager_msgs/SequencerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SequencerStatus>)))
  "Returns md5sum for a message object of type '<SequencerStatus>"
  "8d7f7e4a8b14f29c9977247d3fad3132")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SequencerStatus)))
  "Returns md5sum for a message object of type 'SequencerStatus"
  "8d7f7e4a8b14f29c9977247d3fad3132")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SequencerStatus>)))
  "Returns full string definition for message of type '<SequencerStatus>"
  (cl:format cl:nil "string[] loaded_sequences ~%SequenceStatus current_sequence ~%string last_error~%================================================================================~%MSG: robot_simple_command_manager_msgs/SequenceStatus~%string name ~%string[] commands ~%string current_command ~%int16 command_index ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SequencerStatus)))
  "Returns full string definition for message of type 'SequencerStatus"
  (cl:format cl:nil "string[] loaded_sequences ~%SequenceStatus current_sequence ~%string last_error~%================================================================================~%MSG: robot_simple_command_manager_msgs/SequenceStatus~%string name ~%string[] commands ~%string current_command ~%int16 command_index ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SequencerStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loaded_sequences) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_sequence))
     4 (cl:length (cl:slot-value msg 'last_error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SequencerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SequencerStatus
    (cl:cons ':loaded_sequences (loaded_sequences msg))
    (cl:cons ':current_sequence (current_sequence msg))
    (cl:cons ':last_error (last_error msg))
))
