// Generated by gencpp from file robot_local_control_msgs/MissionCommand.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MISSIONCOMMAND_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MISSIONCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <robot_local_control_msgs/MissionParamInt.h>
#include <robot_local_control_msgs/MissionParamFloat.h>
#include <robot_local_control_msgs/MissionParamString.h>
#include <robot_local_control_msgs/MissionParamBool.h>

namespace robot_local_control_msgs
{
template <class ContainerAllocator>
struct MissionCommand_
{
  typedef MissionCommand_<ContainerAllocator> Type;

  MissionCommand_()
    : id(0)
    , command()
    , int_params()
    , float_params()
    , string_params()
    , bool_params()  {
    }
  MissionCommand_(const ContainerAllocator& _alloc)
    : id(0)
    , command(_alloc)
    , int_params(_alloc)
    , float_params(_alloc)
    , string_params(_alloc)
    , bool_params(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;

   typedef std::vector< ::robot_local_control_msgs::MissionParamInt_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_local_control_msgs::MissionParamInt_<ContainerAllocator> >::other >  _int_params_type;
  _int_params_type int_params;

   typedef std::vector< ::robot_local_control_msgs::MissionParamFloat_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_local_control_msgs::MissionParamFloat_<ContainerAllocator> >::other >  _float_params_type;
  _float_params_type float_params;

   typedef std::vector< ::robot_local_control_msgs::MissionParamString_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_local_control_msgs::MissionParamString_<ContainerAllocator> >::other >  _string_params_type;
  _string_params_type string_params;

   typedef std::vector< ::robot_local_control_msgs::MissionParamBool_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::robot_local_control_msgs::MissionParamBool_<ContainerAllocator> >::other >  _bool_params_type;
  _bool_params_type bool_params;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(GOTO_POSE)
  #undef GOTO_POSE
#endif
#if defined(_WIN32) && defined(GOTO_TAG)
  #undef GOTO_TAG
#endif
#if defined(_WIN32) && defined(GOTO_NODE)
  #undef GOTO_NODE
#endif


  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  GOTO_POSE;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  GOTO_TAG;
  static const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  GOTO_NODE;

  typedef boost::shared_ptr< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> const> ConstPtr;

}; // struct MissionCommand_

typedef ::robot_local_control_msgs::MissionCommand_<std::allocator<void> > MissionCommand;

typedef boost::shared_ptr< ::robot_local_control_msgs::MissionCommand > MissionCommandPtr;
typedef boost::shared_ptr< ::robot_local_control_msgs::MissionCommand const> MissionCommandConstPtr;

// constants requiring out of line definition

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      MissionCommand_<ContainerAllocator>::GOTO_POSE =
        
          "goto_pose"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      MissionCommand_<ContainerAllocator>::GOTO_TAG =
        
          "goto_tag"
        
        ;
   

   
   template<typename ContainerAllocator> const std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > 
      MissionCommand_<ContainerAllocator>::GOTO_NODE =
        
          "goto_node"
        
        ;
   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.command == rhs.command &&
    lhs.int_params == rhs.int_params &&
    lhs.float_params == rhs.float_params &&
    lhs.string_params == rhs.string_params &&
    lhs.bool_params == rhs.bool_params;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator1> & lhs, const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_local_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c34ea7f130e34df4f5f94460596dd71a";
  }

  static const char* value(const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc34ea7f130e34df4ULL;
  static const uint64_t static_value2 = 0xf5f94460596dd71aULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_local_control_msgs/MissionCommand";
  }

  static const char* value(const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# XXX: DO NOT USE THIS MESSAGE\n"
"# available commands\n"
"string GOTO_POSE=goto_pose\n"
"string GOTO_TAG=goto_tag\n"
"string GOTO_NODE=goto_node\n"
"\n"
"# id set from the subsystem calling the service\n"
"int32 id\n"
"# command from the available commands\n"
"string command\n"
"\n"
"MissionParamInt[] int_params\n"
"MissionParamFloat[] float_params\n"
"MissionParamString[] string_params\n"
"MissionParamBool[] bool_params\n"
"\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/MissionParamInt\n"
"# param name\n"
"string name\n"
"# param value\n"
"int32 value\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/MissionParamFloat\n"
"# param name\n"
"string name\n"
"# param value\n"
"float32 value\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/MissionParamString\n"
"# param name\n"
"string name\n"
"# param value\n"
"string value\n"
"\n"
"\n"
"================================================================================\n"
"MSG: robot_local_control_msgs/MissionParamBool\n"
"# param name\n"
"string name\n"
"# param value\n"
"bool value\n"
"\n"
;
  }

  static const char* value(const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.command);
      stream.next(m.int_params);
      stream.next(m.float_params);
      stream.next(m.string_params);
      stream.next(m.bool_params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_local_control_msgs::MissionCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_local_control_msgs::MissionCommand_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
    s << indent << "int_params[]" << std::endl;
    for (size_t i = 0; i < v.int_params.size(); ++i)
    {
      s << indent << "  int_params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_local_control_msgs::MissionParamInt_<ContainerAllocator> >::stream(s, indent + "    ", v.int_params[i]);
    }
    s << indent << "float_params[]" << std::endl;
    for (size_t i = 0; i < v.float_params.size(); ++i)
    {
      s << indent << "  float_params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_local_control_msgs::MissionParamFloat_<ContainerAllocator> >::stream(s, indent + "    ", v.float_params[i]);
    }
    s << indent << "string_params[]" << std::endl;
    for (size_t i = 0; i < v.string_params.size(); ++i)
    {
      s << indent << "  string_params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_local_control_msgs::MissionParamString_<ContainerAllocator> >::stream(s, indent + "    ", v.string_params[i]);
    }
    s << indent << "bool_params[]" << std::endl;
    for (size_t i = 0; i < v.bool_params.size(); ++i)
    {
      s << indent << "  bool_params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::robot_local_control_msgs::MissionParamBool_<ContainerAllocator> >::stream(s, indent + "    ", v.bool_params[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_MISSIONCOMMAND_H