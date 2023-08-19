#!/bin/bash

# check if the number is less than 10 or not
NUMBER=$1

if [ $NUMBER -lt 10 ]
then
    echo "$NUMBER is less than 10"
else
    echo "$NUMBER is not less than 10"
fi      