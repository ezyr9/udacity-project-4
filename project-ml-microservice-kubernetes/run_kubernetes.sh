#!/bin/bash
PORT=8000
# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="798426491631.dkr.ecr.ap-southeast-1.amazonaws.com/udacity-project-4:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f k8s.yml

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
# kubectl port-forward pod/app $PORT
kubectl port-forward pod/phuongtd-app 8000:80