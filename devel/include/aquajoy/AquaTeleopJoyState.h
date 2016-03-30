// Generated by gencpp from file aquajoy/AquaTeleopJoyState.msg
// DO NOT EDIT!


#ifndef AQUAJOY_MESSAGE_AQUATELEOPJOYSTATE_H
#define AQUAJOY_MESSAGE_AQUATELEOPJOYSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <aquacore/Command.h>

namespace aquajoy
{
template <class ContainerAllocator>
struct AquaTeleopJoyState_
{
  typedef AquaTeleopJoyState_<ContainerAllocator> Type;

  AquaTeleopJoyState_()
    : ctrl_mode(0)
    , modifier(false)
    , raw_cmd()
    , roll_pos(0.0)
    , pitch_pos(0.0)
    , yaw_pos(0.0)
    , roll_vel(0.0)
    , pitch_vel(0.0)
    , yaw_vel(0.0)
    , depth_pos(0.0)
    , depth_vel(0.0)  {
    }
  AquaTeleopJoyState_(const ContainerAllocator& _alloc)
    : ctrl_mode(0)
    , modifier(false)
    , raw_cmd(_alloc)
    , roll_pos(0.0)
    , pitch_pos(0.0)
    , yaw_pos(0.0)
    , roll_vel(0.0)
    , pitch_vel(0.0)
    , yaw_vel(0.0)
    , depth_pos(0.0)
    , depth_vel(0.0)  {
    }



   typedef int8_t _ctrl_mode_type;
  _ctrl_mode_type ctrl_mode;

   typedef uint8_t _modifier_type;
  _modifier_type modifier;

   typedef  ::aquacore::Command_<ContainerAllocator>  _raw_cmd_type;
  _raw_cmd_type raw_cmd;

   typedef double _roll_pos_type;
  _roll_pos_type roll_pos;

   typedef double _pitch_pos_type;
  _pitch_pos_type pitch_pos;

   typedef double _yaw_pos_type;
  _yaw_pos_type yaw_pos;

   typedef double _roll_vel_type;
  _roll_vel_type roll_vel;

   typedef double _pitch_vel_type;
  _pitch_vel_type pitch_vel;

   typedef double _yaw_vel_type;
  _yaw_vel_type yaw_vel;

   typedef double _depth_pos_type;
  _depth_pos_type depth_pos;

   typedef double _depth_vel_type;
  _depth_vel_type depth_vel;


    enum { CTRL_MODE_RAW = 0 };
     enum { CTRL_MODE_GLOBAL_RP_POS = 1 };
     enum { CTRL_MODE_GLOBAL_RP_POS_D = 2 };
     enum { CTRL_MODE_GLOBAL_RP_VEL_D = 3 };
     enum { CTRL_MODE_FLATSWIM_D = 4 };
 

  typedef boost::shared_ptr< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> const> ConstPtr;

}; // struct AquaTeleopJoyState_

typedef ::aquajoy::AquaTeleopJoyState_<std::allocator<void> > AquaTeleopJoyState;

typedef boost::shared_ptr< ::aquajoy::AquaTeleopJoyState > AquaTeleopJoyStatePtr;
typedef boost::shared_ptr< ::aquajoy::AquaTeleopJoyState const> AquaTeleopJoyStateConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1ae4c9d6b55f827b7d46912c0ba341f6";
  }

  static const char* value(const ::aquajoy::AquaTeleopJoyState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1ae4c9d6b55f827bULL;
  static const uint64_t static_value2 = 0x7d46912c0ba341f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aquajoy/AquaTeleopJoyState";
  }

  static const char* value(const ::aquajoy::AquaTeleopJoyState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 ctrl_mode\n\
int8 CTRL_MODE_RAW = 0\n\
int8 CTRL_MODE_GLOBAL_RP_POS = 1\n\
int8 CTRL_MODE_GLOBAL_RP_POS_D = 2\n\
int8 CTRL_MODE_GLOBAL_RP_VEL_D = 3\n\
int8 CTRL_MODE_FLATSWIM_D = 4\n\
\n\
bool modifier\n\
\n\
aquacore/Command raw_cmd\n\
\n\
# NOTE: all angle units are in degrees\n\
\n\
float64 roll_pos\n\
float64 pitch_pos\n\
float64 yaw_pos\n\
\n\
float64 roll_vel\n\
float64 pitch_vel\n\
float64 yaw_vel\n\
\n\
float64 depth_pos\n\
\n\
float64 depth_vel\n\
\n\
================================================================================\n\
MSG: aquacore/Command\n\
# All of the following are pseudo-rates, meaning that they are correlated to the distance / time in a\n\
# non-linear way; see Giguere et al. IROS 2006 \"Characterizing...\" for similar pseudo-rate mapping plots\n\
# on Aqua 1.0. Do keep in mind that these plots do not apply for Aqua 2.0+, which do not have proper mappings yet.\n\
\n\
# All saturations are performed by RoboDevel\n\
\n\
float32 speed # unitless pseudo-rate, [0, 1]\n\
float32 yaw   # unitless pseudo-rate, [-1, 1] # +1: yaw right\n\
float32 pitch # unitless pseudo-rate, [-1, 1] # +1: pitch forwards down\n\
float32 roll  # unitless pseudo-rate, [-1, 1] # +1: roll right\n\
float32 heave # unitless pseudo-rate, [-1, 1] # +1: heave up\n\
\n\
";
  }

  static const char* value(const ::aquajoy::AquaTeleopJoyState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ctrl_mode);
      stream.next(m.modifier);
      stream.next(m.raw_cmd);
      stream.next(m.roll_pos);
      stream.next(m.pitch_pos);
      stream.next(m.yaw_pos);
      stream.next(m.roll_vel);
      stream.next(m.pitch_vel);
      stream.next(m.yaw_vel);
      stream.next(m.depth_pos);
      stream.next(m.depth_vel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AquaTeleopJoyState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aquajoy::AquaTeleopJoyState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aquajoy::AquaTeleopJoyState_<ContainerAllocator>& v)
  {
    s << indent << "ctrl_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ctrl_mode);
    s << indent << "modifier: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.modifier);
    s << indent << "raw_cmd: ";
    s << std::endl;
    Printer< ::aquacore::Command_<ContainerAllocator> >::stream(s, indent + "  ", v.raw_cmd);
    s << indent << "roll_pos: ";
    Printer<double>::stream(s, indent + "  ", v.roll_pos);
    s << indent << "pitch_pos: ";
    Printer<double>::stream(s, indent + "  ", v.pitch_pos);
    s << indent << "yaw_pos: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_pos);
    s << indent << "roll_vel: ";
    Printer<double>::stream(s, indent + "  ", v.roll_vel);
    s << indent << "pitch_vel: ";
    Printer<double>::stream(s, indent + "  ", v.pitch_vel);
    s << indent << "yaw_vel: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_vel);
    s << indent << "depth_pos: ";
    Printer<double>::stream(s, indent + "  ", v.depth_pos);
    s << indent << "depth_vel: ";
    Printer<double>::stream(s, indent + "  ", v.depth_vel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AQUAJOY_MESSAGE_AQUATELEOPJOYSTATE_H
