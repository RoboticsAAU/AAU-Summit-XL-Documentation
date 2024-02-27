// Generated by gencpp from file axis_camera/set_digital_outputResponse.msg
// DO NOT EDIT!


#ifndef AXIS_CAMERA_MESSAGE_SET_DIGITAL_OUTPUTRESPONSE_H
#define AXIS_CAMERA_MESSAGE_SET_DIGITAL_OUTPUTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace axis_camera
{
template <class ContainerAllocator>
struct set_digital_outputResponse_
{
  typedef set_digital_outputResponse_<ContainerAllocator> Type;

  set_digital_outputResponse_()
    : ret(false)  {
    }
  set_digital_outputResponse_(const ContainerAllocator& _alloc)
    : ret(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ret_type;
  _ret_type ret;





  typedef boost::shared_ptr< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> const> ConstPtr;

}; // struct set_digital_outputResponse_

typedef ::axis_camera::set_digital_outputResponse_<std::allocator<void> > set_digital_outputResponse;

typedef boost::shared_ptr< ::axis_camera::set_digital_outputResponse > set_digital_outputResponsePtr;
typedef boost::shared_ptr< ::axis_camera::set_digital_outputResponse const> set_digital_outputResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::axis_camera::set_digital_outputResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::axis_camera::set_digital_outputResponse_<ContainerAllocator1> & lhs, const ::axis_camera::set_digital_outputResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ret == rhs.ret;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::axis_camera::set_digital_outputResponse_<ContainerAllocator1> & lhs, const ::axis_camera::set_digital_outputResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace axis_camera

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2cc9e9d8c464550830df49c160979ad";
  }

  static const char* value(const ::axis_camera::set_digital_outputResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2cc9e9d8c464550ULL;
  static const uint64_t static_value2 = 0x830df49c160979adULL;
};

template<class ContainerAllocator>
struct DataType< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "axis_camera/set_digital_outputResponse";
  }

  static const char* value(const ::axis_camera::set_digital_outputResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ret \n"
"\n"
;
  }

  static const char* value(const ::axis_camera::set_digital_outputResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ret);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_digital_outputResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::axis_camera::set_digital_outputResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::axis_camera::set_digital_outputResponse_<ContainerAllocator>& v)
  {
    s << indent << "ret: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ret);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AXIS_CAMERA_MESSAGE_SET_DIGITAL_OUTPUTRESPONSE_H
