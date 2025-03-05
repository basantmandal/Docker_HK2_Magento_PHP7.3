#!/usr/bin/env bash

image="basantmandal/hk2-php7.3-fpm"
version="2.2"

result=$(docker images -q ${image})
if [[ -n "$result" ]]; then
    echo "Image exists"
    sudo docker image rm -f ${result}
else
    docker build --no-cache -t ${image}:${version} . >> docker_build.log
    docker tag ${image}:${version} ${image}:${version}
fi
