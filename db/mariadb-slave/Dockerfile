FROM mariadb
LABEL maintainer "MARIADB DOCKER MAINTAINER <pony@ponycool.com>"

COPY set_master.sql /docker-entrypoint-initdb.d/set_master.sql

RUN touch /etc/mysql/mariadb.conf.d/mysqld.cnf && \ 
    RAND="$(date +%s | rev | cut -c 1-2)$(echo ${RANDOM})" && \
    { \
      echo '[mysqld]'; \
      echo 'server-id ='$RAND; \
      echo 'character_set_server   = utf8'; \
      echo 'read_only = on'; \
      echo 'relay_log = relay-bin'; \
      echo 'relay_log_index = relay-bin.index'; \
      echo 'replicate_ignore_db = mysql'; \
      echo 'replicate_ignore_db = information_schema'; \
      echo 'replicate_ignore_db = performance_schema'; \
    } | tee -a /etc/mysql/mariadb.conf.d/mysqld.cnf &&\
    #设置时区
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 3306

CMD [ "mysqld" ]