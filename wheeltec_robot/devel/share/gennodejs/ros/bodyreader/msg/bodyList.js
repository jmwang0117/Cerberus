// Auto-generated. Do not edit!

// (in-package bodyreader.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let body = require('./body.js');

//-----------------------------------------------------------

class bodyList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
      this.bodies = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('bodies')) {
        this.bodies = initObj.bodies
      }
      else {
        this.bodies = new Array(6).fill(new body());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bodyList
    // Serialize message field [count]
    bufferOffset = _serializer.int8(obj.count, buffer, bufferOffset);
    // Check that the constant length array field [bodies] has the right length
    if (obj.bodies.length !== 6) {
      throw new Error('Unable to serialize array field bodies - length must be 6')
    }
    // Serialize message field [bodies]
    obj.bodies.forEach((val) => {
      bufferOffset = body.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bodyList
    let len;
    let data = new bodyList(null);
    // Deserialize message field [count]
    data.count = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [bodies]
    len = 6;
    data.bodies = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bodies[i] = body.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bodyreader/bodyList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1b1dea345dbea1f84926cdcaf9c5b80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 count
    body[6] bodies
    ================================================================================
    MSG: bodyreader/body
    int16 bodyid
    vector3f centerOfMass
    joint[19] joints
    ================================================================================
    MSG: bodyreader/vector3f
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: bodyreader/joint
    int8 type
    vector2f depthPosition
    vector3f worldPosition
    ================================================================================
    MSG: bodyreader/vector2f
    float32 x
    float32 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bodyList(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.bodies !== undefined) {
      resolved.bodies = new Array(6)
      for (let i = 0; i < resolved.bodies.length; ++i) {
        if (msg.bodies.length > i) {
          resolved.bodies[i] = body.Resolve(msg.bodies[i]);
        }
        else {
          resolved.bodies[i] = new body();
        }
      }
    }
    else {
      resolved.bodies = new Array(6).fill(new body())
    }

    return resolved;
    }
};

module.exports = bodyList;
