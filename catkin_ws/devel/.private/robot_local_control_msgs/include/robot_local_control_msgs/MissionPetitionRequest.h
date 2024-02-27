// Generated by gencpp from file robot_local_control_msgs/MissionPetitionRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MISSIONPETITIONREQUEST_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MISSIONPETITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_local_control_msgs/MissionStatus.h>

namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct MissionPetitionRequest_
{
  typedef MissionPetitionRequest_<ContainerAllocator> Type;

  MissionPetitionRequest_()
    : mission()
    , action()  {
    }
  MissionPetitionRequest_(const ContainerAllocator& _alloc)
    : mission(_alloc)
    , action(_alloc)  {
  (void)_alloc;
    }



   typedef  ::robot_local_control_msgs::MissionStatus_<ContainerAllocator>  _mission_type;
  _mission_type mission;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(START)
  #undef START
#endif
#if defined(_WIN32) && defined(STOP)
  #undef STOP
#endif


  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  START;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  STOP;

  typedef boost::shared_ptr< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MissionPetitionRequest_

typedef ::robot_local_control_msgs::MissionPetitionRequest_<std::allocator<void> > MissionPetitionRequest;

typedef boost::shared_ptr< ::robot_local_control_msgs::MissionPetitionRequest > MissionPetitionRequestPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::MissionPetitionRequest const> MissionPetitionRequestConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      MissionPetitionRequest_<ContainerAllocator>::START =
        
          "start"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      MissionPetitionRequest_<ContainerAllocator>::STOP =
        
          "stop"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.mission == rhs.mission &&
    lhs.action == rhs.action;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1ca819f6ed33b10f8a97f226f528fb8";
  }

  static const char* value(const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1ca819f6ed33b10ULL;
  static const uint64_t static_value2 = 0xf8a97f226f528fb8ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/MissionPetitionRequest";
  }

  static const char* value(const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Actions to tell mission component what to do\n"
"# START, starts a mission\n"
"# STOP, stops a mission\n"
"\n"
"string START=start\n"
"string STOP=stop\n"
"\n"
"MissionStatus mission\n"
"string action\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/MissionStatus\n"
"# MISSION STATES\n"
"# States inside a mission\n"
"string UNKNOWN=unknown\n"
"string RUNNING=running\n"
"string PAUSED=paused\n"
"string FINISHED=finished\n"
"string CANCELLED=cancelled\n"
"string ERROR=error\n"
"string QUEUED=queued\n"
"# running: mission is running\n"
"# paused: mission is paused\n"
"# finished: mission finished\n"
"# canceled: mission has been canceled\n"
"# error: an error occurred during the execution of the mission\n"
"# queued: the mission is queued\n"
"\n"
"\n"
"#\n"
"int32 id\n"
"\n"
"# ID of the mision based on string format: GOTO [4,5,6]\n"
"string description\n"
"\n"
"# running, paused, finished,...\n"
"string state\n"
"\n"
"\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mission);
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionPetitionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::MissionPetitionRequest_<ContainerAllocator>& v)
  {
    s << indent << "mission: ";
    s << std::endl;
    Printer< ::robot_local_control_msgs::MissionStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.mission);
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MISSIONPETITIONREQUEST_H