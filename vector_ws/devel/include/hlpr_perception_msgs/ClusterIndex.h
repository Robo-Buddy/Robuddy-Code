// Generated by gencpp from file hlpr_perception_msgs/ClusterIndex.msg
// DO NOT EDIT!


#ifndef HLPR_PERCEPTION_MSGS_MESSAGE_CLUSTERINDEX_H
#define HLPR_PERCEPTION_MSGS_MESSAGE_CLUSTERINDEX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Int32.h>

namespace hlpr_perception_msgs
{
template <class ContainerAllocator>
struct ClusterIndex_
{
  typedef ClusterIndex_<ContainerAllocator> Type;

  ClusterIndex_()
    : indices()  {
    }
  ClusterIndex_(const ContainerAllocator& _alloc)
    : indices(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::std_msgs::Int32_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::Int32_<ContainerAllocator> >::other >  _indices_type;
  _indices_type indices;




  typedef boost::shared_ptr< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> const> ConstPtr;

}; // struct ClusterIndex_

typedef ::hlpr_perception_msgs::ClusterIndex_<std::allocator<void> > ClusterIndex;

typedef boost::shared_ptr< ::hlpr_perception_msgs::ClusterIndex > ClusterIndexPtr;
typedef boost::shared_ptr< ::hlpr_perception_msgs::ClusterIndex const> ClusterIndexConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hlpr_perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'hlpr_perception_msgs': ['/home/athomaz/vector_ws/src/hlpr_perception/hlpr_perception_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "355aaec182bd3a24f494f1ab4a82fd9e";
  }

  static const char* value(const ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x355aaec182bd3a24ULL;
  static const uint64_t static_value2 = 0xf494f1ab4a82fd9eULL;
};

template<class ContainerAllocator>
struct DataType< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hlpr_perception_msgs/ClusterIndex";
  }

  static const char* value(const ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Int32[] indices\n\
\n\
================================================================================\n\
MSG: std_msgs/Int32\n\
int32 data\n\
";
  }

  static const char* value(const ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.indices);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClusterIndex_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hlpr_perception_msgs::ClusterIndex_<ContainerAllocator>& v)
  {
    s << indent << "indices[]" << std::endl;
    for (size_t i = 0; i < v.indices.size(); ++i)
    {
      s << indent << "  indices[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "    ", v.indices[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HLPR_PERCEPTION_MSGS_MESSAGE_CLUSTERINDEX_H
