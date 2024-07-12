#!/bin/bash


#########################
#Author : Vigneshwaran Krishnan
#Date : 11-07-2024
#
#
#This script will report the AWS resource usage
#
#Version  : V1
#
#########################
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

set -exo pipefail


aws s3 ls

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

aws lambda list-functions

aws iam list-users
