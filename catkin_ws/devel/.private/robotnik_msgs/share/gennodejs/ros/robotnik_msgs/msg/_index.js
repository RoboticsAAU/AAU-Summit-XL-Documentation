
"use strict";

let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let alarmsmonitor = require('./alarmsmonitor.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let BatteryStatus = require('./BatteryStatus.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let named_input_output = require('./named_input_output.js');
let Register = require('./Register.js');
let LaserMode = require('./LaserMode.js');
let Data = require('./Data.js');
let encoders = require('./encoders.js');
let StringStamped = require('./StringStamped.js');
let Pose2DArray = require('./Pose2DArray.js');
let Alarms = require('./Alarms.js');
let PresenceSensorArray = require('./PresenceSensorArray.js');
let SubState = require('./SubState.js');
let InverterStatus = require('./InverterStatus.js');
let ReturnMessage = require('./ReturnMessage.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let Axis = require('./Axis.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let StringArray = require('./StringArray.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let AlarmSensor = require('./AlarmSensor.js');
let Interfaces = require('./Interfaces.js');
let PantiltStatus = require('./PantiltStatus.js');
let MotorStatus = require('./MotorStatus.js');
let MotorsStatus = require('./MotorsStatus.js');
let inputs_outputs = require('./inputs_outputs.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let ptz = require('./ptz.js');
let Registers = require('./Registers.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let BoolArray = require('./BoolArray.js');
let QueryAlarm = require('./QueryAlarm.js');
let alarmmonitor = require('./alarmmonitor.js');
let OdomManualCalibrationStatusStamped = require('./OdomManualCalibrationStatusStamped.js');
let MotorPID = require('./MotorPID.js');
let OdomCalibrationStatus = require('./OdomCalibrationStatus.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let LaserStatus = require('./LaserStatus.js');
let PantiltStatusStamped = require('./PantiltStatusStamped.js');
let PresenceSensor = require('./PresenceSensor.js');
let OdomCalibrationStatusStamped = require('./OdomCalibrationStatusStamped.js');
let named_inputs_outputs = require('./named_inputs_outputs.js');
let OdomManualCalibrationStatus = require('./OdomManualCalibrationStatus.js');
let ElevatorAction = require('./ElevatorAction.js');
let State = require('./State.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorResult = require('./SetElevatorResult.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');
let SetElevatorAction = require('./SetElevatorAction.js');

module.exports = {
  BatteryStatusStamped: BatteryStatusStamped,
  alarmsmonitor: alarmsmonitor,
  ElevatorStatus: ElevatorStatus,
  BatteryStatus: BatteryStatus,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  MotorsStatusDifferential: MotorsStatusDifferential,
  named_input_output: named_input_output,
  Register: Register,
  LaserMode: LaserMode,
  Data: Data,
  encoders: encoders,
  StringStamped: StringStamped,
  Pose2DArray: Pose2DArray,
  Alarms: Alarms,
  PresenceSensorArray: PresenceSensorArray,
  SubState: SubState,
  InverterStatus: InverterStatus,
  ReturnMessage: ReturnMessage,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  Axis: Axis,
  MotorHeadingOffset: MotorHeadingOffset,
  StringArray: StringArray,
  Pose2DStamped: Pose2DStamped,
  AlarmSensor: AlarmSensor,
  Interfaces: Interfaces,
  PantiltStatus: PantiltStatus,
  MotorStatus: MotorStatus,
  MotorsStatus: MotorsStatus,
  inputs_outputs: inputs_outputs,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  ptz: ptz,
  Registers: Registers,
  BatteryDockingStatus: BatteryDockingStatus,
  BoolArray: BoolArray,
  QueryAlarm: QueryAlarm,
  alarmmonitor: alarmmonitor,
  OdomManualCalibrationStatusStamped: OdomManualCalibrationStatusStamped,
  MotorPID: MotorPID,
  OdomCalibrationStatus: OdomCalibrationStatus,
  SafetyModuleStatus: SafetyModuleStatus,
  LaserStatus: LaserStatus,
  PantiltStatusStamped: PantiltStatusStamped,
  PresenceSensor: PresenceSensor,
  OdomCalibrationStatusStamped: OdomCalibrationStatusStamped,
  named_inputs_outputs: named_inputs_outputs,
  OdomManualCalibrationStatus: OdomManualCalibrationStatus,
  ElevatorAction: ElevatorAction,
  State: State,
  SetElevatorGoal: SetElevatorGoal,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorResult: SetElevatorResult,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
  SetElevatorActionGoal: SetElevatorActionGoal,
  SetElevatorAction: SetElevatorAction,
};
