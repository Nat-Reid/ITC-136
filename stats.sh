#!/bin/bash 

diskUsed=$( df -h |grep "/dev/sda1" |awk '{print $5}' )

memFree=$( free -mh |grep "Mem:" |awk '{print $7}' )

connections=$( netstat |grep tcp |awk '{print $4}' )

currentUsers=$( who |awk '{print $1}' )

echo -e "\e[7mThis is a snapshot of your current system:
  
   \e[36mDisk Used: $diskUsed
   \e[35mMemory Available: $memFree
   \e[32mUsers Logged In: $currentUsers
   
\e[39Open TCP Connections: 
$connections
   "
   
