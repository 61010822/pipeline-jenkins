#!/bin/bash

echo "**********************"
echo "**** Building Jar *****"
echo "**********************"

WORKSPACE=/home/jenkins/workspace/pipeline-docker-maven
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2 -w /app maven:3.8.6-eclipse-temurin-11-alpine "$@" 
