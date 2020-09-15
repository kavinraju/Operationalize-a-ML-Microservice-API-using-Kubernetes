#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
# If you have not creates repo with the name "boston_housing_prediction_container", create one before running upload_docker.sh
export dockerpath="kavinraju98/boston_housing_prediction_container"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username kavinraju98
# docker tag source_image target_image
docker tag boston_housing_prediction_container $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath