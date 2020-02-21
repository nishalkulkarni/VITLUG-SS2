#!/bin/bash

PWD=`pwd`
user=`id -u -n`
RWD="/home/$user/Desktop"

if [[ $PWD != $RWD ]]
then
    echo "Changing Directory to Desktop"
    cd ~/Desktop
else
    echo "Already inside Desktop"
fi

echo "Making directory with name Session2"
mkdir -p Session2
cd Session2

echo "creating file sysmain.sh"
touch sysmain.sh
gedit sysmain.sh

exec bash

