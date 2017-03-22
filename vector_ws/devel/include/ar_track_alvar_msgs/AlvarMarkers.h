// Generated by gencpp from file ar_track_alvar_msgs/AlvarMarkers.msg
// DO NOT EDIT!


#ifndef AR_TRACK_ALVAR_MSGS_MESSAGE_ALVARMARKERS_H
#define AR_TRACK_ALVAR_MSGS_MESSAGE_ALVARMARKERS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ar_track_alvar_msgs/AlvarMarker.h>

namespace ar_track_alvar_msgs
{
template <class ContainerAllocator>
struct AlvarMarkers_
{
  typedef AlvarMarkers_<ContainerAllocator> Type;

  AlvarMarkers_()
    : header()
    , markers()  {
    }
  AlvarMarkers_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , markers(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::ar_track_alvar_msgs::AlvarMarker_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ar_track_alvar_msgs::AlvarMarker_<ContainerAllocator> >::other >  _markers_type;
  _markers_type markers;




  typedef boost::shared_ptr< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> const> ConstPtr;

}; // struct AlvarMarkers_

typedef ::ar_track_alvar_msgs::AlvarMarkers_<std::allocator<void> > AlvarMarkers;

typedef boost::shared_ptr< ::ar_track_alvar_msgs::AlvarMarkers > AlvarMarkersPtr;
typedef boost::shared_ptr< ::ar_track_alvar_msgs::AlvarMarkers const> AlvarMarkersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ar_track_alvar_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'ar_track_alvar_msgs': ['/home/athomaz/vector_ws/src/ ar_track_alvar_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "943fe17bfb0b4ea7890368d0b25ad0ad";
  }

  static const char* value(const ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x943fe17bfb0b4ea7ULL;
  static const uint64_t static_value2 = 0x890368d0b25ad0adULL;
};

template<class ContainerAllocator>
struct DataType< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ar_track_alvar_msgs/AlvarMarkers";
  }

  static const char* value(const ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
AlvarMarker[] markers\n\
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
\n\
================================================================================\n\
MSG: ar_track_alvar_msgs/AlvarMarker\n\
Header header\n\
uint32 id\n\
uint32 confidence\n\
geometry_msgs/PoseStamped pose\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.markers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AlvarMarkers_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ar_track_alvar_msgs::AlvarMarkers_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "markers[]" << std::endl;
    for (size_t i = 0; i < v.markers.size(); ++i)
    {
      s << indent << "  markers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ar_track_alvar_msgs::AlvarMarker_<ContainerAllocator> >::stream(s, indent + "    ", v.markers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AR_TRACK_ALVAR_MSGS_MESSAGE_ALVARMARKERS_H
