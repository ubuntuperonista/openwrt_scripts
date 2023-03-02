#!/bin/sh
#scripts para detalles
echo INFORMACION DEL ROUTER - presione q para salir > /tmp/log/info
echo Dispositivo >> /tmp/log/info
cat /tmp/sysinfo/model >> /tmp/log/info
cat /proc/version >> /tmp/log/info
uname -mnrs >> /tmp/log/info
cd /tmp/
rm -f /tmp/log/ipactual.log
wget -q http://ipecho.net/plain -O /tmp/log/ipactual.log
echo '' >> /tmp/log/ipactual.log
echo La IP actual de salida a Internet es >> /tmp/log/info
cat /tmp/log/ipactual.log >> /tmp/log/info
echo INFORMACION DE LA CPU DEL ROUTER >> /tmp/log/info
cat /proc/cpuinfo >> /tmp/log/info
echo '' >> /tmp/log/info
echo ESTADO DE LA MEMORIA >> /tmp/log/info
cat /proc/meminfo >> /tmp/log/info
echo '' >> /tmp/log/info
echo MODULOS CARGADOS EN MEMORIA >> /tmp/log/info
cat /proc/modules >> /tmp/log/info
echo '' >> /tmp/log/info
echo DMESG DEL ROUTER >> /tmp/log/info
dmesg >> /tmp/log/info
echo '' >> /tmp/log/info
echo LOG INTERNO DEL APARATO >> /tmp/log/info
logread >> /tmp/log/info
echo '' >> /tmp/log/info
echo Generando archivo nuevo en tmp/log/info
cat /tmp/log/info | less
# Comentar para que no elimine el archivo al terminal el proceso:
rm /tmp/log/info
