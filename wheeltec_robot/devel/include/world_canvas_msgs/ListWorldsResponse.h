// Generated by gencpp from file world_canvas_msgs/ListWorldsResponse.msg
// DO NOT EDIT!


#ifndef WORLD_CANVAS_MSGS_MESSAGE_LISTWORLDSRESPONSE_H
#define WORLD_CANVAS_MSGS_MESSAGE_LISTWORLDSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace world_canvas_msgs
{
template <class ContainerAllocator>
struct ListWorldsResponse_
{
  typedef ListWorldsResponse_<ContainerAllocator> Type;

  ListWorldsResponse_()
    : names()  {
    }
  ListWorldsResponse_(const ContainerAllocator& _alloc)
    : names(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _names_type;
  _names_type names;





  typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ListWorldsResponse_

typedef ::world_canvas_msgs::ListWorldsResponse_<std::allocator<void> > ListWorldsResponse;

typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsResponse > ListWorldsResponsePtr;
typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsResponse const> ListWorldsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.names == rhs.names;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace world_canvas_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc7ae3609524b18034e49294a4ce670e";
  }

  static const char* value(const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc7ae3609524b180ULL;
  static const uint64_t static_value2 = 0x34e49294a4ce670eULL;
};

template<class ContainerAllocator>
struct DataType< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_canvas_msgs/ListWorldsResponse";
  }

  static const char* value(const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] names\n"
;
  }

  static const char* value(const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.names);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListWorldsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::world_canvas_msgs::ListWorldsResponse_<ContainerAllocator>& v)
  {
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.names[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WORLD_CANVAS_MSGS_MESSAGE_LISTWORLDSRESPONSE_H