#!/usr/bin/env bash

# Variables
#---------------------

AWS_ACCESS_KEY=${1}
AWS_SECRET_KEY=${2}
AWS_ENV_NAME=${3}

APP_DIRECTORY="/var/lib/go-agent/pipelines/taphr-api-server/sources"
echo "check amamzon elastic beanstalk version"
eb --version

#change directory to application sources
cd $APP_DIRECTORY

#deploys to amazon default branch
echo "Deploying to amazon env : $AWS_ENV_NAME"
eb use $AWS_ENV_NAME
eb deploy
