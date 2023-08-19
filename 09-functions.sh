#!/bin/bash

#our program goal is to intall mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
# this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #$1 --> it will receive the argument 1
    if [ $? -ne 0 ]
then
    echo "$2 ...FAILURE"
    exit 1
else
    echo "$2 ...SUCCESS"
fi    
}
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
    exit 1
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySQl"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing Postfix"