#!/bin/bash

# Use to clean and rebuild a docker-compose environment from scratch.
echo "STEP: docker-compose stop"
docker-compose stop
echo "STEP: docker-compose rm ..."
docker-compose rm -f 
echo "STEP: docker-compose pull"
docker-compose pull
echo "STEP: docker-compose build ..."
docker-compose build --no-cache
echo "STEP: docker-compose up ..."
docker-compose up -d --force-recreate --remove-orphans