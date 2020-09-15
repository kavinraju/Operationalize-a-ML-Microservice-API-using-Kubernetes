[![CircleCi](https://circleci.com/gh/kavinraju/Operationalize-a-ML-Microservice-API-using-Kubernetes.svg?style=shield)](https://app.circleci.com/pipelines/github/kavinraju/Operationalize-a-ML-Microservice-API-using-Kubernetes)

## Project Overview

This project is to operationalize a Machine Learning Microservice API using the best practices of DevOps.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


### About the files in this project
* /.circleci/config.yml - Circleci configuration file for setting up Continous Integration
* /model_data - Model data for Boston Housing Price Prediction
* /output_txt_files - Log of Output 
* Dockerfile - Consists of commands to build docker image
* Makefile - Consists of commands to setup environment, install, lint
* app.py - Python Flask App to find-out predictions about Boston Housing prices through API calls
* make_prediction.sh - Sends request to the Flask App to find the Boston Housing Price Prediction
* requirements.txt - Consists of all the package names for installing during setup
* run_docker.sh - Consists of commands to build a docker container, list docker images, and run the build container by exposing its PORT 80 to the host's PORT 8000
* run_kubernetes.sh : Consists of commands to run the deployed docker image in a kubernetes Cluster
* upload_docker.sh : Consists of commands to deploy the docker image to docker hub

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
