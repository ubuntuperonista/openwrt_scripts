#!/bin/sh
# Programa que devuelve datos de estado del router
date
uptime
echo Detalle de las Conexiones del router
ifconfig
echo Direcciones IP cedidas por DHCP
cat /tmp/dhcp.leases
rm -f /tmp/log/ipactual.log
wget -q http://ipecho.net/plain -O /tmp/log/ipactual.log
echo '' >> /tmp/log/ipactual.log
echo La dirección IP actual de salida a internet es:
cat /tmp/log/ipactual.log
