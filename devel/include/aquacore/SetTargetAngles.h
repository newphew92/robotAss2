// Generated by gencpp from file aquacore/SetTargetAngles.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_SETTARGETANGLES_H
#define AQUACORE_MESSAGE_SETTARGETANGLES_H

#include <ros/service_traits.h>


#include <aquacore/SetTargetAnglesRequest.h>
#include <aquacore/SetTargetAnglesResponse.h>


namespace aquacore
{

struct SetTargetAngles
{

typedef SetTargetAnglesRequest Request;
typedef SetTargetAnglesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetTargetAngles
} // namespace aquacore


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::aquacore::SetTargetAngles > {
  static const char* value()
  {
    return "25f74f3de9b4229892e03ee79c3e9669";
  }

  static const char* value(const ::aquacore::SetTargetAngles&) { return value(); }
};

template<>
struct DataType< ::aquacore::SetTargetAngles > {
  static const char* value()
  {
    return "aquacore/SetTargetAngles";
  }

  static const char* value(const ::aquacore::SetTargetAngles&) { return value(); }
};


// service_traits::MD5Sum< ::aquacore::SetTargetAnglesRequest> should match 
// service_traits::MD5Sum< ::aquacore::SetTargetAngles > 
template<>
struct MD5Sum< ::aquacore::SetTargetAnglesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::SetTargetAngles >::value();
  }
  static const char* value(const ::aquacore::SetTargetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::SetTargetAnglesRequest> should match 
// service_traits::DataType< ::aquacore::SetTargetAngles > 
template<>
struct DataType< ::aquacore::SetTargetAnglesRequest>
{
  static const char* value()
  {
    return DataType< ::aquacore::SetTargetAngles >::value();
  }
  static const char* value(const ::aquacore::SetTargetAnglesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::aquacore::SetTargetAnglesResponse> should match 
// service_traits::MD5Sum< ::aquacore::SetTargetAngles > 
template<>
struct MD5Sum< ::aquacore::SetTargetAnglesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::SetTargetAngles >::value();
  }
  static const char* value(const ::aquacore::SetTargetAnglesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::SetTargetAnglesResponse> should match 
// service_traits::DataType< ::aquacore::SetTargetAngles > 
template<>
struct DataType< ::aquacore::SetTargetAnglesResponse>
{
  static const char* value()
  {
    return DataType< ::aquacore::SetTargetAngles >::value();
  }
  static const char* value(const ::aquacore::SetTargetAnglesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AQUACORE_MESSAGE_SETTARGETANGLES_H
