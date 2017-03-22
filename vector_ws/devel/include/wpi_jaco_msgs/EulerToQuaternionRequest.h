// Generated by gencpp from file wpi_jaco_msgs/EulerToQuaternionRequest.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_EULERTOQUATERNIONREQUEST_H
#define WPI_JACO_MSGS_MESSAGE_EULERTOQUATERNIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wpi_jaco_msgs
{
template <class ContainerAllocator>
struct EulerToQuaternionRequest_
{
  typedef EulerToQuaternionRequest_<ContainerAllocator> Type;

  EulerToQuaternionRequest_()
    : roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
    }
  EulerToQuaternionRequest_(const ContainerAllocator& _alloc)
    : roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _roll_type;
  _roll_type roll;

   typedef float _pitch_type;
  _pitch_type pitch;

   typedef float _yaw_type;
  _yaw_type yaw;




  typedef boost::shared_ptr< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct EulerToQuaternionRequest_

typedef ::wpi_jaco_msgs::EulerToQuaternionRequest_<std::allocator<void> > EulerToQuaternionRequest;

typedef boost::shared_ptr< ::wpi_jaco_msgs::EulerToQuaternionRequest > EulerToQuaternionRequestPtr;
typedef boost::shared_ptr< ::wpi_jaco_msgs::EulerToQuaternionRequest const> EulerToQuaternionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wpi_jaco_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'wpi_jaco_msgs': ['/home/athomaz/vector_ws/src/wpi_jaco_msgs/msg', '/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c66f4de7f99199dd8e863fffbef112ad";
  }

  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc66f4de7f99199ddULL;
  static const uint64_t static_value2 = 0x8e863fffbef112adULL;
};

template<class ContainerAllocator>
struct DataType< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wpi_jaco_msgs/EulerToQuaternionRequest";
  }

  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 roll\n\
float32 pitch\n\
float32 yaw\n\
";
  }

  static const char* value(const ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EulerToQuaternionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wpi_jaco_msgs::EulerToQuaternionRequest_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<float>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_EULERTOQUATERNIONREQUEST_H
