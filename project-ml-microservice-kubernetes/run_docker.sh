#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker.exe build --tag phuongtd-app:latest .

# Step 2: 
# List docker images
docker.exe images

# Step 3: 
# Run flask app
docker.exe run -it -p 8000:80 phuongtd-app:latest