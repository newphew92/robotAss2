// Generated by gencpp from file aquacore/SetUpRegulatedSwimMode.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_SETUPREGULATEDSWIMMODE_H
#define AQUACORE_MESSAGE_SETUPREGULATEDSWIMMODE_H

#include <ros/service_traits.h>


#include <aquacore/SetUpRegulatedSwimModeRequest.h>
#include <aquacore/SetUpRegulatedSwimModeResponse.h>


namespace aquacore
{

struct SetUpRegulatedSwimMode
{

typedef SetUpRegulatedSwimModeRequest Request;
typedef SetUpRegulatedSwimModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetUpRegulatedSwimMode
} // namespace aquacore


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::aquacore::SetUpRegulatedSwimMode > {
  static const char* value()
  {
    return "0eb67c11df69dbb1cbae50ded84c7aa2";
  }

  static const char* value(const ::aquacore::SetUpRegulatedSwimMode&) { return value(); }
};

template<>
struct DataType< ::aquacore::SetUpRegulatedSwimMode > {
  static const char* value()
  {
    return "aquacore/SetUpRegulatedSwimMode";
  }

  static const char* value(const ::aquacore::SetUpRegulatedSwimMode&) { return value(); }
};


// service_traits::MD5Sum< ::aquacore::SetUpRegulatedSwimModeRequest> should match 
// service_traits::MD5Sum< ::aquacore::SetUpRegulatedSwimMode > 
template<>
struct MD5Sum< ::aquacore::SetUpRegulatedSwimModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::SetUpRegulatedSwimMode >::value();
  }
  static const char* value(const ::aquacore::SetUpRegulatedSwimModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::SetUpRegulatedSwimModeRequest> should match 
// service_traits::DataType< ::aquacore::SetUpRegulatedSwimMode > 
template<>
struct DataType< ::aquacore::SetUpRegulatedSwimModeRequest>
{
  static const char* value()
  {
    return DataType< ::aquacore::SetUpRegulatedSwimMode >::value();
  }
  static const char* value(const ::aquacore::SetUpRegulatedSwimModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::aquacore::SetUpRegulatedSwimModeResponse> should match 
// service_traits::MD5Sum< ::aquacore::SetUpRegulatedSwimMode > 
template<>
struct MD5Sum< ::aquacore::SetUpRegulatedSwimModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::aquacore::SetUpRegulatedSwimMode >::value();
  }
  static const char* value(const ::aquacore::SetUpRegulatedSwimModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::aquacore::SetUpRegulatedSwimModeResponse> should match 
// service_traits::DataType< ::aquacore::SetUpRegulatedSwimMode > 
template<>
struct DataType< ::aquacore::SetUpRegulatedSwimModeResponse>
{
  static const char* value()
  {
    return DataType< ::aquacore::SetUpRegulatedSwimMode >::value();
  }
  static const char* value(const ::aquacore::SetUpRegulatedSwimModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AQUACORE_MESSAGE_SETUPREGULATEDSWIMMODE_H