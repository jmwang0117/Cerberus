// Generated by gencpp from file xf_mic_asr_offline_circle/Get_Awake_Angle_srvResponse.msg
// DO NOT EDIT!


#ifndef XF_MIC_ASR_OFFLINE_CIRCLE_MESSAGE_GET_AWAKE_ANGLE_SRVRESPONSE_H
#define XF_MIC_ASR_OFFLINE_CIRCLE_MESSAGE_GET_AWAKE_ANGLE_SRVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xf_mic_asr_offline_circle
{
template <class ContainerAllocator>
struct Get_Awake_Angle_srvResponse_
{
  typedef Get_Awake_Angle_srvResponse_<ContainerAllocator> Type;

  Get_Awake_Angle_srvResponse_()
    : result()
    , awake_angle(0)
    , fail_reason()  {
    }
  Get_Awake_Angle_srvResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)
    , awake_angle(0)
    , fail_reason(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _result_type;
  _result_type result;

   typedef int32_t _awake_angle_type;
  _awake_angle_type awake_angle;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _fail_reason_type;
  _fail_reason_type fail_reason;





  typedef boost::shared_ptr< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Get_Awake_Angle_srvResponse_

typedef ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<std::allocator<void> > Get_Awake_Angle_srvResponse;

typedef boost::shared_ptr< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse > Get_Awake_Angle_srvResponsePtr;
typedef boost::shared_ptr< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse const> Get_Awake_Angle_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator1> & lhs, const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.awake_angle == rhs.awake_angle &&
    lhs.fail_reason == rhs.fail_reason;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator1> & lhs, const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace xf_mic_asr_offline_circle

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "855bb7af07835de2687b3e34b41da9c3";
  }

  static const char* value(const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x855bb7af07835de2ULL;
  static const uint64_t static_value2 = 0x687b3e34b41da9c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xf_mic_asr_offline_circle/Get_Awake_Angle_srvResponse";
  }

  static const char* value(const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string result\n"
"int32 awake_angle\n"
"string fail_reason \n"
"\n"
;
  }

  static const char* value(const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.awake_angle);
      stream.next(m.fail_reason);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Get_Awake_Angle_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xf_mic_asr_offline_circle::Get_Awake_Angle_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.result);
    s << indent << "awake_angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.awake_angle);
    s << indent << "fail_reason: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.fail_reason);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XF_MIC_ASR_OFFLINE_CIRCLE_MESSAGE_GET_AWAKE_ANGLE_SRVRESPONSE_H
