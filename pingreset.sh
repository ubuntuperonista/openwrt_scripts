#!/bin/sh
# Programa para probar la conexion o resetear.
if ping -c 1 google.com > /dev/null ; then
echo "Todo OK, el cliente funciona y no necesita reiniciarse"
pingfail=0
else
 pingfail=$(($pingfail+1))
echo $pingfail " ping fracasados"
if [ $pingfail -gt 10 ];
then
echo "mas de 10 ping a google fracasados. RESETEANDO EL ROUTER!!"
reboot
fi
fi
