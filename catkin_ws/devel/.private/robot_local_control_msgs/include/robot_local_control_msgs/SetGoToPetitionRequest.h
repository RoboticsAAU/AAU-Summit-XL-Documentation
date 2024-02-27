// Generated by gencpp from file robot_local_control_msgs/SetGoToPetitionRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETGOTOPETITIONREQUEST_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETGOTOPETITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct SetGoToPetitionRequest_
{
  typedef SetGoToPetitionRequest_<ContainerAllocator> Type;

  SetGoToPetitionRequest_()
    : action_namespace()
    , frame_id()  {
    }
  SetGoToPetitionRequest_(const ContainerAllocator& _alloc)
    : action_namespace(_alloc)
    , frame_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_namespace_type;
  _action_namespace_type action_namespace;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;





  typedef boost::shared_ptr< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetGoToPetitionRequest_

typedef ::robot_local_control_msgs::SetGoToPetitionRequest_<std::allocator<void> > SetGoToPetitionRequest;

typedef boost::shared_ptr< ::robot_local_control_msgs::SetGoToPetitionRequest > SetGoToPetitionRequestPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::SetGoToPetitionRequest const> SetGoToPetitionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.action_namespace == rhs.action_namespace &&
    lhs.frame_id == rhs.frame_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1774ca00fee8e82d1bd174a8be205e0";
  }

  static const char* value(const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1774ca00fee8e82ULL;
  static const uint64_t static_value2 = 0xd1bd174a8be205e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/SetGoToPetitionRequest";
  }

  static const char* value(const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string action_namespace  # this will be the new action_namespace of the move_base client\n"
"string frame_id          # the new global frame_id\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_namespace);
      stream.next(m.frame_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGoToPetitionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::SetGoToPetitionRequest_<ContainerAllocator>& v)
  {
    s << indent << "action_namespace: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action_namespace);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETGOTOPETITIONREQUEST_H