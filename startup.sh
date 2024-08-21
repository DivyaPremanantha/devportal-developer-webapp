#!/bin/bash
docker stop devportal
docker rm devportal
docker rmi devportal:v1
docker build  --no-cache -t devportal:v1 .
docker run --name devportal -v config.js:/node_modules/devportal-webapp -d  -p 8080:8080 -p 9090:9090 -p 3000:3000  devportal:v1


