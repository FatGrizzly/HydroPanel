#!/bin/bash

# Colors
Color_Reset='\033[0m'
Blue='\033[0;34m'
Cyan='\033[0;36m'
Red='\033[0;31m'
Yellow='\033[0;33m'
Green='\033[0;32m'
lsb_dist="$(. /etc/os-release && echo "$ID")"
################################
# Start
echo -e "$Cyan Welcome to the HydroPanel Installer. Your installation is about to begin. $Color_Reset"
sleep 10s
if [ $lsb_dist == "fedora" ] || [ $lsb_dist == "centos" ] || [ $lsb_dist == "rhel" ] || [ $lsb_dist == "cloudlinux" ]; then
        yum -y upgrade
        yum -y autoremove
        yum -y install phpmyadmin php-mbstring php-zip php-gd php-json php-curl
elif [ $lsb_dist == "ubuntu" ] || [ $lsb_dist == "debian" ]; then
        apt update
        apt -y upgrade
        apt -y autoremove
        apt -y install phpmyadmin php-mbstring php-zip php-gd php-json php-curl
fi
