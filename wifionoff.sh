#!/bin/sh
# Crea un archivo con el registro de estado del Wifi (on u off)
# Si el wifi está on lo apaga, si está off lo enciende.
STATEFILE="/tmp/wifionoff.state"
 
if [ $# -eq 1 ]; then
  case $1 in
    "up"|"on")
      STATE=off
      ;;
    "down"|"off")
      STATE=on
      ;;
  esac
else
  if [ ! -e ${STATEFILE} ]; then
    STATE=on
  else
    . ${STATEFILE}
  fi
fi
if [ -z ${STATE} ]; then
  STATE=on
fi
 
if [ ${STATE} == "on" ]; then
  /sbin/wifi down
  STATE=off
else
  /sbin/wifi up
  STATE=on
fi
 
echo "STATE=${STATE}" > ${STATEFILE}
