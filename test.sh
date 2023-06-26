#!/bin/sh

docker container run --rm --entrypoint '' ${IMAGE_NAME:-jugggao/alpine-chrome} cat /etc/alpine-release
docker container run --rm --entrypoint '' ${IMAGE_NAME:-jugggao/alpine-chrome} chromium-browser --version