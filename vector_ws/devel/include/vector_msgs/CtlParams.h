// Generated by gencpp from file vector_msgs/CtlParams.msg
// DO NOT EDIT!


#ifndef VECTOR_MSGS_MESSAGE_CTLPARAMS_H
#define VECTOR_MSGS_MESSAGE_CTLPARAMS_H


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
struct CtlParams_
{
  typedef CtlParams_<ContainerAllocator> Type;

  CtlParams_()
    : header()
    , p_gain_rps_per_rps(0.0)
    , i_gain_rps_per_rad(0.0)
    , d_gain_rps_per_rps2(0.0)
    , fdfwd_gain_rps_per_motor_rps(0.0)
    , p_error_limit_rps(0.0)
    , i_error_limit_rad(0.0)
    , d_error_limit_rps2(0.0)
    , i_error_drain_rate_rad_per_frame(0.0)
    , output_limit_rps(0.0)
    , input_target_limit_rps(0.0)
    , control_tuning_unlocked(false)  {
    }
  CtlParams_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , p_gain_rps_per_rps(0.0)
    , i_gain_rps_per_rad(0.0)
    , d_gain_rps_per_rps2(0.0)
    , fdfwd_gain_rps_per_motor_rps(0.0)
    , p_error_limit_rps(0.0)
    , i_error_limit_rad(0.0)
    , d_error_limit_rps2(0.0)
    , i_error_drain_rate_rad_per_frame(0.0)
    , output_limit_rps(0.0)
    , input_target_limit_rps(0.0)
    , control_tuning_unlocked(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _p_gain_rps_per_rps_type;
  _p_gain_rps_per_rps_type p_gain_rps_per_rps;

   typedef float _i_gain_rps_per_rad_type;
  _i_gain_rps_per_rad_type i_gain_rps_per_rad;

   typedef float _d_gain_rps_per_rps2_type;
  _d_gain_rps_per_rps2_type d_gain_rps_per_rps2;

   typedef float _fdfwd_gain_rps_per_motor_rps_type;
  _fdfwd_gain_rps_per_motor_rps_type fdfwd_gain_rps_per_motor_rps;

   typedef float _p_error_limit_rps_type;
  _p_error_limit_rps_type p_error_limit_rps;

   typedef float _i_error_limit_rad_type;
  _i_error_limit_rad_type i_error_limit_rad;

   typedef float _d_error_limit_rps2_type;
  _d_error_limit_rps2_type d_error_limit_rps2;

   typedef float _i_error_drain_rate_rad_per_frame_type;
  _i_error_drain_rate_rad_per_frame_type i_error_drain_rate_rad_per_frame;

   typedef float _output_limit_rps_type;
  _output_limit_rps_type output_limit_rps;

   typedef float _input_target_limit_rps_type;
  _input_target_limit_rps_type input_target_limit_rps;

   typedef uint8_t _control_tuning_unlocked_type;
  _control_tuning_unlocked_type control_tuning_unlocked;




  typedef boost::shared_ptr< ::vector_msgs::CtlParams_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vector_msgs::CtlParams_<ContainerAllocator> const> ConstPtr;

}; // struct CtlParams_

typedef ::vector_msgs::CtlParams_<std::allocator<void> > CtlParams;

typedef boost::shared_ptr< ::vector_msgs::CtlParams > CtlParamsPtr;
typedef boost::shared_ptr< ::vector_msgs::CtlParams const> CtlParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vector_msgs::CtlParams_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vector_msgs::CtlParams_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::vector_msgs::CtlParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vector_msgs::CtlParams_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_msgs::CtlParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_msgs::CtlParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_msgs::CtlParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_msgs::CtlParams_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vector_msgs::CtlParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "93aa6e90d2031cf65eb0758a993f2326";
  }

  static const char* value(const ::vector_msgs::CtlParams_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x93aa6e90d2031cf6ULL;
  static const uint64_t static_value2 = 0x5eb0758a993f2326ULL;
};

template<class ContainerAllocator>
struct DataType< ::vector_msgs::CtlParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_msgs/CtlParams";
  }

  static const char* value(const ::vector_msgs::CtlParams_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vector_msgs::CtlParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 p_gain_rps_per_rps\n\
float32 i_gain_rps_per_rad\n\
float32 d_gain_rps_per_rps2\n\
float32 fdfwd_gain_rps_per_motor_rps\n\
float32 p_error_limit_rps\n\
float32 i_error_limit_rad\n\
float32 d_error_limit_rps2\n\
float32 i_error_drain_rate_rad_per_frame\n\
float32 output_limit_rps\n\
float32 input_target_limit_rps\n\
bool control_tuning_unlocked\n\
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

  static const char* value(const ::vector_msgs::CtlParams_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vector_msgs::CtlParams_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.p_gain_rps_per_rps);
      stream.next(m.i_gain_rps_per_rad);
      stream.next(m.d_gain_rps_per_rps2);
      stream.next(m.fdfwd_gain_rps_per_motor_rps);
      stream.next(m.p_error_limit_rps);
      stream.next(m.i_error_limit_rad);
      stream.next(m.d_error_limit_rps2);
      stream.next(m.i_error_drain_rate_rad_per_frame);
      stream.next(m.output_limit_rps);
      stream.next(m.input_target_limit_rps);
      stream.next(m.control_tuning_unlocked);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CtlParams_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vector_msgs::CtlParams_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vector_msgs::CtlParams_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "p_gain_rps_per_rps: ";
    Printer<float>::stream(s, indent + "  ", v.p_gain_rps_per_rps);
    s << indent << "i_gain_rps_per_rad: ";
    Printer<float>::stream(s, indent + "  ", v.i_gain_rps_per_rad);
    s << indent << "d_gain_rps_per_rps2: ";
    Printer<float>::stream(s, indent + "  ", v.d_gain_rps_per_rps2);
    s << indent << "fdfwd_gain_rps_per_motor_rps: ";
    Printer<float>::stream(s, indent + "  ", v.fdfwd_gain_rps_per_motor_rps);
    s << indent << "p_error_limit_rps: ";
    Printer<float>::stream(s, indent + "  ", v.p_error_limit_rps);
    s << indent << "i_error_limit_rad: ";
    Printer<float>::stream(s, indent + "  ", v.i_error_limit_rad);
    s << indent << "d_error_limit_rps2: ";
    Printer<float>::stream(s, indent + "  ", v.d_error_limit_rps2);
    s << indent << "i_error_drain_rate_rad_per_frame: ";
    Printer<float>::stream(s, indent + "  ", v.i_error_drain_rate_rad_per_frame);
    s << indent << "output_limit_rps: ";
    Printer<float>::stream(s, indent + "  ", v.output_limit_rps);
    s << indent << "input_target_limit_rps: ";
    Printer<float>::stream(s, indent + "  ", v.input_target_limit_rps);
    s << indent << "control_tuning_unlocked: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control_tuning_unlocked);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTOR_MSGS_MESSAGE_CTLPARAMS_H
