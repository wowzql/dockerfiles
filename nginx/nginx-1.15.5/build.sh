#!/bin/bash

#清除tag为none的镜像
docker ps -a | grep "Exited" | awk '{print $1}' | xargs docker stop
docker ps -a | grep "Exited" | awk '{print $2}' | xargs docker rm 
docker images | grep none | awk '{print $3}' | xargs docker rmi

#清除已有的
docker stop nginx-1.15.5
docker rm nginx-1.15.5
docker rmi ponycool/nginx-1.15.5

docker rm $(docker ps -a -q)

#重新生成
docker build -t ponycool/nginx-1.15.5 ./