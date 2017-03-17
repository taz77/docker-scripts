#!/bin/bash

# Remove exited containers
docker rm -v $(docker ps -a -q -f status=exited)
# Remove dangling images
docker rmi $(docker images -f "dangling=true" -q)
# This will remove shut down containers
docker volume rm $(docker volume ls -qf dangling=true)