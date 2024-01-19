https://dl.circleci.com/status-badge/img/circleci/UQxu84CmqkGr2krXN1fa5J/8XP6oYVYiP51KSHcpteJJ/tree/main.svg?style=svg

[![CircleCI](https://dl.circleci.com/status-badge/img/circleci/UQxu84CmqkGr2krXN1fa5J/8XP6oYVYiP51KSHcpteJJ/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/circleci/UQxu84CmqkGr2krXN1fa5J/8XP6oYVYiP51KSHcpteJJ/tree/main)


## Project Overview

In this project, I am deploying a flask application which runs inside a Docker container and deployed to Kubernetes cluster.

### Project Tasks

This project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project we will:
* Test our project code using linting
* Complete a Dockerfile to containerize this application
* Deploy our containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that our code has been tested

## Setup the Environment
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies
* requirements.txt include all dependencies that will be installed with the above command

### Running Application in Docker and Kubernetes.

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Testing locally
* run script `make_prediction.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
  #This assumes that you are running on Linux (Ubuntu)
  - sudo apt update
  - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  - echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  - sudo apt update
  - sudo apt install -y docker-ce docker-ce-cli containerd.io
  - sudo usermod -aG docker $USER
  - Logout and log back in, run docker --version to confirm installation. 

* Setup and Configure Kubernetes locally
 - curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
 - chmod +x kubectl
 - sudo mv kubectl /usr/local/bin/
* Create Flask app in Container
  - run this script `./run_docker.sh`
* Run via kubectl
  - `./run_kubernetes.sh
### Building Image
* Dockerfile will be used to build the container image
* Run a script named 'upload_docker.sh' to build your image and upload to docker hub
