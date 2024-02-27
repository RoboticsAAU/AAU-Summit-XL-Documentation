// Generated by gencpp from file robot_local_control_msgs/GoToTagPetitionRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_GOTOTAGPETITIONREQUEST_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_GOTOTAGPETITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_local_control_msgs/GoToTag.h>

namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct GoToTagPetitionRequest_
{
  typedef GoToTagPetitionRequest_<ContainerAllocator> Type;

  GoToTagPetitionRequest_()
    : procedure()  {
    }
  GoToTagPetitionRequest_(const ContainerAllocator& _alloc)
    : procedure(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_local_control_msgs::GoToTag_<ContainerAllocator>  _procedure_type;
  _procedure_type procedure;





  typedef boost::shared_ptr< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GoToTagPetitionRequest_

typedef ::robot_local_control_msgs::GoToTagPetitionRequest_<std::allocator<void> > GoToTagPetitionRequest;

typedef boost::shared_ptr< ::robot_local_control_msgs::GoToTagPetitionRequest > GoToTagPetitionRequestPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::GoToTagPetitionRequest const> GoToTagPetitionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.procedure == rhs.procedure;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f90eb4f91bb3b4fe739dc3d58cf595e8";
  }

  static const char* value(const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf90eb4f91bb3b4feULL;
  static const uint64_t static_value2 = 0x739dc3d58cf595e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/GoToTagPetitionRequest";
  }

  static const char* value(const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "GoToTag procedure \n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/GoToTag\n"
"string tag_name\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.procedure);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GoToTagPetitionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::GoToTagPetitionRequest_<ContainerAllocator>& v)
  {
    s << indent << "procedure: ";
    s << std::endl;
    Printer< ::robot_local_control_msgs::GoToTag_<ContainerAllocator> >::stream(s, indent + "  ", v.procedure);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_GOTOTAGPETITIONREQUEST_H