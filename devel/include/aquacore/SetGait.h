// Generated by gencpp from file aquacore/SetGait.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_SETGAIT_H
#define AQUACORE_MESSAGE_SETGAIT_H

#include <ros/service_traits.h>


#include <aquacore/SetGaitRequest.h>
#include <aquacore/SetGaitResponse.h>


namespace aquacore
{

struct SetGait
{

typedef SetGaitRequest Request;
typedef SetGaitResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetGait
} // namespace aquacore


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::aquacore::SetGait > {
  static const char* value()
  {
    return "32777b381fb403c1a3470fd2f46597fe";
  }

  static const char* value(const ::aquacore::SetGait&) { return value(); }
};

template<>
struct DataType< ::aquacore::SetGait > {
  static const char* value()
  {
    return "aquacore/SetGait";
  }

  static const char* value(const ::aquacore::SetGait&) { return value(); }
};


// service_traits::MD5Sum< ::aquacore::SetGaitRequest> should match 
// service_traits::MD5Sum< ::aquacore::SetGait > 
template<>
struct MD5Sum< ::aquacore::SetGaitRequest>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::SetGait >::value();
  }
  static const char* value(const ::aquacore::SetGaitRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::SetGaitRequest> should match 
// service_traits::DataType< ::aquacore::SetGait > 
template<>
struct DataType< ::aquacore::SetGaitRequest>
{
  static const char* value()
  {
    return DataType< ::aquacore::SetGait >::value();
  }
  static const char* value(const ::aquacore::SetGaitRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::aquacore::SetGaitResponse> should match 
// service_traits::MD5Sum< ::aquacore::SetGait > 
template<>
struct MD5Sum< ::aquacore::SetGaitResponse>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::SetGait >::value();
  }
  static const char* value(const ::aquacore::SetGaitResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::SetGaitResponse> should match 
// service_traits::DataType< ::aquacore::SetGait > 
template<>
struct DataType< ::aquacore::SetGaitResponse>
{
  static const char* value()
  {
    return DataType< ::aquacore::SetGait >::value();
  }
  static const char* value(const ::aquacore::SetGaitResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AQUACORE_MESSAGE_SETGAIT_H
