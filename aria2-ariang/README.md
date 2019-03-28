##  基于alpine的Aria2+AriaNg镜像

- 开放端口：
  1. TCP: 6800 Aria2 RPC 链接端口
  2. TCP: 80 AriaNg WEB访问端口
- 开发目录：
  1. /var/aria2/downloads 下载路径
  2. /var/aria2/conf 用于存放aria2配置文件



**安装**

将/ DOWNLOAD_DIR替换为下载目录，将/ CONFIG_DIR替换为配置文件目录，将YOUR_SECRET_CODE替换你的秘钥。 

运行以下命令

```
docker run -d \
--name aria2-ariang \
-p 6800:6800 \
-p 80:80 \
-v /DOWNLOAD_DIR:/var/aria2/downloads \
-v /CONFIG_DIR:/var/aria2/conf \
-e SECRET=YOUR_SECRET_CODE \
ponycool/aria2-ariang:1.0
```

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

Dockerfile: https://github.com/PonyCool/dockerfiles/tree/master/aria2-ariang