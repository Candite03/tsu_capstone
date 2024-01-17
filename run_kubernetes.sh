#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=ninorainman/tsudevops:projectML

# Step 2
# Run the Docker Hub container with kubernetes
  kubectl create deploy predictions-app --image=ninorainman/tsudevops:projectML --port=80
# Step 3:
# List kubernetes pods
  kubectl get pods
# Step 4:
# Forward the container port to a host
  kubectl expose deployment predictions-app --type=LoadBalancer --port=80
