#!/usr/bin/env bash

# Variables
#---------------------

AWS_ACCESS_KEY=${1}
AWS_SECRET_KEY=${2}

echo "check amamzon elastic beanstalk version"
eb --version

echo "Authenticating with Keys: $AWS_ACCESS_KEY and $AWS_SECRET_KEY"