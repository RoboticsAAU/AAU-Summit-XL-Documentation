// Generated by gencpp from file robot_local_control_msgs/MagneticPickPetitionRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MAGNETICPICKPETITIONREQUEST_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MAGNETICPICKPETITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_local_control_msgs/MagneticPick.h>

namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct MagneticPickPetitionRequest_
{
  typedef MagneticPickPetitionRequest_<ContainerAllocator> Type;

  MagneticPickPetitionRequest_()
    : procedure()  {
    }
  MagneticPickPetitionRequest_(const ContainerAllocator& _alloc)
    : procedure(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_local_control_msgs::MagneticPick_<ContainerAllocator>  _procedure_type;
  _procedure_type procedure;





  typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MagneticPickPetitionRequest_

typedef ::robot_local_control_msgs::MagneticPickPetitionRequest_<std::allocator<void> > MagneticPickPetitionRequest;

typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPickPetitionRequest > MagneticPickPetitionRequestPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::MagneticPickPetitionRequest const> MagneticPickPetitionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.procedure == rhs.procedure;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c883416d829eed554d3e4007dd733e9c";
  }

  static const char* value(const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc883416d829eed55ULL;
  static const uint64_t static_value2 = 0x4d3e4007dd733e9cULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/MagneticPickPetitionRequest";
  }

  static const char* value(const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "MagneticPick procedure \n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/MagneticPick\n"
"uint32 lane\n"
"uint32 cart_position\n"
"string turn_direction\n"
"bool allow_markers\n"
"string cart_id\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.procedure);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MagneticPickPetitionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::MagneticPickPetitionRequest_<ContainerAllocator>& v)
  {
    s << indent << "procedure: ";
    s << std::endl;
    Printer< ::robot_local_control_msgs::MagneticPick_<ContainerAllocator> >::stream(s, indent + "  ", v.procedure);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MAGNETICPICKPETITIONREQUEST_H
