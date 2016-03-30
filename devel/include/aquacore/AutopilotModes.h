// Generated by gencpp from file aquacore/AutopilotModes.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_AUTOPILOTMODES_H
#define AQUACORE_MESSAGE_AUTOPILOTMODES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace aquacore
{
template <class ContainerAllocator>
struct AutopilotModes_
{
  typedef AutopilotModes_<ContainerAllocator> Type;

  AutopilotModes_()
    {
    }
  AutopilotModes_(const ContainerAllocator& _alloc)
    {
    }




    enum { OFF = 0 };
     enum { ANGLES = 2 };
     enum { DEPTH = 4 };
     enum { AP_OFF = 0 };
     enum { AP_GLOBAL_ANGLES_LOCAL_THRUST = 2 };
     enum { AP_GLOBAL_ANGLES_FIXED_DEPTH = 4 };
     enum { AP_FIRST_INVALID_AP_MODE = 5 };
 

  typedef boost::shared_ptr< ::aquacore::AutopilotModes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::AutopilotModes_<ContainerAllocator> const> ConstPtr;

}; // struct AutopilotModes_

typedef ::aquacore::AutopilotModes_<std::allocator<void> > AutopilotModes;

typedef boost::shared_ptr< ::aquacore::AutopilotModes > AutopilotModesPtr;
typedef boost::shared_ptr< ::aquacore::AutopilotModes const> AutopilotModesConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::AutopilotModes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::AutopilotModes_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace aquacore

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'aquacore': ['/home/2014/tko4/robotAss1/src/aquacore/msg', '/home/2014/tko4/robotAss1/devel/share/aquacore/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::AutopilotModes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::AutopilotModes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::AutopilotModes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::AutopilotModes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::AutopilotModes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::AutopilotModes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::AutopilotModes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aaf40c41586272cf417462aa78a8b3a1";
  }

  static const char* value(const ::aquacore::AutopilotModes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaaf40c41586272cfULL;
  static const uint64_t static_value2 = 0x417462aa78a8b3a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::AutopilotModes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/AutopilotModes";
  }

  static const char* value(const ::aquacore::AutopilotModes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::AutopilotModes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 OFF = 0\n\
int32 ANGLES = 2\n\
int32 DEPTH = 4 # depth-regulated AP includes angle-regulation as well\n\
\n\
# The following are for 3D autopilot (see aquaautopilot ROS package)\n\
int32 AP_OFF = 0\n\
int32 AP_GLOBAL_ANGLES_LOCAL_THRUST = 2\n\
int32 AP_GLOBAL_ANGLES_FIXED_DEPTH = 4\n\
int32 AP_FIRST_INVALID_AP_MODE = 5\n\
";
  }

  static const char* value(const ::aquacore::AutopilotModes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::AutopilotModes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AutopilotModes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::AutopilotModes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::aquacore::AutopilotModes_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_AUTOPILOTMODES_H
