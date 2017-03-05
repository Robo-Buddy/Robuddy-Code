// Generated by gencpp from file vector_msgs/GripperCmd.msg
// DO NOT EDIT!


#ifndef VECTOR_MSGS_MESSAGE_GRIPPERCMD_H
#define VECTOR_MSGS_MESSAGE_GRIPPERCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vector_msgs
{
template <class ContainerAllocator>
struct GripperCmd_
{
  typedef GripperCmd_<ContainerAllocator> Type;

  GripperCmd_()
    : emergency_release(false)
    , emergency_release_dir(0)
    , stop(false)
    , position(0.0)
    , speed(0.0)
    , force(0.0)  {
    }
  GripperCmd_(const ContainerAllocator& _alloc)
    : emergency_release(false)
    , emergency_release_dir(0)
    , stop(false)
    , position(0.0)
    , speed(0.0)
    , force(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _emergency_release_type;
  _emergency_release_type emergency_release;

   typedef uint32_t _emergency_release_dir_type;
  _emergency_release_dir_type emergency_release_dir;

   typedef uint8_t _stop_type;
  _stop_type stop;

   typedef float _position_type;
  _position_type position;

   typedef float _speed_type;
  _speed_type speed;

   typedef float _force_type;
  _force_type force;




  typedef boost::shared_ptr< ::vector_msgs::GripperCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vector_msgs::GripperCmd_<ContainerAllocator> const> ConstPtr;

}; // struct GripperCmd_

typedef ::vector_msgs::GripperCmd_<std::allocator<void> > GripperCmd;

typedef boost::shared_ptr< ::vector_msgs::GripperCmd > GripperCmdPtr;
typedef boost::shared_ptr< ::vector_msgs::GripperCmd const> GripperCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vector_msgs::GripperCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vector_msgs::GripperCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vector_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'vector_msgs': ['/home/kristopher/vector_ws/src/vector_v1/vector_common/vector_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vector_msgs::GripperCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vector_msgs::GripperCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_msgs::GripperCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_msgs::GripperCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_msgs::GripperCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_msgs::GripperCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vector_msgs::GripperCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "017fc0d464f4a4d072ae2519e0fc1789";
  }

  static const char* value(const ::vector_msgs::GripperCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x017fc0d464f4a4d0ULL;
  static const uint64_t static_value2 = 0x72ae2519e0fc1789ULL;
};

template<class ContainerAllocator>
struct DataType< ::vector_msgs::GripperCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_msgs/GripperCmd";
  }

  static const char* value(const ::vector_msgs::GripperCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vector_msgs::GripperCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool emergency_release\n\
uint32 emergency_release_dir\n\
bool stop\n\
float32 position\n\
float32 speed\n\
float32 force\n\
\n\
";
  }

  static const char* value(const ::vector_msgs::GripperCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vector_msgs::GripperCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.emergency_release);
      stream.next(m.emergency_release_dir);
      stream.next(m.stop);
      stream.next(m.position);
      stream.next(m.speed);
      stream.next(m.force);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vector_msgs::GripperCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vector_msgs::GripperCmd_<ContainerAllocator>& v)
  {
    s << indent << "emergency_release: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.emergency_release);
    s << indent << "emergency_release_dir: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.emergency_release_dir);
    s << indent << "stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stop);
    s << indent << "position: ";
    Printer<float>::stream(s, indent + "  ", v.position);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "force: ";
    Printer<float>::stream(s, indent + "  ", v.force);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTOR_MSGS_MESSAGE_GRIPPERCMD_H
