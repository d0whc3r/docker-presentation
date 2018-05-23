#!/bin/bash
docker build -t friendlyhello .
docker image ls | grep -i friendlyhello
docker run -d -p 4000:80 friendlyhello
echo "go to: http://192.168.99.100:4000/"
curl http://192.168.99.100:4000