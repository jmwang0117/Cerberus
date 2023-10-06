// Generated by gencpp from file wheeltec_yolo_action/position.msg
// DO NOT EDIT!


#ifndef WHEELTEC_YOLO_ACTION_MESSAGE_POSITION_H
#define WHEELTEC_YOLO_ACTION_MESSAGE_POSITION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wheeltec_yolo_action
{
template <class ContainerAllocator>
struct position_
{
  typedef position_<ContainerAllocator> Type;

  position_()
    : angleX(0.0)
    , angleY(0.0)
    , distance(0.0)  {
    }
  position_(const ContainerAllocator& _alloc)
    : angleX(0.0)
    , angleY(0.0)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef float _angleX_type;
  _angleX_type angleX;

   typedef float _angleY_type;
  _angleY_type angleY;

   typedef float _distance_type;
  _distance_type distance;





  typedef boost::shared_ptr< ::wheeltec_yolo_action::position_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wheeltec_yolo_action::position_<ContainerAllocator> const> ConstPtr;

}; // struct position_

typedef ::wheeltec_yolo_action::position_<std::allocator<void> > position;

typedef boost::shared_ptr< ::wheeltec_yolo_action::position > positionPtr;
typedef boost::shared_ptr< ::wheeltec_yolo_action::position const> positionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wheeltec_yolo_action::position_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wheeltec_yolo_action::position_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wheeltec_yolo_action::position_<ContainerAllocator1> & lhs, const ::wheeltec_yolo_action::position_<ContainerAllocator2> & rhs)
{
  return lhs.angleX == rhs.angleX &&
    lhs.angleY == rhs.angleY &&
    lhs.distance == rhs.distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wheeltec_yolo_action::position_<ContainerAllocator1> & lhs, const ::wheeltec_yolo_action::position_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wheeltec_yolo_action

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::wheeltec_yolo_action::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wheeltec_yolo_action::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wheeltec_yolo_action::position_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wheeltec_yolo_action::position_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wheeltec_yolo_action::position_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wheeltec_yolo_action::position_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wheeltec_yolo_action::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e4df5e09e92d9d2b4758c9aab7a9ebeb";
  }

  static const char* value(const ::wheeltec_yolo_action::position_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe4df5e09e92d9d2bULL;
  static const uint64_t static_value2 = 0x4758c9aab7a9ebebULL;
};

template<class ContainerAllocator>
struct DataType< ::wheeltec_yolo_action::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wheeltec_yolo_action/position";
  }

  static const char* value(const ::wheeltec_yolo_action::position_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wheeltec_yolo_action::position_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 angleX\n"
"float32 angleY\n"
"float32 distance\n"
;
  }

  static const char* value(const ::wheeltec_yolo_action::position_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wheeltec_yolo_action::position_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angleX);
      stream.next(m.angleY);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wheeltec_yolo_action::position_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wheeltec_yolo_action::position_<ContainerAllocator>& v)
  {
    s << indent << "angleX: ";
    Printer<float>::stream(s, indent + "  ", v.angleX);
    s << indent << "angleY: ";
    Printer<float>::stream(s, indent + "  ", v.angleY);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WHEELTEC_YOLO_ACTION_MESSAGE_POSITION_H
