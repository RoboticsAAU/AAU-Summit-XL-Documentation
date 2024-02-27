; Auto-generated. Do not edit!


(cl:in-package robotnik_base_hw_sim-msg)


;//! \htmlinclude PickStates.msg.html

(cl:defclass <PickStates> (roslisp-msg-protocol:ros-message)
  ((picks
    :reader picks
    :initarg :picks
    :type (cl:vector robotnik_base_hw_sim-msg:PickState)
   :initform (cl:make-array 0 :element-type 'robotnik_base_hw_sim-msg:PickState :initial-element (cl:make-instance 'robotnik_base_hw_sim-msg:PickState))))
)

(cl:defclass PickStates (<PickStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_base_hw_sim-msg:<PickStates> is deprecated: use robotnik_base_hw_sim-msg:PickStates instead.")))

(cl:ensure-generic-function 'picks-val :lambda-list '(m))
(cl:defmethod picks-val ((m <PickStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_base_hw_sim-msg:picks-val is deprecated.  Use robotnik_base_hw_sim-msg:picks instead.")
  (picks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickStates>) ostream)
  "Serializes a message object of type '<PickStates>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'picks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'picks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickStates>) istream)
  "Deserializes a message object of type '<PickStates>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'picks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'picks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_base_hw_sim-msg:PickState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickStates>)))
  "Returns string type for a message object of type '<PickStates>"
  "robotnik_base_hw_sim/PickStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickStates)))
  "Returns string type for a message object of type 'PickStates"
  "robotnik_base_hw_sim/PickStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickStates>)))
  "Returns md5sum for a message object of type '<PickStates>"
  "a5959bc2f0ba4465d7d86c50b3f3f894")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickStates)))
  "Returns md5sum for a message object of type 'PickStates"
  "a5959bc2f0ba4465d7d86c50b3f3f894")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickStates>)))
  "Returns full string definition for message of type '<PickStates>"
  (cl:format cl:nil "# List of current picks~%PickState[] picks~%================================================================================~%MSG: robotnik_base_hw_sim/PickState~%string id~%string robot_link~%string object_link~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickStates)))
  "Returns full string definition for message of type 'PickStates"
  (cl:format cl:nil "# List of current picks~%PickState[] picks~%================================================================================~%MSG: robotnik_base_hw_sim/PickState~%string id~%string robot_link~%string object_link~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickStates>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'picks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickStates>))
  "Converts a ROS message object to a list"
  (cl:list 'PickStates
    (cl:cons ':picks (picks msg))
))
