#!/bin/sh

export NODE_VERSION=8.10.0
docker build --build-arg NODE_VERSION -t node-provided-lambda-v8.10.0 .
docker run --rm node-provided-lambda-v10.x cat /tmp/node-v${NODE_VERSION}.zip > ./layer.zip
