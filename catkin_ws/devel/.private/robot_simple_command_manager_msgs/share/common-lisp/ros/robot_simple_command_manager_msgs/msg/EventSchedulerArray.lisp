; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude EventSchedulerArray.msg.html

(cl:defclass <EventSchedulerArray> (roslisp-msg-protocol:ros-message)
  ((Events
    :reader Events
    :initarg :Events
    :type (cl:vector robot_simple_command_manager_msgs-msg:EventScheduler)
   :initform (cl:make-array 0 :element-type 'robot_simple_command_manager_msgs-msg:EventScheduler :initial-element (cl:make-instance 'robot_simple_command_manager_msgs-msg:EventScheduler))))
)

(cl:defclass EventSchedulerArray (<EventSchedulerArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventSchedulerArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventSchedulerArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<EventSchedulerArray> is deprecated: use robot_simple_command_manager_msgs-msg:EventSchedulerArray instead.")))

(cl:ensure-generic-function 'Events-val :lambda-list '(m))
(cl:defmethod Events-val ((m <EventSchedulerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-msg:Events-val is deprecated.  Use robot_simple_command_manager_msgs-msg:Events instead.")
  (Events m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventSchedulerArray>) ostream)
  "Serializes a message object of type '<EventSchedulerArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Events))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Events))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventSchedulerArray>) istream)
  "Deserializes a message object of type '<EventSchedulerArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Events) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Events)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robot_simple_command_manager_msgs-msg:EventScheduler))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventSchedulerArray>)))
  "Returns string type for a message object of type '<EventSchedulerArray>"
  "robot_simple_command_manager_msgs/EventSchedulerArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventSchedulerArray)))
  "Returns string type for a message object of type 'EventSchedulerArray"
  "robot_simple_command_manager_msgs/EventSchedulerArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventSchedulerArray>)))
  "Returns md5sum for a message object of type '<EventSchedulerArray>"
  "25a91bd6bc6eea637712c34f0a26b0c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventSchedulerArray)))
  "Returns md5sum for a message object of type 'EventSchedulerArray"
  "25a91bd6bc6eea637712c34f0a26b0c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventSchedulerArray>)))
  "Returns full string definition for message of type '<EventSchedulerArray>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/EventScheduler[] Events~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventSchedulerArray)))
  "Returns full string definition for message of type 'EventSchedulerArray"
  (cl:format cl:nil "robot_simple_command_manager_msgs/EventScheduler[] Events~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventSchedulerArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Events) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventSchedulerArray>))
  "Converts a ROS message object to a list"
  (cl:list 'EventSchedulerArray
    (cl:cons ':Events (Events msg))
))
