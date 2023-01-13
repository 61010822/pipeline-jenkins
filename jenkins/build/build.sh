#!/bin/bash

# Copy the new jar to the build location
cp -f java-app/target/*.jar jenkins/build/

echo "******************************"
echo "*** Building Docker Images ***"
echo "******************************"

curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

cd jenkins/build/ && ls && docker-compose -f docker-compose-build.yml build --no-cache
