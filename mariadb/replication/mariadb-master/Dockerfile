FROM mariadb:10.4
LABEL maintainer "MARIADB DOCKER MAINTAINER <pony@ponycool.com>"

RUN usermod -u 1000 mysql && \
    groupmod -g 1000 mysql && \
    #设置时区
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 3306

CMD [ "mysqld" ]