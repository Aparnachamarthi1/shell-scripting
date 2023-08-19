#!/bin/bash

#our program goal is to intall mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
    exit 1
fi

yum install mysql -y