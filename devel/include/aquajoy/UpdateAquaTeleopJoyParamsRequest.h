// Generated by gencpp from file aquajoy/UpdateAquaTeleopJoyParamsRequest.msg
// DO NOT EDIT!


#ifndef AQUAJOY_MESSAGE_UPDATEAQUATELEOPJOYPARAMSREQUEST_H
#define AQUAJOY_MESSAGE_UPDATEAQUATELEOPJOYPARAMSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <aquajoy/AquaTeleopJoyParams.h>

namespace aquajoy
{
template <class ContainerAllocator>
struct UpdateAquaTeleopJoyParamsRequest_
{
  typedef UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> Type;

  UpdateAquaTeleopJoyParamsRequest_()
    : new_params()  {
    }
  UpdateAquaTeleopJoyParamsRequest_(const ContainerAllocator& _alloc)
    : new_params(_alloc)  {
    }



   typedef  ::aquajoy::AquaTeleopJoyParams_<ContainerAllocator>  _new_params_type;
  _new_params_type new_params;




  typedef boost::shared_ptr< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateAquaTeleopJoyParamsRequest_

typedef ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<std::allocator<void> > UpdateAquaTeleopJoyParamsRequest;

typedef boost::shared_ptr< ::aquajoy::UpdateAquaTeleopJoyParamsRequest > UpdateAquaTeleopJoyParamsRequestPtr;
typedef boost::shared_ptr< ::aquajoy::UpdateAquaTeleopJoyParamsRequest const> UpdateAquaTeleopJoyParamsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquajoy

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'aquajoy': ['/home/2014/tko4/robotAss1/src/aquajoy/msg'], 'aquacore': ['/home/2014/tko4/robotAss1/src/aquacore/msg', '/home/2014/tko4/robotAss1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1e83859aeb42bc42c7f92e0fd76391e7";
  }

  static const char* value(const ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1e83859aeb42bc42ULL;
  static const uint64_t static_value2 = 0xc7f92e0fd76391e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquajoy/UpdateAquaTeleopJoyParamsRequest";
  }

  static const char* value(const ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquajoy/AquaTeleopJoyParams new_params\n\
\n\
================================================================================\n\
MSG: aquajoy/AquaTeleopJoyParams\n\
# Range: [0, 1]\n\
float64 joy_axis_deadzone\n\
  \n\
# Range: [0, 1]\n\
float64 max_speed_cmd\n\
float64 max_heave_cmd\n\
float64 max_roll_cmd\n\
float64 max_pitch_cmd\n\
float64 max_yaw_cmd\n\
  \n\
# Recommended range: [0, 180] (degrees)\n\
float64 max_roll_pos\n\
float64 max_pitch_pos\n\
float64 max_yaw_pos\n\
\n\
# Recommended range: [-2, 1] (m)\n\
float64 min_depth\n\
\n\
# Recommended range: [0, 100] (m)\n\
float64 max_depth\n\
\n\
# Use fixed initial depth (m) upon entering depth-related modes [if < 0, then initial depth is current robot depth]\n\
float64 default_fixed_depth\n\
  \n\
# Recommended range: [0, 180] (deg/s)\n\
float64 max_roll_vel\n\
float64 max_pitch_vel\n\
float64 max_yaw_vel\n\
  \n\
# Recommended range: [0, 1] (m/s)\n\
float64 max_depth_vel\n\
";
  }

  static const char* value(const ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.new_params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct UpdateAquaTeleopJoyParamsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquajoy::UpdateAquaTeleopJoyParamsRequest_<ContainerAllocator>& v)
  {
    s << indent << "new_params: ";
    s << std::endl;
    Printer< ::aquajoy::AquaTeleopJoyParams_<ContainerAllocator> >::stream(s, indent + "  ", v.new_params);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUAJOY_MESSAGE_UPDATEAQUATELEOPJOYPARAMSREQUEST_H
