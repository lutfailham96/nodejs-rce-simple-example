#!/bin/bash

DOCKER_IMAGE_NAME="vulnerable-nodejs-app"
DOCKER_IMAGE_TAG="latest"

CONTAINER_NAME="vulnerable-nodejs-app"

docker run \
    --rm \
    -it \
    --net=host \
    --name ${CONTAINER_NAME} \
    -p 9000:9000 \
    ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}
