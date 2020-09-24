#!/usr/bin/env sh

if [ "$INPUT_REPO_NAME" == "Dockerhub" ]; then
    docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
else
    docker login "$INPUT_REPO_NAME" -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
fi