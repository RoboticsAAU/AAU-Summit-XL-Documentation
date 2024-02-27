// Generated by gencpp from file robot_local_control_msgs/DockPetitionResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_DOCKPETITIONRESPONSE_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_DOCKPETITIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <procedures_msgs/ProcedureState.h>
#include <procedures_msgs/ProcedureResult.h>

namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct DockPetitionResponse_
{
  typedef DockPetitionResponse_<ContainerAllocator> Type;

  DockPetitionResponse_()
    : state()
    , result()  {
    }
  DockPetitionResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::procedures_msgs::ProcedureState_<ContainerAllocator>  _state_type;
  _state_type state;

   typedef  ::procedures_msgs::ProcedureResult_<ContainerAllocator>  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DockPetitionResponse_

typedef ::robot_local_control_msgs::DockPetitionResponse_<std::allocator<void> > DockPetitionResponse;

typedef boost::shared_ptr< ::robot_local_control_msgs::DockPetitionResponse > DockPetitionResponsePtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::DockPetitionResponse const> DockPetitionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "353bf68fa257f91b3fa7d7541df3d5c7";
  }

  static const char* value(const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x353bf68fa257f91bULL;
  static const uint64_t static_value2 = 0x3fa7d7541df3d5c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/DockPetitionResponse";
  }

  static const char* value(const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "procedures_msgs/ProcedureState state\n"
"procedures_msgs/ProcedureResult result\n"
"\n"
"\n"
"================================================================================\n"
"MSG: procedures_msgs/ProcedureState\n"
"# STATE allowed values. Defined as STRING because it is easier to identify them in a raw message\n"
"string QUEUED=queued\n"
"string RUNNING=running\n"
"string PAUSED=paused\n"
"string FINISHED=finished\n"
"\n"
"# EVENT allowed values. Defined as STRING because it is easier to identify them in a raw message\n"
"# events triggered from outside\n"
"string ADDED=added\n"
"string START=start\n"
"string STOP=stop\n"
"string CANCEL=cancel\n"
"string PAUSE=pause\n"
"string RESUME=resume\n"
"# self triggered events\n"
"string FINISH=finish\n"
"string ABORT=abort\n"
"\n"
"# additionally, both state and event can be UNKNOW\n"
"string UNKNOWN=unknown\n"
"\n"
"ProcedureHeader header\n"
"string current_state\n"
"string last_event\n"
"\n"
"================================================================================\n"
"MSG: procedures_msgs/ProcedureHeader\n"
"# id: identifies the procedure in the robot context.\n"
"# user should do not set this, but the proceduremanager\n"
"# TODO: may be replaced with uuid_msgs/UniqueID.\n"
"int32 id\n"
"# priority: priority of the current procedure. used in case procedure preemption is allowed\n"
"int32 priority\n"
"# stamp: timestamp when procedure was started.\n"
"# may be used by the procedure manager.\n"
"time stamp\n"
"# name: human readable identificator.\n"
"# set by the user, can be empty\n"
"# not used by the procedure manager to identify the procedure\n"
"string name\n"
"\n"
"================================================================================\n"
"MSG: procedures_msgs/ProcedureResult\n"
"# RESULT allowed values. Defined as STRING because it is easier to identify them in a raw message\n"
"string OK=ok\n"
"string ERROR=error\n"
"\n"
"string result\n"
"string message\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DockPetitionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::DockPetitionResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    s << std::endl;
    Printer< ::procedures_msgs::ProcedureState_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::procedures_msgs::ProcedureResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_DOCKPETITIONRESPONSE_H
