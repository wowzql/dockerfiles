##  Node镜像

**使用**

将WORKDIR替换为工作目录

运行以下命令

``` 
docker run -d \
--name node \
-p 8080:8080 \
-v /WORKDIR:/var/webroot/app
ponycool/node-12.18.0
```

**组件**

* NodeJS 12.18.0
* YARN
* typescript
* cnpm
* git
* tyarn
* less

**访问**

http://IP: PORT

**构建**

``` 
./build.sh
```
或者

```
make docker
```

**日志**

* 1.0
    - 替换阿里镜像源
    - 设置时区为Asia/Shanghai
    - yarn
    - 安装less
    - typescript

**Links**

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool

DockerHub：https://hub.docker.com/u/ponycool
