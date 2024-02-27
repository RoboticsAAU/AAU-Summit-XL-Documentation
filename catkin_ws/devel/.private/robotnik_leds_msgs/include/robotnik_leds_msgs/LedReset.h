// Generated by gencpp from file robotnik_leds_msgs/LedReset.msg
// DO NOT EDIT!


#ifndef ROBOTNIK_LEDS_MSGS_MESSAGE_LEDRESET_H
#define ROBOTNIK_LEDS_MSGS_MESSAGE_LEDRESET_H

#include <ros/service_traits.h>


#include <robotnik_leds_msgs/LedResetRequest.h>
#include <robotnik_leds_msgs/LedResetResponse.h>


namespace robotnik_leds_msgs
{

struct LedReset
{

typedef LedResetRequest Request;
typedef LedResetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LedReset
} // namespace robotnik_leds_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robotnik_leds_msgs::LedReset > {
  static const char* value()
  {
    return "6dc4366229cc625582e84d622d779bfb";
  }

  static const char* value(const ::robotnik_leds_msgs::LedReset&) { return value(); }
};

template<>
struct DataType< ::robotnik_leds_msgs::LedReset > {
  static const char* value()
  {
    return "robotnik_leds_msgs/LedReset";
  }

  static const char* value(const ::robotnik_leds_msgs::LedReset&) { return value(); }
};


// service_traits::MD5Sum< ::robotnik_leds_msgs::LedResetRequest> should match
// service_traits::MD5Sum< ::robotnik_leds_msgs::LedReset >
template<>
struct MD5Sum< ::robotnik_leds_msgs::LedResetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robotnik_leds_msgs::LedReset >::value();
  }
  static const char* value(const ::robotnik_leds_msgs::LedResetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotnik_leds_msgs::LedResetRequest> should match
// service_traits::DataType< ::robotnik_leds_msgs::LedReset >
template<>
struct DataType< ::robotnik_leds_msgs::LedResetRequest>
{
  static const char* value()
  {
    return DataType< ::robotnik_leds_msgs::LedReset >::value();
  }
  static const char* value(const ::robotnik_leds_msgs::LedResetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robotnik_leds_msgs::LedResetResponse> should match
// service_traits::MD5Sum< ::robotnik_leds_msgs::LedReset >
template<>
struct MD5Sum< ::robotnik_leds_msgs::LedResetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robotnik_leds_msgs::LedReset >::value();
  }
  static const char* value(const ::robotnik_leds_msgs::LedResetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robotnik_leds_msgs::LedResetResponse> should match
// service_traits::DataType< ::robotnik_leds_msgs::LedReset >
template<>
struct DataType< ::robotnik_leds_msgs::LedResetResponse>
{
  static const char* value()
  {
    return DataType< ::robotnik_leds_msgs::LedReset >::value();
  }
  static const char* value(const ::robotnik_leds_msgs::LedResetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOTNIK_LEDS_MSGS_MESSAGE_LEDRESET_H
