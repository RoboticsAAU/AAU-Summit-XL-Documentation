; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-srv)


;//! \htmlinclude AddSchedule-request.msg.html

(cl:defclass <AddSchedule-request> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type robot_simple_command_manager_msgs-msg:EventScheduler
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:EventScheduler)))
)

(cl:defclass AddSchedule-request (<AddSchedule-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddSchedule-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddSchedule-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<AddSchedule-request> is deprecated: use robot_simple_command_manager_msgs-srv:AddSchedule-request instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <AddSchedule-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:event-val is deprecated.  Use robot_simple_command_manager_msgs-srv:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddSchedule-request>) ostream)
  "Serializes a message object of type '<AddSchedule-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddSchedule-request>) istream)
  "Deserializes a message object of type '<AddSchedule-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddSchedule-request>)))
  "Returns string type for a service object of type '<AddSchedule-request>"
  "robot_simple_command_manager_msgs/AddScheduleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSchedule-request)))
  "Returns string type for a service object of type 'AddSchedule-request"
  "robot_simple_command_manager_msgs/AddScheduleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddSchedule-request>)))
  "Returns md5sum for a message object of type '<AddSchedule-request>"
  "b7a10e19aed6c1fa97294e8f10d01f3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddSchedule-request)))
  "Returns md5sum for a message object of type 'AddSchedule-request"
  "b7a10e19aed6c1fa97294e8f10d01f3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddSchedule-request>)))
  "Returns full string definition for message of type '<AddSchedule-request>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/EventScheduler event~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddSchedule-request)))
  "Returns full string definition for message of type 'AddSchedule-request"
  (cl:format cl:nil "robot_simple_command_manager_msgs/EventScheduler event~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/EventScheduler~%string id~%int32[] wk~%string date_start~%string date_end~%int32 hour~%int32 minute~%int32 repeat_hour~%bool enabled~%string commands~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddSchedule-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddSchedule-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddSchedule-request
    (cl:cons ':event (event msg))
))
;//! \htmlinclude AddSchedule-response.msg.html

(cl:defclass <AddSchedule-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type robot_simple_command_manager_msgs-msg:ReturnMessage
    :initform (cl:make-instance 'robot_simple_command_manager_msgs-msg:ReturnMessage)))
)

(cl:defclass AddSchedule-response (<AddSchedule-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddSchedule-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddSchedule-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-srv:<AddSchedule-response> is deprecated: use robot_simple_command_manager_msgs-srv:AddSchedule-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <AddSchedule-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_simple_command_manager_msgs-srv:ret-val is deprecated.  Use robot_simple_command_manager_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddSchedule-response>) ostream)
  "Serializes a message object of type '<AddSchedule-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ret) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddSchedule-response>) istream)
  "Deserializes a message object of type '<AddSchedule-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ret) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddSchedule-response>)))
  "Returns string type for a service object of type '<AddSchedule-response>"
  "robot_simple_command_manager_msgs/AddScheduleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSchedule-response)))
  "Returns string type for a service object of type 'AddSchedule-response"
  "robot_simple_command_manager_msgs/AddScheduleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddSchedule-response>)))
  "Returns md5sum for a message object of type '<AddSchedule-response>"
  "b7a10e19aed6c1fa97294e8f10d01f3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddSchedule-response)))
  "Returns md5sum for a message object of type 'AddSchedule-response"
  "b7a10e19aed6c1fa97294e8f10d01f3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddSchedule-response>)))
  "Returns full string definition for message of type '<AddSchedule-response>"
  (cl:format cl:nil "robot_simple_command_manager_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddSchedule-response)))
  "Returns full string definition for message of type 'AddSchedule-response"
  (cl:format cl:nil "robot_simple_command_manager_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robot_simple_command_manager_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddSchedule-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddSchedule-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddSchedule-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddSchedule)))
  'AddSchedule-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddSchedule)))
  'AddSchedule-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddSchedule)))
  "Returns string type for a service object of type '<AddSchedule>"
  "robot_simple_command_manager_msgs/AddSchedule")