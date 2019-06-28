##  React开发环境镜像



**使用**

将WORKDIR替换为工作目录

运行以下命令

```
docker run -d \
--name react \
-p 8080:8080 \
-v /WORKDIR:/var/webroot/app
ponycool/react:1.0
```

**组件**

- NodeJS 10.16.0
- YARN 1.16.0
- typescript
- cnpm
- git


**访问**

http://IP:PORT

**构建**

```
./build.sh
```

**Links**

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool