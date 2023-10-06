// Auto-generated. Do not edit!

// (in-package bodyreader.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let vector3f = require('./vector3f.js');
let joint = require('./joint.js');

//-----------------------------------------------------------

class body {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bodyid = null;
      this.centerOfMass = null;
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('bodyid')) {
        this.bodyid = initObj.bodyid
      }
      else {
        this.bodyid = 0;
      }
      if (initObj.hasOwnProperty('centerOfMass')) {
        this.centerOfMass = initObj.centerOfMass
      }
      else {
        this.centerOfMass = new vector3f();
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new Array(19).fill(new joint());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type body
    // Serialize message field [bodyid]
    bufferOffset = _serializer.int16(obj.bodyid, buffer, bufferOffset);
    // Serialize message field [centerOfMass]
    bufferOffset = vector3f.serialize(obj.centerOfMass, buffer, bufferOffset);
    // Check that the constant length array field [joints] has the right length
    if (obj.joints.length !== 19) {
      throw new Error('Unable to serialize array field joints - length must be 19')
    }
    // Serialize message field [joints]
    obj.joints.forEach((val) => {
      bufferOffset = joint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type body
    let len;
    let data = new body(null);
    // Deserialize message field [bodyid]
    data.bodyid = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [centerOfMass]
    data.centerOfMass = vector3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [joints]
    len = 19;
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = joint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bodyreader/body';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57f2da357721aaca7548e8de3d97f76a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new body(null);
    if (msg.bodyid !== undefined) {
      resolved.bodyid = msg.bodyid;
    }
    else {
      resolved.bodyid = 0
    }

    if (msg.centerOfMass !== undefined) {
      resolved.centerOfMass = vector3f.Resolve(msg.centerOfMass)
    }
    else {
      resolved.centerOfMass = new vector3f()
    }

    if (msg.joints !== undefined) {
      resolved.joints = new Array(19)
      for (let i = 0; i < resolved.joints.length; ++i) {
        if (msg.joints.length > i) {
          resolved.joints[i] = joint.Resolve(msg.joints[i]);
        }
        else {
          resolved.joints[i] = new joint();
        }
      }
    }
    else {
      resolved.joints = new Array(19).fill(new joint())
    }

    return resolved;
    }
};

module.exports = body;
