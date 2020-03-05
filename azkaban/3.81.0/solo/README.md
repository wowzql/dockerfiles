# Azkaban-solo  Docker 镜像

**日志**

- 1.0
  - 更换软件安装源为国内阿里云镜像源
  - 修改时区为Asia/Shanghai
  - alpine v3.10
  
**安装模块**

- openjdk8
- azkaban-solo-server-3.81.0

**工作目录**

`/usr/local/azkaban`

**配置目录**
/usr/local/azkaban/conf
配置文件列表：
- azkaban-users.xml
- azkaban.properties
- global.properties

**构建**

```
./build.sh
```

**使用**

```
docker run -it --rm --name scrapy -v SPIDER_DIR:/usr/src/app  ponycool/scrapy:1.0
```

**Links**

Blog: https://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool