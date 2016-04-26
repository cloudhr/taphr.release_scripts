#!/usr/bin/env bash

# Variables
#---------------------

AWS_ACCESS_KEY=${1}
AWS_SECRET_KEY=${2}
APP_DIRECTORY="/var/lib/go-agent/pipelines/taphr-api-server/sources"
echo "check amamzon elastic beanstalk version"
eb --version

#chnage directory to sources
cd $APP_DIRECTORY

#deploys to amazon default branch
echo "Deploying to amazon..."
eb create taphr-dev
eb use taphr-dev
eb deploy
