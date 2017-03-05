// Generated by gencpp from file vector_msgs/Propulsion.msg
// DO NOT EDIT!


#ifndef VECTOR_MSGS_MESSAGE_PROPULSION_H
#define VECTOR_MSGS_MESSAGE_PROPULSION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace vector_msgs
{
template <class ContainerAllocator>
struct Propulsion_
{
  typedef Propulsion_<ContainerAllocator> Type;

  Propulsion_()
    : header()
    , wheel_motor_status()
    , wheel_motor_current_A0pk()
    , wheel_motor_speed_rps()
    , wheel_motor_position_rad()
    , linear_motor_status(0)
    , linear_motor_current_A0pk(0.0)
    , linear_motor_speed_rps(0.0)
    , linear_motor_position_rad(0.0)  {
    }
  Propulsion_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , wheel_motor_status(_alloc)
    , wheel_motor_current_A0pk(_alloc)
    , wheel_motor_speed_rps(_alloc)
    , wheel_motor_position_rad(_alloc)
    , linear_motor_status(0)
    , linear_motor_current_A0pk(0.0)
    , linear_motor_speed_rps(0.0)
    , linear_motor_position_rad(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _wheel_motor_status_type;
  _wheel_motor_status_type wheel_motor_status;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _wheel_motor_current_A0pk_type;
  _wheel_motor_current_A0pk_type wheel_motor_current_A0pk;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _wheel_motor_speed_rps_type;
  _wheel_motor_speed_rps_type wheel_motor_speed_rps;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _wheel_motor_position_rad_type;
  _wheel_motor_position_rad_type wheel_motor_position_rad;

   typedef uint32_t _linear_motor_status_type;
  _linear_motor_status_type linear_motor_status;

   typedef float _linear_motor_current_A0pk_type;
  _linear_motor_current_A0pk_type linear_motor_current_A0pk;

   typedef float _linear_motor_speed_rps_type;
  _linear_motor_speed_rps_type linear_motor_speed_rps;

   typedef float _linear_motor_position_rad_type;
  _linear_motor_position_rad_type linear_motor_position_rad;




  typedef boost::shared_ptr< ::vector_msgs::Propulsion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vector_msgs::Propulsion_<ContainerAllocator> const> ConstPtr;

}; // struct Propulsion_

typedef ::vector_msgs::Propulsion_<std::allocator<void> > Propulsion;

typedef boost::shared_ptr< ::vector_msgs::Propulsion > PropulsionPtr;
typedef boost::shared_ptr< ::vector_msgs::Propulsion const> PropulsionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vector_msgs::Propulsion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vector_msgs::Propulsion_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vector_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'vector_msgs': ['/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vector_msgs::Propulsion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vector_msgs::Propulsion_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_msgs::Propulsion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_msgs::Propulsion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_msgs::Propulsion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_msgs::Propulsion_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vector_msgs::Propulsion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61491c2b54c7a9e181eff35f997fd6b8";
  }

  static const char* value(const ::vector_msgs::Propulsion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61491c2b54c7a9e1ULL;
  static const uint64_t static_value2 = 0x81eff35f997fd6b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::vector_msgs::Propulsion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_msgs/Propulsion";
  }

  static const char* value(const ::vector_msgs::Propulsion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vector_msgs::Propulsion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint32[] wheel_motor_status\n\
float32[] wheel_motor_current_A0pk\n\
float32[] wheel_motor_speed_rps\n\
float32[] wheel_motor_position_rad\n\
uint32 linear_motor_status\n\
float32 linear_motor_current_A0pk\n\
float32 linear_motor_speed_rps\n\
float32 linear_motor_position_rad\n\
 \n\
\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::vector_msgs::Propulsion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vector_msgs::Propulsion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.wheel_motor_status);
      stream.next(m.wheel_motor_current_A0pk);
      stream.next(m.wheel_motor_speed_rps);
      stream.next(m.wheel_motor_position_rad);
      stream.next(m.linear_motor_status);
      stream.next(m.linear_motor_current_A0pk);
      stream.next(m.linear_motor_speed_rps);
      stream.next(m.linear_motor_position_rad);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Propulsion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vector_msgs::Propulsion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vector_msgs::Propulsion_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "wheel_motor_status[]" << std::endl;
    for (size_t i = 0; i < v.wheel_motor_status.size(); ++i)
    {
      s << indent << "  wheel_motor_status[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.wheel_motor_status[i]);
    }
    s << indent << "wheel_motor_current_A0pk[]" << std::endl;
    for (size_t i = 0; i < v.wheel_motor_current_A0pk.size(); ++i)
    {
      s << indent << "  wheel_motor_current_A0pk[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.wheel_motor_current_A0pk[i]);
    }
    s << indent << "wheel_motor_speed_rps[]" << std::endl;
    for (size_t i = 0; i < v.wheel_motor_speed_rps.size(); ++i)
    {
      s << indent << "  wheel_motor_speed_rps[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.wheel_motor_speed_rps[i]);
    }
    s << indent << "wheel_motor_position_rad[]" << std::endl;
    for (size_t i = 0; i < v.wheel_motor_position_rad.size(); ++i)
    {
      s << indent << "  wheel_motor_position_rad[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.wheel_motor_position_rad[i]);
    }
    s << indent << "linear_motor_status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.linear_motor_status);
    s << indent << "linear_motor_current_A0pk: ";
    Printer<float>::stream(s, indent + "  ", v.linear_motor_current_A0pk);
    s << indent << "linear_motor_speed_rps: ";
    Printer<float>::stream(s, indent + "  ", v.linear_motor_speed_rps);
    s << indent << "linear_motor_position_rad: ";
    Printer<float>::stream(s, indent + "  ", v.linear_motor_position_rad);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTOR_MSGS_MESSAGE_PROPULSION_H
