// Generated by gencpp from file robot_local_control_msgs/SetElevatorPetition.msg
// DO NOT EDIT!


#ifndef ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETELEVATORPETITION_H
#define ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETELEVATORPETITION_H

#include <ros/service_traits.h>


#include <robot_local_control_msgs/SetElevatorPetitionRequest.h>
#include <robot_local_control_msgs/SetElevatorPetitionResponse.h>


namespace robot_local_control_msgs
{

struct SetElevatorPetition
{

typedef SetElevatorPetitionRequest Request;
typedef SetElevatorPetitionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetElevatorPetition
} // namespace robot_local_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_local_control_msgs::SetElevatorPetition > {
  static const char* value()
  {
    return "2fc378f30b1b0aa73bba47819c27622c";
  }

  static const char* value(const ::robot_local_control_msgs::SetElevatorPetition&) { return value(); }
};

template<>
struct DataType< ::robot_local_control_msgs::SetElevatorPetition > {
  static const char* value()
  {
    return "robot_local_control_msgs/SetElevatorPetition";
  }

  static const char* value(const ::robot_local_control_msgs::SetElevatorPetition&) { return value(); }
};


// service_traits::MD5Sum< ::robot_local_control_msgs::SetElevatorPetitionRequest> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::SetElevatorPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::SetElevatorPetitionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::SetElevatorPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetElevatorPetitionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::SetElevatorPetitionRequest> should match
// service_traits::DataType< ::robot_local_control_msgs::SetElevatorPetition >
template<>
struct DataType< ::robot_local_control_msgs::SetElevatorPetitionRequest>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::SetElevatorPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetElevatorPetitionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_local_control_msgs::SetElevatorPetitionResponse> should match
// service_traits::MD5Sum< ::robot_local_control_msgs::SetElevatorPetition >
template<>
struct MD5Sum< ::robot_local_control_msgs::SetElevatorPetitionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_local_control_msgs::SetElevatorPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetElevatorPetitionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_local_control_msgs::SetElevatorPetitionResponse> should match
// service_traits::DataType< ::robot_local_control_msgs::SetElevatorPetition >
template<>
struct DataType< ::robot_local_control_msgs::SetElevatorPetitionResponse>
{
  static const char* value()
  {
    return DataType< ::robot_local_control_msgs::SetElevatorPetition >::value();
  }
  static const char* value(const ::robot_local_control_msgs::SetElevatorPetitionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_LOCAL_CONTROL_MSGS_MESSAGE_SETELEVATORPETITION_H
