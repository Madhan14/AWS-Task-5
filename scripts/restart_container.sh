#!/bin/bash
docker stop simple-docker-service || true
docker rm simple-docker-service || true
docker run -d -p 80:80 --name simple-docker-service 333650976464.dkr.ecr.ap-south-1.amazonaws.com/simple-docker-service:latest
