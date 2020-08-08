##  Nginx镜像

### 说明

Web根目录：/var/webroot

### 运行

``` 
docker run -d \
--name nginx \
-p 80:80 \
ponycool/nginx-1.19.0
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
    - 替换阿里镜像源
    - 设置时区为Asia/Shanghai



### Links

Blog: https://www.mayanpeng.cn

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool

DockerHub：https://hub.docker.com/u/ponycool
