
"use strict";

let SetSmartServoLinSpeedLimits = require('./SetSmartServoLinSpeedLimits.js')
let ConfigureControlMode = require('./ConfigureControlMode.js')
let SetWorkpiece = require('./SetWorkpiece.js')
let SetSpeedOverride = require('./SetSpeedOverride.js')
let SetSmartServoJointSpeedLimits = require('./SetSmartServoJointSpeedLimits.js')
let SetPTPCartesianSpeedLimits = require('./SetPTPCartesianSpeedLimits.js')
let TimeToDestination = require('./TimeToDestination.js')
let SetPTPJointSpeedLimits = require('./SetPTPJointSpeedLimits.js')
let SetEndpointFrame = require('./SetEndpointFrame.js')

module.exports = {
  SetSmartServoLinSpeedLimits: SetSmartServoLinSpeedLimits,
  ConfigureControlMode: ConfigureControlMode,
  SetWorkpiece: SetWorkpiece,
  SetSpeedOverride: SetSpeedOverride,
  SetSmartServoJointSpeedLimits: SetSmartServoJointSpeedLimits,
  SetPTPCartesianSpeedLimits: SetPTPCartesianSpeedLimits,
  TimeToDestination: TimeToDestination,
  SetPTPJointSpeedLimits: SetPTPJointSpeedLimits,
  SetEndpointFrame: SetEndpointFrame,
};
