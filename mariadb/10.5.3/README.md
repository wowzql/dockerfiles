##  MariaDB镜像

### 说明
配置文件路径：/etc/mysql/mariadb.conf.d

环境变量
- MYSQL_ROOT_PASSWORD

### 运行

``` 
docker run -d \
--name mariadb \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=my-secret-pw \
ponycool/mariadb-10.5.3
```

### 构建

``` 
./build.sh
```

或者

``` 
make docker
```

### 日志

* 1.0
    - 设置时区为Asia/Shanghai



### Links

Blog: https://www.mayanpeng.cn

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool

DockerHub：https://hub.docker.com/u/ponycool
