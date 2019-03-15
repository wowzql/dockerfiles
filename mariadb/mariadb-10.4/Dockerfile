FROM mariadb:10.4
LABEL maintainer "MARIADB DOCKER MAINTAINER <pony@ponycool.com>"

# Copy 自定义配置文件
COPY conf/*.cnf /etc/mysql/mariadb.conf.d

# 设置时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#设置工作目录
WORKDIR /var/lib/mysql

EXPOSE 3306

CMD [ "mysqld" ]