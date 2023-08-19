#!/bin/bash

#our program goal is to intall mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
    exit 1
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql is error"
else
    echo "installation of mysql is success"
fi    