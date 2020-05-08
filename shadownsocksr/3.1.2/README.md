##  SHADOWSOCKSR 3.1.2 镜像

- 开放端口：
  1. TCP: 22 SSH用于远程管理
  2. TCP: 528 SSR服务端口
- 参数：
  1. SERVER_PORT 服务端口
  2. PASSWORD 密码
  3. METHOD 加密方式
  4. PROTOCOL 协议
  5. OBFS 混淆




### 运行

```
docker run -d \
--name ssr \
-p 30000:528 \
-e PASSWORD=pwd \
-e METHOD=aes-256-cfb \
-e PROTOCOL=origin \
-e OBFS=plain \
ponycool/shadowsocksr-3.1.2:1.0 
```

### 构建

```
./build.sh
```

### Links

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool

DockerHub：https://hub.docker.com/u/ponycool