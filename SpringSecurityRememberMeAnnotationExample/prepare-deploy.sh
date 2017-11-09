#!/bin/bash  
echo "------------------- [BEGIN] Clean old Docker Container ---------------------"
docker-container-name="$1"
docker stop $docker-container-name > /dev/null
docker rm $docker-container-name > /dev/null
echo "------------------- [END] Clean old Docker Container ---------------------"
return 0