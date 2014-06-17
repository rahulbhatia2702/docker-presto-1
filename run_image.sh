#!/bin/bash

PRESTO_PORT=`cat presto_port`

docker run -p $PRESTO_PORT:8080 -i -t $USER/presto /bin/bash
