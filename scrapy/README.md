# Scrapy  Docker 镜像

**日志**

- 1.0
  - 更换软件安装源为国内阿里云镜像源
  - 修改时区为Asia/Shanghai
  - alpine v3.10
  
**安装模块**

- pymysql
- pymongo
- redis
- scrapy-redis
- ipython
- scrapy
- requests

**工作目录**

`/usr/src/app`


**构建**

```
./build.sh
```

或者

```
make docker
```

**使用**

```
docker run -it --rm --name scrapy -v SPIDER_DIR:/usr/src/app  ponycool/scrapy:1.0
```

**Links**

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool

DockerHub：https://hub.docker.com/u/ponycool
