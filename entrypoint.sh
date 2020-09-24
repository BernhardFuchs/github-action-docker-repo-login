#!/usr/bin/env sh

if [ "$INPUT_REPO_NAME" == "Dockerhub" ]; then
    docker login -u "${DOCKERHUB_USERNAME}" -p "${DOCKERHUB_PASSWORD}"
else
    docker login "$INPUT_REPO_NAME" -u "${DOCKER_REPO_USERNAME}" -p "${DOCKER_REPO_PASSWORD}"
fi