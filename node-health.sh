#!/bin/bash

##################################################
# Author  : Keshava
# Date    : 12/02/2025
# Purpose : This script outputs the node health
# Version : v1
##################################################

# Enable debug mode
set -x

# Exit the script when a command fails
set -e

# Treat unset variables as an error
set -o pipefail

echo "Disk Usage:"
df -h
echo "----------------------------------------"

echo "Memory Usage:"
free -g
echo "----------------------------------------"

echo "Currently running processes:"
ps -ef
echo "----------------------------------------"

echo "Specific process check (example: amazon):"
ps -ef | grep amazon | awk -F" " '{print $2, $8}'
