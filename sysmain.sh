#!/bin/bash

# -Hostname information:
echo "***** HOSTNAME INFORMATION *****"
hostnamectl
echo ""
# -File system disk space usage:
echo -e "***** FILE SYSTEM DISK SPACE USAGE *****"
df -h
echo ""
# -Free and used memory in the system:
echo -e "***** FREE AND USED MEMORY *****"
free
echo ""
# -System uptime and load:
echo -e "***** SYSTEM UPTIME AND LOAD *****"
uptime
echo ""
# -Logged-in users:
echo -e "***** CURRENTLY LOGGED-IN USERS *****"
who
echo ""
# -Top 5 processes as far as memory usage is concerned
echo -e "***** TOP 5 MEMORY-CONSUMING PROCESSES *****"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""

echo -e "Enter 1 to check and update your system, 2 to launch system monitor, 0 to exit."
read choice

if [[ $choice -eq 1 ]]
then
echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"

apt-get update
apt-get -y upgrade

apt-get -y autoremove
apt-get autoclean

echo -e "\n$(date "+%T") \t Script Terminated"
elif [[ $choice -eq 2 ]]
then
top
else
exit 0
fi
