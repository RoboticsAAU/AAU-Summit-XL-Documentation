; Auto-generated. Do not edit!


(cl:in-package robot_simple_command_manager_msgs-msg)


;//! \htmlinclude StatusCodes.msg.html

(cl:defclass <StatusCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatusCodes (<StatusCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_simple_command_manager_msgs-msg:<StatusCodes> is deprecated: use robot_simple_command_manager_msgs-msg:StatusCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusCodes>)))
    "Constants for message type '<StatusCodes>"
  '((:ACTIVE . 1)
    (:CANCELLED . 2)
    (:SUCCEEDED . 3)
    (:FAILED . 4)
    (:REJECTED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusCodes)))
    "Constants for message type 'StatusCodes"
  '((:ACTIVE . 1)
    (:CANCELLED . 2)
    (:SUCCEEDED . 3)
    (:FAILED . 4)
    (:REJECTED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusCodes>) ostream)
  "Serializes a message object of type '<StatusCodes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusCodes>) istream)
  "Deserializes a message object of type '<StatusCodes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusCodes>)))
  "Returns string type for a message object of type '<StatusCodes>"
  "robot_simple_command_manager_msgs/StatusCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusCodes)))
  "Returns string type for a message object of type 'StatusCodes"
  "robot_simple_command_manager_msgs/StatusCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusCodes>)))
  "Returns md5sum for a message object of type '<StatusCodes>"
  "d4c26888d420c5a0f01c58b3c577e13c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusCodes)))
  "Returns md5sum for a message object of type 'StatusCodes"
  "d4c26888d420c5a0f01c58b3c577e13c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusCodes>)))
  "Returns full string definition for message of type '<StatusCodes>"
  (cl:format cl:nil "int16 ACTIVE    =  1~%int16 CANCELLED =  2~%int16 SUCCEEDED =  3~%int16 FAILED    =  4~%int16 REJECTED  =  5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusCodes)))
  "Returns full string definition for message of type 'StatusCodes"
  (cl:format cl:nil "int16 ACTIVE    =  1~%int16 CANCELLED =  2~%int16 SUCCEEDED =  3~%int16 FAILED    =  4~%int16 REJECTED  =  5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusCodes
))
