#!/bin/bash

whereiam=$(pwd)
whoiam=$(whoami)
myuid=$(id | awk -F "=" '{print $2}' | awk -F "(" '{print $1}')
s=$(sudo -nv 2>&1 |awk '{print $1}')
if [ $s = "Sorry," ]
then
sudoprivileges=" Don't"
else
sudoprivileges=""
fi



echo "You Are In: $whereiam 

You Are: $whoiam

Your User ID Is: $myuid

You$sudoprivileges Have Sudo Privileges

You Are Currently Running The Processes With These IDs:
"
ps aux |grep $whoiam |awk '{print $2}' |tr "\n" ", "
echo "

To learn more about any of these processes
type the command 'ps -up <PID>' "
