#!/usr/bin/env bash

set -e

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
TAG=braxnu/uda-kube

# Step 2
# Run the Docker Hub container with kubernetes

kubectl create deployment my-dep --image=$TAG

# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host

