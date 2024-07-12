#!/bin/bash


#####################################
#Author : Vigneshwaran Krishnan
#Date : 07-Jul-24
#
#
#This script outputs the node health
#
#
#Version :V1
#
####################################


#set -x #debug mode

#set -e #exit the script when there is an error

#set -o pipefail #exit when there is an error in the pipe command

set -exo pipefail

df -h

free -g

nproc

ps -ef | grep "sd -pam" | awk -F " " '{print $2}'
