#!/bin/bash
ros_config="/home/robot/ros_config.sh"
source $ros_config

echo "This script is going to load the ros configuration located at $ros_config"
echo "This script is going to load and launch all the robot packages based on the environment variables configuration..."
sleep 2;

# TODO: check if env vars is loaded and show a warning

echo "Closing all the running screens..."
killall screen
sleep 2;

echo "Starting roscore..."
screen -S core -d -m roscore;
sleep 2;

if [[ -z "${ROBOT_RUN_SIMULATION}" ]]; then
  ROBOT_RUN_SIMULATION=false
fi
if [[ -z "${ROBOT_RUN_LOCALIZATION}" ]]; then
  ROBOT_RUN_LOCALIZATION=false
fi
if [[ -z "${ROBOT_RUN_NAVIGATION}" ]]; then
  ROBOT_RUN_NAVIGATION=false
fi
if [[ -z "${ROBOT_RUN_PERCEPTION}" ]]; then
  ROBOT_RUN_PERCEPTION=false
fi
if [[ -z "${ROBOT_RUN_ROBOT_LOCAL_CONTROL}" ]]; then
  ROBOT_RUN_ROBOT_LOCAL_CONTROL=false
fi
if [[ -z "${ROBOT_RUN_RLC_ROSTFUL_SERVER}" ]]; then
  ROBOT_RUN_RLC_ROSTFUL_SERVER=false
fi
if [[ -z "${ROBOT_RUN_HMI}" ]]; then
  ROBOT_RUN_HMI=false
fi
if [[ -z "${ROBOT_RUN_COMMAND_MANAGER}" ]]; then
  ROBOT_RUN_COMMAND_MANAGER=false
fi
if [[ -z "${ROBOT_RUN_SENSORS}" ]]; then
  ROBOT_RUN_SENSORS=false
fi
if [[ -z "${ROBOT_RUN_ARM}" ]]; then
  ROBOT_RUN_ARM=false
fi
if [[ -z "${ROBOT_RUN_NTRIP}" ]]; then
  ROBOT_RUN_NTRIP=false
fi

echo "RUN SIM = $ROBOT_RUN_SIMULATION"
echo "RUN LOCALIZATION = $ROBOT_RUN_LOCALIZATION"
echo "RUN NAVIGATION = $ROBOT_RUN_NAVIGATION"
echo "RUN PERCEPTION = $ROBOT_RUN_PERCEPTION"
echo "RUN RLC = $ROBOT_RUN_ROBOT_LOCAL_CONTROL"
echo "RUN ROSTFUL SERVER = $ROBOT_RUN_ROSTFUL_SERVER"
echo "RUN HMI = $ROBOT_RUN_HMI"
echo "RUN COMMAND_MANAGER = $ROBOT_RUN_COMMAND_MANAGER"
echo "RUN ROBOT_RUN_SENSORS = $ROBOT_RUN_SENSORS"
echo "RUN ROBOT_RUN_ARM = $ROBOT_RUN_ARM"
echo "RUN ROBOT_RUN_NTRIP = $ROBOT_RUN_NTRIP"

sleep 2;

if $ROBOT_RUN_SIMULATION
then
  if [[ -z "${ROBOT_BRINGUP_SIM_PACKAGE}" ]]; then
    echo "ERROR. The var ROBOT_BRINGUP_SIM_PACKAGE is not defined..."
    exit
  fi
  if [[ -z "${ROBOT_BRINGUP_SIM_LAUNCH}" ]]; then
    echo "ERROR. The var ROBOT_BRINGUP_SIM_LAUNCH is not defined..."
    exit
  fi
  echo "Launching robot simulation $ROBOT_BRINGUP_SIM_PACKAGE/$ROBOT_BRINGUP_SIM_LAUNCH..."
  screen -S bringup -d -m rosrun rosmon rosmon --name=rosmon_bringup $ROBOT_BRINGUP_SIM_PACKAGE $ROBOT_BRINGUP_SIM_LAUNCH;
else
  if [[ -z "${ROBOT_BRINGUP_PACKAGE}" ]]; then
    echo "ERROR. The var ROBOT_BRINGUP_PACKAGE is not defined..."
    exit
  fi
  if [[ -z "${ROBOT_BRINGUP_LAUNCH}" ]]; then
    echo "ERROR. The var ROBOT_BRINGUP_LAUNCH is not defined..."
    exit
  fi
  echo "Launching robot $ROBOT_BRINGUP_PACKAGE/$ROBOT_BRINGUP_LAUNCH..."
  screen -S bringup -d -m rosrun rosmon rosmon --name=rosmon_bringup $ROBOT_BRINGUP_PACKAGE $ROBOT_BRINGUP_LAUNCH;
  if $ROBOT_RUN_SENSORS
  then
    echo "Launching sensors..."
    screen -S sensors -d -m rosrun rosmon rosmon --name=rosmon_sensors robot_bringup sensors_complete.launch;
    if [[ ${ROBOT_RUN_NTRIP} && ${ROBOT_GPS_MODEL} != "none" ]]
    then
	    if [[ -z "${ROBOT_GPS_NTRIP_USER}" ]] 
      then
        echo "ERROR. The var ROBOT_GPS_NTRIP_USER is not defined"
      elif [[ -z "${ROBOT_GPS_NTRIP_PASSWORD}" ]]
      then
        echo "ERROR. The var ROBOT_GPS_NTRIP_PASSWORD is not defined"
      elif [[ -z "${ROBOT_GPS_NTRIP_SERVER}" ]]
      then
        echo "ERROR. The var ROBOT_GPS_NTRIP_SERVER is not defined"
      elif [[ -z "${ROBOT_GPS_NTRIP_PORT}" ]]
      then
        echo "ERROR. The var ROBOT_GPS_NTRIP_PORT is not defined"
      elif [[ -z "${ROBOT_GPS_NTRIP_AREA_CORRECTIONS}" ]]
      then
        echo "ERROR. The var ROBOT_GPS_NTRIP_AREA_CORRECTIONS is not defined"
      elif [[ -z "${ROBOT_GPS_PORT}" ]]
      then
        echo "ERROR. The var ROBOT_GPS_PORT is not defined"
      else
        if [[ -f /opt/RTKLIB/app/str2str/gcc/str2str ]]
        then
          echo "Launching NTRIP..."
          NTRIP_COMMAND="/opt/RTKLIB/app/str2str/gcc/str2str -in ntrip://${ROBOT_GPS_NTRIP_USER}:${ROBOT_GPS_NTRIP_PASSWORD}@${ROBOT_GPS_NTRIP_SERVER}:${ROBOT_GPS_NTRIP_PORT}/${ROBOT_GPS_NTRIP_AREA_CORRECTIONS} -out serial://${ROBOT_GPS_PORT}:9600 8N:1"
          screen -S NTRIP -d -m $NTRIP_COMMAND
        else
          echo "ERROR. RTKLIB is not installed in /opt/RTKLIB"
        fi
      fi
    fi
  fi
fi

sleep 5;

if $ROBOT_RUN_LOCALIZATION
then
  echo "Launching localization packages..."
  screen -S localization -d -m rosrun rosmon rosmon --name=rosmon_localization --no-start robot_bringup localization_complete.launch;
  sleep 2;
fi


if $ROBOT_RUN_PERCEPTION
then
  echo "Launching perception packages..."
  screen -S perception -d -m rosrun rosmon rosmon --name=rosmon_perception robot_bringup perception_complete.launch;
  sleep 2;
fi

if $ROBOT_RUN_NAVIGATION
then
  echo "Launching navigation packages..."
  # --no-start ?
  screen -S navigation -d -m rosrun rosmon rosmon --name=rosmon_navigation robot_bringup navigation_complete.launch;
  sleep 2;
fi

if $ROBOT_RUN_ROBOT_LOCAL_CONTROL
then
  echo "Launching robot_local_control packages..."
  screen -S rlc -d -m rosrun rosmon rosmon --name=rosmon_rlc robot_bringup robot_local_control.launch;
  sleep 2;
fi

if $ROBOT_RUN_HMI
then
  echo "Launching hmi packages..."
  screen -S hmi -d -m rosrun rosmon rosmon --name=rosmon_hmi robot_bringup hmi_complete.launch;
  sleep 2;
fi


if $ROBOT_RUN_ROSTFUL_SERVER
then
  echo "Launching rostful packages..."
  screen -S rostful_server -d -m rosrun rosmon rosmon --name=rosmon_rostful_server robot_bringup rostful_server.launch;
fi


if $ROBOT_RUN_COMMAND_MANAGER
then
  echo "Launching command manager..."
  screen -S command_manager -d -m rosrun rosmon rosmon --name=rosmon_command_manager robot_bringup command_manager_complete.launch;
fi

if $ROBOT_RUN_ARM
then
  echo "Launching arm..."
  sleep 2;
  screen -S arm_bringup -d -m rosrun rosmon rosmon --name=rosmon_arm_bringup robot_bringup manipulation_complete.launch;
fi

