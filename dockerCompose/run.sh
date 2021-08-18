#!/bin/bash

BASEDIR=`dirname $0`
action=$1

if [ $action == 'start' ]
then
    echo '[*] Starting clusters'
    #docker-compose up -d --scale app=4
    exit
elif [ $action == 'stop' ]
then
   echo  '[*] Stopping cluster'
   #docker-compose down
fi



# start
# docker-compose up -d
# docker-compose up -d --scale app=4

# stop
# docker-compose down
