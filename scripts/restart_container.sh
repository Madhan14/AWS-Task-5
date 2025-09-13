#!/bin/bash
set -e

# Stop old container if running
docker stop simple-docker || true
docker rm simple-docker || true

# Pull latest image
docker pull 333650976464.dkr.ecr.ap-south-1.amazonaws.com/simple-docker-service:latest

# Run new container on port 8899
docker run -d -p 8899:80 --name simple-docker 333650976464.dkr.ecr.ap-south-1.amazonaws.com/simple-docker-service:latest
