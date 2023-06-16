#!/bin/bash

function build_n_push {
  docker buildx create --use
  
  docker buildx build . \
  --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 \
  --tag $1:$2 --tag $1:latest  \
  --build-arg VERSION=$1 \
  --push
}

build_n_push eldekyfin/webhttrack $1