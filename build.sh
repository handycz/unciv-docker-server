#!/bin/bash

TAG=$(curl -s https://api.github.com/repos/yairm210/Unciv/releases/latest | jq -r '.tag_name')
#TAG="4.5.17"
CONTAINER_NAME="containers.cerno.ch/handy/uniciv:$TAG"

echo "Building version $TAG as $CONTAINER_NAME"

docker build --progress=plain --no-cache --build-arg SERVER_VERSION="$TAG" . -t "$CONTAINER_NAME"
docker push "$CONTAINER_NAME"
