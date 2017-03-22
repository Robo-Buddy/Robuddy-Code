// Generated by gencpp from file wpi_jaco_msgs/JacoFKRequest.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_JACOFKREQUEST_H
#define WPI_JACO_MSGS_MESSAGE_JACOFKREQUEST_H


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
struct JacoFKRequest_
{
  typedef JacoFKRequest_<ContainerAllocator> Type;

  JacoFKRequest_()
    : joints()  {
    }
  JacoFKRequest_(const ContainerAllocator& _alloc)
    : joints(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _joints_type;
  _joints_type joints;




  typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> const> ConstPtr;

}; // struct JacoFKRequest_

typedef ::wpi_jaco_msgs::JacoFKRequest_<std::allocator<void> > JacoFKRequest;

typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKRequest > JacoFKRequestPtr;
typedef boost::shared_ptr< ::wpi_jaco_msgs::JacoFKRequest const> JacoFKRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wpi_jaco_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'wpi_jaco_msgs': ['/home/athomaz/vector_ws/src/wpi_jaco_msgs/msg', '/home/athomaz/vector_ws/devel/share/wpi_jaco_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2a0e438b445b98def0f0ba6a2a85f58";
  }

  static const char* value(const ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2a0e438b445b98dULL;
  static const uint64_t static_value2 = 0xef0f0ba6a2a85f58ULL;
};

template<class ContainerAllocator>
struct DataType< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wpi_jaco_msgs/JacoFKRequest";
  }

  static const char* value(const ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] joints\n\
";
  }

  static const char* value(const ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JacoFKRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wpi_jaco_msgs::JacoFKRequest_<ContainerAllocator>& v)
  {
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_JACOFKREQUEST_H
