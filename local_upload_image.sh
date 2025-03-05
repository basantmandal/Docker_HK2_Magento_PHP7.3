#!/usr/bin/env bash

image="basantmandal/hk2-php7.3-fpm"
version="2.2"

result=$(docker images -q ${image})
if [[ -n "$result" ]]; then
    echo "Image Found - Push Image to Docker Hub"
    docker push ${image}:${version}
fi
