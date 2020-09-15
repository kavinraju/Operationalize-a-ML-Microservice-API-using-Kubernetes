#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="kavinraju98/boston_housing_prediction_container:latest"

# Step 2
# Run the Docker Hub container with kubernetes
# Run boston_housing_prediction_container pod and expose to PORT 80
kubectl run microservice --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# Listen on port 8000 locally, forwarding to 80 in the pod (boston_housing_prediction_microservice)
kubectl port-forward microservice 8000:80
