#!/bin/sh
# Scropt decimelaip Informa la IP de salida.
rm -f /tmp/log/ipactual.log
wget -q http://ipecho.net/plain -O /tmp/log/ipactual.log
echo La direccion IP actual de salida a internet es:
echo '' >> /tmp/log/ipactual.log
cat /tmp/log/ipactual.log
