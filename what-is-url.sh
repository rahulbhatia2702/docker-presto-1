#!/bin/bash

IP=`echo $(ifconfig eth0 | awk -F: '/inet addr:/ {print $2}' | awk '{ print $1 }')`
ARCHIVA_PORT=`cat archiva_port`

echo ""
echo "Visit http://$IP:$ARCHIVA_PORT to see the web-based Zookeeper application."
echo " Use admin/manager to log in."
echo ""
