##  Node开发环境镜像



**使用**

将WORKDIR替换为工作目录

运行以下命令

```
docker run -d \
--name node-dev \
-p 8080:8080 \
-v /WORKDIR:/var/webroot/app
ponycool/node-dev:1.0
```

**组件**

- NodeJS 10.16.0
- YARN 1.16.0
- typescript
- cnpm
- git
- tyarn
- less
- umi



**访问**

http://IP:PORT

**构建**

```
./build.sh
```

**日志**
- 3.0
    - 安装vue-cli
- 2.0
    - yarn 替换为淘宝源
    - 安装less
    - 安装umi

**Links**

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool