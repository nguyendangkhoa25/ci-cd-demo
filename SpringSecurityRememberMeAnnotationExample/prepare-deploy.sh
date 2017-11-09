#!/bin/bash  

#load /etc/profile
source /etc/environment

echo "------------------- [BEGIN] Clean old Docker Container ---------------------"
DOCKER_CONTAINER_ID="$1"

docker stop ${DOCKER_CONTAINER_ID} 2> /dev/null
docker rm ${DOCKER_CONTAINER_ID} 2> /dev/null

echo "------------------- [END] Clean old Docker Container ---------------------"
exit 0