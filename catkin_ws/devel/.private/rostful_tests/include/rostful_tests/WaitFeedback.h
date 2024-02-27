// Generated by gencpp from file rostful_tests/WaitFeedback.msg
// DO NOT EDIT!


#ifndef ROSTFUL_TESTS_MESSAGE_WAITFEEDBACK_H
#define ROSTFUL_TESTS_MESSAGE_WAITFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rostful_tests
{
template <class ContainerAllocator>
struct WaitFeedback_
{
  typedef WaitFeedback_<ContainerAllocator> Type;

  WaitFeedback_()
    : remaining_seconds(0)  {
    }
  WaitFeedback_(const ContainerAllocator& _alloc)
    : remaining_seconds(0)  {
  (void)_alloc;
    }



   typedef int32_t _remaining_seconds_type;
  _remaining_seconds_type remaining_seconds;





  typedef boost::shared_ptr< ::rostful_tests::WaitFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rostful_tests::WaitFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct WaitFeedback_

typedef ::rostful_tests::WaitFeedback_<std::allocator<void> > WaitFeedback;

typedef boost::shared_ptr< ::rostful_tests::WaitFeedback > WaitFeedbackPtr;
typedef boost::shared_ptr< ::rostful_tests::WaitFeedback const> WaitFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rostful_tests::WaitFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rostful_tests::WaitFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rostful_tests::WaitFeedback_<ContainerAllocator1> & lhs, const ::rostful_tests::WaitFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.remaining_seconds == rhs.remaining_seconds;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rostful_tests::WaitFeedback_<ContainerAllocator1> & lhs, const ::rostful_tests::WaitFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rostful_tests

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rostful_tests::WaitFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rostful_tests::WaitFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rostful_tests::WaitFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d917541a1b8d4f950f7095181151d82b";
  }

  static const char* value(const ::rostful_tests::WaitFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd917541a1b8d4f95ULL;
  static const uint64_t static_value2 = 0x0f7095181151d82bULL;
};

template<class ContainerAllocator>
struct DataType< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rostful_tests/WaitFeedback";
  }

  static const char* value(const ::rostful_tests::WaitFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"int32 remaining_seconds\n"
"\n"
;
  }

  static const char* value(const ::rostful_tests::WaitFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.remaining_seconds);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaitFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rostful_tests::WaitFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rostful_tests::WaitFeedback_<ContainerAllocator>& v)
  {
    s << indent << "remaining_seconds: ";
    Printer<int32_t>::stream(s, indent + "  ", v.remaining_seconds);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSTFUL_TESTS_MESSAGE_WAITFEEDBACK_H
