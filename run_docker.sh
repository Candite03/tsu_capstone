#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t ninorainman/tsudevops:projectML .
# Step 2: 
# List docker images
docker images
# Step 3: 
# Run flask app
docker run --name py-app -p 80:80 ninorainman/tsudevops:projectML