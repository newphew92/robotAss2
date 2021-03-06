// Generated by gencpp from file aquacore/SetAutopilotModeRequest.msg
// DO NOT EDIT!


#ifndef AQUACORE_MESSAGE_SETAUTOPILOTMODEREQUEST_H
#define AQUACORE_MESSAGE_SETAUTOPILOTMODEREQUEST_H


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
struct SetAutopilotModeRequest_
{
  typedef SetAutopilotModeRequest_<ContainerAllocator> Type;

  SetAutopilotModeRequest_()
    : mode(0)  {
    }
  SetAutopilotModeRequest_(const ContainerAllocator& _alloc)
    : mode(0)  {
    }



   typedef int32_t _mode_type;
  _mode_type mode;




  typedef boost::shared_ptr< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetAutopilotModeRequest_

typedef ::aquacore::SetAutopilotModeRequest_<std::allocator<void> > SetAutopilotModeRequest;

typedef boost::shared_ptr< ::aquacore::SetAutopilotModeRequest > SetAutopilotModeRequestPtr;
typedef boost::shared_ptr< ::aquacore::SetAutopilotModeRequest const> SetAutopilotModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff63f6ea3c3e9b7504b2cb3ee0a09d92";
  }

  static const char* value(const ::aquacore::SetAutopilotModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff63f6ea3c3e9b75ULL;
  static const uint64_t static_value2 = 0x04b2cb3ee0a09d92ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquacore/SetAutopilotModeRequest";
  }

  static const char* value(const ::aquacore::SetAutopilotModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
int32 mode\n\
";
  }

  static const char* value(const ::aquacore::SetAutopilotModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct SetAutopilotModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquacore::SetAutopilotModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquacore::SetAutopilotModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUACORE_MESSAGE_SETAUTOPILOTMODEREQUEST_H
