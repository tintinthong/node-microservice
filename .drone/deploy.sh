#!/bin/bash
set -e
if [ "$(docker ps -aq -f name=nazmul_node_micro)" ]; then
        # cleanup
        docker rm nazmul_node_micro
fi
 
#docker rm -f nazmul_node_micro
docker rmi -f nazmulb/node-microservice
docker pull nazmulb/node-microservice
docker run --rm -d -p 7777:3000 --name nazmul_node_micro nazmulb/node-microservice

