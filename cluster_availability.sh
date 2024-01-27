#!/bin/bash

cluster_name="Capstone_Cluster"
region="us-east-1"

while true; do
    status=$(aws eks describe-cluster --name $cluster_name --region $region | jq -r '.cluster.status')
    if [ "$status" == "ACTIVE" ]; then
        echo "Cluster is active"
        break
    fi
    echo "Waiting for cluster to become active..."
    sleep 20
done