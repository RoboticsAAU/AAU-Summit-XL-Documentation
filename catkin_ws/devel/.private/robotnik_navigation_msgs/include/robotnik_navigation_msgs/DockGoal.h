// Generated by gencpp from file robotnik_navigation_msgs/DockGoal.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_NAVIGATION_MSGS_MESSAGE_DOCKGOAL_H
#define ROBOTNIK_NAVIGATION_MSGS_MESSAGE_DOCKGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Twist.h>

namespace robotnik_navigation_msgs
{
template <class ContainerAllocator>
struct DockGoal_
{
  typedef DockGoal_<ContainerAllocator> Type;

  DockGoal_()
    : dock_frame()
    , robot_dock_frame()
    , dock_offset()
    , maximum_velocity()  {
    }
  DockGoal_(const ContainerAllocator& _alloc)
    : dock_frame(_alloc)
    , robot_dock_frame(_alloc)
    , dock_offset(_alloc)
    , maximum_velocity(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _dock_frame_type;
  _dock_frame_type dock_frame;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _robot_dock_frame_type;
  _robot_dock_frame_type robot_dock_frame;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _dock_offset_type;
  _dock_offset_type dock_offset;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _maximum_velocity_type;
  _maximum_velocity_type maximum_velocity;





  typedef boost::shared_ptr< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> const> ConstPtr;

}; // struct DockGoal_

typedef ::robotnik_navigation_msgs::DockGoal_<std::allocator<void> > DockGoal;

typedef boost::shared_ptr< ::robotnik_navigation_msgs::DockGoal > DockGoalPtr;
typedef boost::shared_ptr< ::robotnik_navigation_msgs::DockGoal const> DockGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator1> & lhs, const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator2> & rhs)
{
  return lhs.dock_frame == rhs.dock_frame &&
    lhs.robot_dock_frame == rhs.robot_dock_frame &&
    lhs.dock_offset == rhs.dock_offset &&
    lhs.maximum_velocity == rhs.maximum_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator1> & lhs, const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotnik_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4dcb1e3a11689b9912d1f91234a9741";
  }

  static const char* value(const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4dcb1e3a11689b9ULL;
  static const uint64_t static_value2 = 0x912d1f91234a9741ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotnik_navigation_msgs/DockGoal";
  }

  static const char* value(const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# goal\n"
"string dock_frame\n"
"string robot_dock_frame\n"
"geometry_msgs/Pose2D dock_offset\n"
"geometry_msgs/Twist maximum_velocity\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dock_frame);
      stream.next(m.robot_dock_frame);
      stream.next(m.dock_offset);
      stream.next(m.maximum_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DockGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotnik_navigation_msgs::DockGoal_<ContainerAllocator>& v)
  {
    s << indent << "dock_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.dock_frame);
    s << indent << "robot_dock_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.robot_dock_frame);
    s << indent << "dock_offset: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.dock_offset);
    s << indent << "maximum_velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.maximum_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTNIK_NAVIGATION_MSGS_MESSAGE_DOCKGOAL_H
