#!/usr/bin/env sh

if [ "$INPUT_REPO_NAME" == "Dockerhub" ]; then
    echo "Login to Dockerhub"
    echo "${DOCKER_REPO_PASSWORD}" | docker login -u "${DOCKERHUB_USERNAME}" --password-stdin
else
    echo "Login to $INPUT_REPO_NAME"
    echo "${DOCKER_REPO_PASSWORD}" | docker login "$INPUT_REPO_NAME" -u "${DOCKER_REPO_USERNAME}" --password-stdin
fi