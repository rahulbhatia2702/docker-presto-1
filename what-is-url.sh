#!/bin/bash

IP=`echo $(ifconfig eth0 | awk -F: '/inet addr:/ {print $2}' | awk '{ print $1 }')`
PRESTO_PORT=`cat presto_port`

echo ""
echo "Visit http://$IP:$PRESTO_PORT to see the web-based application."
echo ""
