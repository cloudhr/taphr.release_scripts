#!/usr/bin/env bash

# Variables
#---------------------

AWS_ACCESS_KEY=${1}
AWS_SECRET_KEY=${2}
APP_DIRECTORY="/var/lib/go-agent/pipelines/taphr-api-server/sources"
echo "check amamzon elastic beanstalk version"
eb --version
cd APP_DIRECTORY
echo "Authenticating AWS with Keys: $AWS_ACCESS_KEY and $AWS_SECRET_KEY"

echo "Creating project Archive..."
echo "Deploying to amazon..."
eb deploy