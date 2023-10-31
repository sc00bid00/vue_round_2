#!/bin/bash
if docker ps -aq; then docker rm -f $(docker ps -aq); fi
if docker image ls -aq; then docker image prune -af; fi

docker build -t vue .
docker run --name vue -it -p 8080:8080 -v $(pwd)/simple_app:/simple-app/ vue bash
