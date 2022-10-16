#!/usr/bin/env bash

set -e

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
TAG=braxnu/uda-kube
DEPL_NAME=uda-py-depl

# Step 2
# Run the Docker Hub container with kubernetes

kubectl delete service $DEPL_NAME
kubectl delete deployment $DEPL_NAME

kubectl create deployment $DEPL_NAME --image=$TAG -r 4

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl expose deployment $DEPL_NAME --port=80

kubectl port-forward services/$DEPL_NAME 8080:80
