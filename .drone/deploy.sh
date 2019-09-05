#!/bin/bash
set -e
if [ "$(docker ps -aq -f status=exited -f name=nazmul_node_micro)" ]; then
        # cleanup
        docker rm -f nazmul_node_micro
fi
docker rmi nazmulb/node-microservice
docker pull nazmulb/node-microservice
docker run --rm -d -p 7777:3000 --name nazmul_node_micro nazmulb/node-microservice

