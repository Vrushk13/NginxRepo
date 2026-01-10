#!/bin/bash
cd /home/ubuntu/nginx
docker build -t nginx-app .
docker run -d -p 80:80 --name nginx nginx-app

