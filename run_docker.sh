#!/usr/bin/env bash

set -e

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag

docker build -t braxnu/uda-kube .

# Step 2:
# List docker images

docker images

# Step 3:
# Run flask app

docker run --rm -d -p 0.0.0.0:8080:80 --name py_app braxnu/uda-kube
