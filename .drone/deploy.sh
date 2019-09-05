#!/bin/bash
set -e

docker rm -f nazmul_node_micro
docker rmi nazmulb/node-microservice
docker pull nazmulb/node-microservice
# docker run --rm -p -d 7777:3000 --name nazmul_node_micro nazmulb/node-microservice

