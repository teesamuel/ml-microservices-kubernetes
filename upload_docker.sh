#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=teesamuel/devops-api:v1.0.0

# Step 2:  
# Authenticate & tag
docker login
docker tag devops-api teesamuel/devops-api:v1.0.0
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push teesamuel/devops-api:v1.0.0
