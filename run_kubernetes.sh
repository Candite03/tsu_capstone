#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=ninorainman/tsudevops:projectML

# Step 2
# Run the Docker Hub container with kubernetes
  kubectl create deploy predictions-app --image=ninorainman/tsudevops:projectML
# Step 3:
# List kubernetes pods
  minikube kubectl get deploy,rs,svc,pods
# Step 4:
# Forward the container port to a host
  minikube kubectl port-forward pod/predictions-app --address 0.0.0.0 80:80
