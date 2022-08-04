#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=teesamuel/devops-api:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy devops-api --image=teesamuel/devops-api:v1.0.0
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# Port forward 
kubectl port-forward pod/devops-api-6748bd4b55-8fvcw --address 0.0.0.0 8000:80

