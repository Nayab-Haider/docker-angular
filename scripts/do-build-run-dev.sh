#!/bin/bash

echo "Building docker images"

docker build -t do-nginx:latest -f nginx/Dockerfile .
docker build -t do-proh2r:latest -f proh2r/Dockerfile .
docker build -t do-proh2radmin:latest -f proh2radmin/Dockerfile .

echo "Building successfull"

docker-compose -f docker-compose_dev.yml up