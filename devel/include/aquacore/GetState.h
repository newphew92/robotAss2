// Generated by gencpp from file aquacore/GetState.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_GETSTATE_H
#define AQUACORE_MESSAGE_GETSTATE_H

#include <ros/service_traits.h>


#include <aquacore/GetStateRequest.h>
#include <aquacore/GetStateResponse.h>


namespace aquacore
{

struct GetState
{

typedef GetStateRequest Request;
typedef GetStateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetState
} // namespace aquacore


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::aquacore::GetState > {
  static const char* value()
  {
    return "b10746058f74e27d394c87fb5e4dc82b";
  }

  static const char* value(const ::aquacore::GetState&) { return value(); }
};

template<>
struct DataType< ::aquacore::GetState > {
  static const char* value()
  {
    return "aquacore/GetState";
  }

  static const char* value(const ::aquacore::GetState&) { return value(); }
};


// service_traits::MD5Sum< ::aquacore::GetStateRequest> should match 
// service_traits::MD5Sum< ::aquacore::GetState > 
template<>
struct MD5Sum< ::aquacore::GetStateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::GetState >::value();
  }
  static const char* value(const ::aquacore::GetStateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::GetStateRequest> should match 
// service_traits::DataType< ::aquacore::GetState > 
template<>
struct DataType< ::aquacore::GetStateRequest>
{
  static const char* value()
  {
    return DataType< ::aquacore::GetState >::value();
  }
  static const char* value(const ::aquacore::GetStateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::aquacore::GetStateResponse> should match 
// service_traits::MD5Sum< ::aquacore::GetState > 
template<>
struct MD5Sum< ::aquacore::GetStateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::GetState >::value();
  }
  static const char* value(const ::aquacore::GetStateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::GetStateResponse> should match 
// service_traits::DataType< ::aquacore::GetState > 
template<>
struct DataType< ::aquacore::GetStateResponse>
{
  static const char* value()
  {
    return DataType< ::aquacore::GetState >::value();
  }
  static const char* value(const ::aquacore::GetStateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AQUACORE_MESSAGE_GETSTATE_H