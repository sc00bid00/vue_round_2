#!/bin/bash
if docker ps -aq; then docker rm -f $(docker ps -aq); fi

docker run --name vue -it -p 8080:8080 -v $(pwd)/simple_app:/simple_app/ vue bash
