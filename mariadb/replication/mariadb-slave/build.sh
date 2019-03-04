#!/bin/bash

#清除tag为none的镜像
docker ps -a | grep "Exited" | awk '{print $1}' | xargs docker stop
docker ps -a | grep "Exited" | awk '{print $2}' | xargs docker rm 
docker images | grep none | awk '{print $3}' | xargs docker rmi

#清除已有的
docker stop mariadb-slave
docker rm mariadb-slave
docker rmi ponycool/mariadb-slave

docker rm $(docker ps -a -q)

#编译生成
docker build -t ponycool/mariadb-slave ./