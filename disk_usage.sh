#!/bin/bash

#colors
#validations
#log redirections

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_dIRECTORY/$SCRIPT_NAME-$DATE.log

R="\E[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1

#IFS=  means internal field seperator is space.
while IFS=read line
do
    echo "output: $line"
 done <<< $DISK_USAGE  