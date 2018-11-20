#!/bin/bash 

diskUsed=$( df -h |grep "/dev/sda1" |awk '{print $5}' )

memFree=$( free -mh |grep "Mem:" |awk '{print $7}' )

connections=$( netstat |grep tcp |awk '{print $4}' )

currentUsers=$( who |awk '{print $1}' )

echo "This is a snapshot of your current system:
  
   Disk Used: $diskUsed
   Memory Available: $memFree
   Users Logged In: $currentUsers
   
Open TCP Connections: 
$connections
   "
   
