
"use strict";

let GetPOI = require('./GetPOI.js')
let SetMotorPID = require('./SetMotorPID.js')
let QueryAlarms = require('./QueryAlarms.js')
let set_height = require('./set_height.js')
let set_mode = require('./set_mode.js')
let SetByte = require('./SetByte.js')
let GetBool = require('./GetBool.js')
let SetTransform = require('./SetTransform.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let get_digital_input = require('./get_digital_input.js')
let axis_record = require('./axis_record.js')
let home = require('./home.js')
let set_modbus_register = require('./set_modbus_register.js')
let ack_alarm = require('./ack_alarm.js')
let SetMotorStatus = require('./SetMotorStatus.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let set_digital_output = require('./set_digital_output.js')
let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')
let SetString = require('./SetString.js')
let SetElevator = require('./SetElevator.js')
let SetLaserMode = require('./SetLaserMode.js')
let get_alarms = require('./get_alarms.js')
let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')
let SetBuzzer = require('./SetBuzzer.js')
let GetPTZ = require('./GetPTZ.js')
let ResetFromSubState = require('./ResetFromSubState.js')
let set_ptz = require('./set_ptz.js')
let get_mode = require('./get_mode.js')
let SetMotorMode = require('./SetMotorMode.js')
let enable_disable = require('./enable_disable.js')
let get_modbus_register = require('./get_modbus_register.js')
let InsertTask = require('./InsertTask.js')
let set_float_value = require('./set_float_value.js')
let set_odometry = require('./set_odometry.js')
let set_analog_output = require('./set_analog_output.js')

module.exports = {
  GetPOI: GetPOI,
  SetMotorPID: SetMotorPID,
  QueryAlarms: QueryAlarms,
  set_height: set_height,
  set_mode: set_mode,
  SetByte: SetByte,
  GetBool: GetBool,
  SetTransform: SetTransform,
  SetEncoderTurns: SetEncoderTurns,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  get_digital_input: get_digital_input,
  axis_record: axis_record,
  home: home,
  set_modbus_register: set_modbus_register,
  ack_alarm: ack_alarm,
  SetMotorStatus: SetMotorStatus,
  set_named_digital_output: set_named_digital_output,
  set_digital_output: set_digital_output,
  SetNamedDigitalOutput: SetNamedDigitalOutput,
  SetString: SetString,
  SetElevator: SetElevator,
  SetLaserMode: SetLaserMode,
  get_alarms: get_alarms,
  set_CartesianEuler_pose: set_CartesianEuler_pose,
  SetBuzzer: SetBuzzer,
  GetPTZ: GetPTZ,
  ResetFromSubState: ResetFromSubState,
  set_ptz: set_ptz,
  get_mode: get_mode,
  SetMotorMode: SetMotorMode,
  enable_disable: enable_disable,
  get_modbus_register: get_modbus_register,
  InsertTask: InsertTask,
  set_float_value: set_float_value,
  set_odometry: set_odometry,
  set_analog_output: set_analog_output,
};
