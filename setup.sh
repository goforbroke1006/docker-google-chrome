#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

IMAGE_NAME=docker.io/goforbroke1006/google-chrome
IMAGE_TAG=stretch-slim

docker build --file=${DIR}/Dockerfile \
    --cache-from=${IMAGE_NAME}:${IMAGE_TAG} \
    -t ${IMAGE_NAME}:${IMAGE_TAG} .
docker login
docker push ${IMAGE_NAME}:${IMAGE_TAG}
