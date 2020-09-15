#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=boston_housing_prediction_container .

# Step 2: 
# List docker images
docker images ls

# Step 3: 
# Run flask app
docker run -it --name boston_housing_prediction_container -p 8000:80 boston_housing_prediction_container bash