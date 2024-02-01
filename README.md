[![CircleCI](https://app.circleci.com/settings/project/images/success-badge.svg)](https://dl.circleci.com/status-badge/redirect/circleci/UQxu84CmqkGr2krXN1fa5J/8XP6oYVYiP51KSHcpteJJ/tree/main)

## Project Overview

In this project, I am deploying a flask application which runs inside a Docker container and deployed to Kubernetes cluster.

### Project Tasks

This project goal is to deploy a containerised application to AWS EKS using the rollout strategy, Source code is stored in Github and ran using CircleCI pipeline.
In this project we will:
* Test our project code using linting
* Complete a Dockerfile to containerize this application
* Deploy AWS EKS cluster using cloudformation
* Deploy application to EKS using CircleCI pipeline

## Setup the Environment
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate

* Run `make install` to install the necessary dependencies
* requirements.txt include all dependencies that will be installed with the above command

### Running Application in Docker and Kubernetes.

1. EKS deploy files are located on ./app_deploy
2. Rollout strategy is used for application deployment to EKS.

## Output Images 
  Images showing test from a browser, app running inside a cluster, lint testing, lint fail and pipeline steps are located on directory screenshots.
