
"use strict";

let SetElevator = require('./SetElevator.js');
let ControllerStatus = require('./ControllerStatus.js');
let Missions = require('./Missions.js');
let MissionParamString = require('./MissionParamString.js');
let Uncharge = require('./Uncharge.js');
let MissionParamFloat = require('./MissionParamFloat.js');
let Twist2D = require('./Twist2D.js');
let MissionCommand = require('./MissionCommand.js');
let PrePlace = require('./PrePlace.js');
let LocalizationStatus = require('./LocalizationStatus.js');
let MissionStatus = require('./MissionStatus.js');
let StatusArray = require('./StatusArray.js');
let GoTo = require('./GoTo.js');
let PostPick = require('./PostPick.js');
let PointGPS = require('./PointGPS.js');
let MagneticPlace = require('./MagneticPlace.js');
let MagneticNavigation = require('./MagneticNavigation.js');
let LeaveMagneticGuide = require('./LeaveMagneticGuide.js');
let PostPlace = require('./PostPlace.js');
let NavigationStatus = require('./NavigationStatus.js');
let EnterLift = require('./EnterLift.js');
let Status = require('./Status.js');
let MissionParamInt = require('./MissionParamInt.js');
let RobotStatus = require('./RobotStatus.js');
let FindMagneticGuide = require('./FindMagneticGuide.js');
let MagneticPick = require('./MagneticPick.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let Place = require('./Place.js');
let Dock = require('./Dock.js');
let GoToTag = require('./GoToTag.js');
let MagneticGoTo = require('./MagneticGoTo.js');
let MissionParamBool = require('./MissionParamBool.js');
let GoToGPS = require('./GoToGPS.js');
let EnterShower = require('./EnterShower.js');
let GoToNode = require('./GoToNode.js');
let Pick = require('./Pick.js');
let PrePick = require('./PrePick.js');
let LeaveLift = require('./LeaveLift.js');
let SwitchMap = require('./SwitchMap.js');
let Charge = require('./Charge.js');
let LeaveShower = require('./LeaveShower.js');
let Move = require('./Move.js');
let SignalManager = require('./SignalManager.js');
let SensorStatus = require('./SensorStatus.js');

module.exports = {
  SetElevator: SetElevator,
  ControllerStatus: ControllerStatus,
  Missions: Missions,
  MissionParamString: MissionParamString,
  Uncharge: Uncharge,
  MissionParamFloat: MissionParamFloat,
  Twist2D: Twist2D,
  MissionCommand: MissionCommand,
  PrePlace: PrePlace,
  LocalizationStatus: LocalizationStatus,
  MissionStatus: MissionStatus,
  StatusArray: StatusArray,
  GoTo: GoTo,
  PostPick: PostPick,
  PointGPS: PointGPS,
  MagneticPlace: MagneticPlace,
  MagneticNavigation: MagneticNavigation,
  LeaveMagneticGuide: LeaveMagneticGuide,
  PostPlace: PostPlace,
  NavigationStatus: NavigationStatus,
  EnterLift: EnterLift,
  Status: Status,
  MissionParamInt: MissionParamInt,
  RobotStatus: RobotStatus,
  FindMagneticGuide: FindMagneticGuide,
  MagneticPick: MagneticPick,
  Pose2DStamped: Pose2DStamped,
  Place: Place,
  Dock: Dock,
  GoToTag: GoToTag,
  MagneticGoTo: MagneticGoTo,
  MissionParamBool: MissionParamBool,
  GoToGPS: GoToGPS,
  EnterShower: EnterShower,
  GoToNode: GoToNode,
  Pick: Pick,
  PrePick: PrePick,
  LeaveLift: LeaveLift,
  SwitchMap: SwitchMap,
  Charge: Charge,
  LeaveShower: LeaveShower,
  Move: Move,
  SignalManager: SignalManager,
  SensorStatus: SensorStatus,
};
