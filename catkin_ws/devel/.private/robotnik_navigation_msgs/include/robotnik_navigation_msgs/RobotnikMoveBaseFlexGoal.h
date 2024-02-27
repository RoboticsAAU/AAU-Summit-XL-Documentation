// Generated by gencpp from file robotnik_navigation_msgs/RobotnikMoveBaseFlexGoal.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_NAVIGATION_MSGS_MESSAGE_ROBOTNIKMOVEBASEFLEXGOAL_H
#define ROBOTNIK_NAVIGATION_MSGS_MESSAGE_ROBOTNIKMOVEBASEFLEXGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robotnik_navigation_msgs/RobotnikMoveBaseFlexGoalAction.h>

namespace robotnik_navigation_msgs
{
template <class ContainerAllocator>
struct RobotnikMoveBaseFlexGoal_
{
  typedef RobotnikMoveBaseFlexGoal_<ContainerAllocator> Type;

  RobotnikMoveBaseFlexGoal_()
    : goal()  {
    }
  RobotnikMoveBaseFlexGoal_(const ContainerAllocator& _alloc)
    : goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RobotnikMoveBaseFlexGoal_

typedef ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<std::allocator<void> > RobotnikMoveBaseFlexGoal;

typedef boost::shared_ptr< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal > RobotnikMoveBaseFlexGoalPtr;
typedef boost::shared_ptr< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal const> RobotnikMoveBaseFlexGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator1> & lhs, const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator2> & rhs)
{
  return lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator1> & lhs, const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c383b2a93e82f0a6eee475527802b3d";
  }

  static const char* value(const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c383b2a93e82f0aULL;
  static const uint64_t static_value2 = 0x6eee475527802b3dULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_navigation_msgs/RobotnikMoveBaseFlexGoal";
  }

  static const char* value(const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"robotnik_navigation_msgs/RobotnikMoveBaseFlexGoalAction goal\n"
"\n"
"================================================================================\n"
"MSG: robotnik_navigation_msgs/RobotnikMoveBaseFlexGoalAction\n"
"string NAVIGATION_TYPE_POINT_TO_POINT = POINT_TO_POINT\n"
"string NAVIGATION_TYPE_END_POINT= END_POINT\n"
"\n"
"string GOAL_TARGET_TYPE_GPS = GPS\n"
"string GOAL_TARGET_TYPE_CARTESIAN = CARTESIAN\n"
"\n"
"geometry_msgs/PoseStamped[] goal_target_pose\n"
"string[] controller\n"
"string[] planner\n"
"string[] recovery_behaviors\n"
"geometry_msgs/Pose[] goal_tolerance\n"
"string navigation_type\n"
"string goal_target_type\n"
"float32 max_vel\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotnikMoveBaseFlexGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoal_<ContainerAllocator>& v)
  {
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::robotnik_navigation_msgs::RobotnikMoveBaseFlexGoalAction_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_NAVIGATION_MSGS_MESSAGE_ROBOTNIKMOVEBASEFLEXGOAL_H