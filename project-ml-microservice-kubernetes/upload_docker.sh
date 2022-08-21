#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="798426491631.dkr.ecr.ap-southeast-1.amazonaws.com/udacity-project-4:latest"

# Step 2:  
# Authenticate & tag
aws ecr get-login-password --region ap-southeast-1 | docker.exe login --username AWS --password-stdin 798426491631.dkr.ecr.ap-southeast-1.amazonaws.com
docker.exe tag phuongtd-app:latest $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker.exe push $dockerpath
