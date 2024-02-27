// Auto-generated. Do not edit!

// (in-package system_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DiagnosticCPUUsage = require('./DiagnosticCPUUsage.js');
let DiagnosticCPUTemperature = require('./DiagnosticCPUTemperature.js');
let DiagnosticMEM = require('./DiagnosticMEM.js');
let DiagnosticNET = require('./DiagnosticNET.js');
let DiagnosticHDD = require('./DiagnosticHDD.js');

//-----------------------------------------------------------

class Diagnostic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.diagCpuUsage = null;
      this.diagCpuTemp = null;
      this.diagMem = null;
      this.diagNet = null;
      this.diagHdd = null;
    }
    else {
      if (initObj.hasOwnProperty('diagCpuUsage')) {
        this.diagCpuUsage = initObj.diagCpuUsage
      }
      else {
        this.diagCpuUsage = new DiagnosticCPUUsage();
      }
      if (initObj.hasOwnProperty('diagCpuTemp')) {
        this.diagCpuTemp = initObj.diagCpuTemp
      }
      else {
        this.diagCpuTemp = new DiagnosticCPUTemperature();
      }
      if (initObj.hasOwnProperty('diagMem')) {
        this.diagMem = initObj.diagMem
      }
      else {
        this.diagMem = new DiagnosticMEM();
      }
      if (initObj.hasOwnProperty('diagNet')) {
        this.diagNet = initObj.diagNet
      }
      else {
        this.diagNet = new DiagnosticNET();
      }
      if (initObj.hasOwnProperty('diagHdd')) {
        this.diagHdd = initObj.diagHdd
      }
      else {
        this.diagHdd = new DiagnosticHDD();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Diagnostic
    // Serialize message field [diagCpuUsage]
    bufferOffset = DiagnosticCPUUsage.serialize(obj.diagCpuUsage, buffer, bufferOffset);
    // Serialize message field [diagCpuTemp]
    bufferOffset = DiagnosticCPUTemperature.serialize(obj.diagCpuTemp, buffer, bufferOffset);
    // Serialize message field [diagMem]
    bufferOffset = DiagnosticMEM.serialize(obj.diagMem, buffer, bufferOffset);
    // Serialize message field [diagNet]
    bufferOffset = DiagnosticNET.serialize(obj.diagNet, buffer, bufferOffset);
    // Serialize message field [diagHdd]
    bufferOffset = DiagnosticHDD.serialize(obj.diagHdd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Diagnostic
    let len;
    let data = new Diagnostic(null);
    // Deserialize message field [diagCpuUsage]
    data.diagCpuUsage = DiagnosticCPUUsage.deserialize(buffer, bufferOffset);
    // Deserialize message field [diagCpuTemp]
    data.diagCpuTemp = DiagnosticCPUTemperature.deserialize(buffer, bufferOffset);
    // Deserialize message field [diagMem]
    data.diagMem = DiagnosticMEM.deserialize(buffer, bufferOffset);
    // Deserialize message field [diagNet]
    data.diagNet = DiagnosticNET.deserialize(buffer, bufferOffset);
    // Deserialize message field [diagHdd]
    data.diagHdd = DiagnosticHDD.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DiagnosticCPUUsage.getMessageSize(object.diagCpuUsage);
    length += DiagnosticCPUTemperature.getMessageSize(object.diagCpuTemp);
    length += DiagnosticMEM.getMessageSize(object.diagMem);
    length += DiagnosticNET.getMessageSize(object.diagNet);
    length += DiagnosticHDD.getMessageSize(object.diagHdd);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_monitor/Diagnostic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '588f02ed6122974a83abb40dde682102';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    system_monitor/DiagnosticCPUUsage diagCpuUsage
    system_monitor/DiagnosticCPUTemperature diagCpuTemp
    system_monitor/DiagnosticMEM diagMem
    system_monitor/DiagnosticNET diagNet
    system_monitor/DiagnosticHDD diagHdd
    
    ================================================================================
    MSG: system_monitor/DiagnosticCPUUsage
    string name
    # Possible values for message: 'OK', 'Warning','Error'
    string message
    string hardware_id
    system_monitor/CPUUsageStatus status
    
    ================================================================================
    MSG: system_monitor/CPUUsageStatus
    string status
    float32 time
    string load_status
    #Load average in %
    float32 load_avg1
    float32 load_avg5
    float32 load_avg15
    system_monitor/CoreUsage[] cores
    
    ================================================================================
    MSG: system_monitor/CoreUsage
    int8 id
    string status
    #Speed of the core in MHz
    float32 speed
    # % of the core used by user/system/...
    float32 user
    float32 nice
    float32 system
    float32 idle
    ================================================================================
    MSG: system_monitor/DiagnosticCPUTemperature
    string name
    # Possible values for message: 'OK', 'Warning','Error'
    string message
    string hardware_id
    system_monitor/CPUTemperatureStatus status
    
    ================================================================================
    MSG: system_monitor/CPUTemperatureStatus
    string status
    float32 time
    system_monitor/CoreTemp[] cores
    
    ================================================================================
    MSG: system_monitor/CoreTemp
    int8 id
    #Temperature of the core in DegC
    float32 temp
    ================================================================================
    MSG: system_monitor/DiagnosticMEM
    string name
    # Possible values for message: 'OK', 'Warning','Error'
    string message
    string hardware_id
    system_monitor/MEMStatus status
    ================================================================================
    MSG: system_monitor/MEMStatus
    float32 time
    system_monitor/Memory[] memories
    #Memory space in M
    int32 totalM
    int32 usedM
    int32 freeM
    ================================================================================
    MSG: system_monitor/Memory
    string name
    #Memory space in M
    #Physical w/o buffers total is zero
    int32 total
    int32 used
    int32 free
    ================================================================================
    MSG: system_monitor/DiagnosticNET
    string name
    string message
    string hardware_id
    system_monitor/NetStatus status
    
    ================================================================================
    MSG: system_monitor/NetStatus
    string status
    float32 time
    system_monitor/Interface[] interfaces
    ================================================================================
    MSG: system_monitor/Interface
    string name
    string state
    #input/output speed in MB/s
    float32 input
    float32 output
    int32 mtu
    #Data received/transmitted in MB
    float32 received
    float32 transmitted
    int32 collisions
    int32 rxError
    int32 txError
    
    ================================================================================
    MSG: system_monitor/DiagnosticHDD
    string name
    # Possible values for message: 'OK', 'Warning','Error'
    string message
    string hardware_id
    system_monitor/HDDStatus status
    
    ================================================================================
    MSG: system_monitor/HDDStatus
    string status
    float32 time
    string space_reading
    system_monitor/Disk[] disks
    
    ================================================================================
    MSG: system_monitor/Disk
    int8 id
    string name
    string status
    string mount_point
    #Size of the disk in G
    float32 size
    float32 available
    #% of total size used
    float32 use
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Diagnostic(null);
    if (msg.diagCpuUsage !== undefined) {
      resolved.diagCpuUsage = DiagnosticCPUUsage.Resolve(msg.diagCpuUsage)
    }
    else {
      resolved.diagCpuUsage = new DiagnosticCPUUsage()
    }

    if (msg.diagCpuTemp !== undefined) {
      resolved.diagCpuTemp = DiagnosticCPUTemperature.Resolve(msg.diagCpuTemp)
    }
    else {
      resolved.diagCpuTemp = new DiagnosticCPUTemperature()
    }

    if (msg.diagMem !== undefined) {
      resolved.diagMem = DiagnosticMEM.Resolve(msg.diagMem)
    }
    else {
      resolved.diagMem = new DiagnosticMEM()
    }

    if (msg.diagNet !== undefined) {
      resolved.diagNet = DiagnosticNET.Resolve(msg.diagNet)
    }
    else {
      resolved.diagNet = new DiagnosticNET()
    }

    if (msg.diagHdd !== undefined) {
      resolved.diagHdd = DiagnosticHDD.Resolve(msg.diagHdd)
    }
    else {
      resolved.diagHdd = new DiagnosticHDD()
    }

    return resolved;
    }
};

module.exports = Diagnostic;
