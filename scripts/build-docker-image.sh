#!/bin/bash

DOCKER_IMAGE_NAME="vulnerable-nodejs-app"
DOCKER_IMAGE_TAG="latest"

docker build \
    --rm \
    --no-cache \
    -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} \
    .
