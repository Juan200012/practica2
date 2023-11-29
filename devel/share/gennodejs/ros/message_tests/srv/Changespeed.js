// Auto-generated. Do not edit!

// (in-package message_tests.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangespeedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.newspeed = null;
    }
    else {
      if (initObj.hasOwnProperty('newspeed')) {
        this.newspeed = initObj.newspeed
      }
      else {
        this.newspeed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangespeedRequest
    // Serialize message field [newspeed]
    bufferOffset = _serializer.float64(obj.newspeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangespeedRequest
    let len;
    let data = new ChangespeedRequest(null);
    // Deserialize message field [newspeed]
    data.newspeed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'message_tests/ChangespeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '402f64abf93402e84aa035ed6c90b119';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 newspeed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangespeedRequest(null);
    if (msg.newspeed !== undefined) {
      resolved.newspeed = msg.newspeed;
    }
    else {
      resolved.newspeed = 0.0
    }

    return resolved;
    }
};

class ChangespeedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangespeedResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.bool(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangespeedResponse
    let len;
    let data = new ChangespeedResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'message_tests/ChangespeedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2cc9e9d8c464550830df49c160979ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ret
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangespeedResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangespeedRequest,
  Response: ChangespeedResponse,
  md5sum() { return 'd7e28d0cca4452e86706e354055b7abc'; },
  datatype() { return 'message_tests/Changespeed'; }
};
