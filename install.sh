#!/bin/bash

# Colors
Color_Reset='\033[0m'
Blue='\033[0;34m'
Cyan='\033[0;36m'
Red='\033[0;31m'
Yellow='\033[0;33m'
Green='\033[0;32m'

################################
# Start
echo "$Cyan Welcome to the HydroPanel Installer. Your installation is about to begin. $Color_Reset"
sleep 10s
sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl
