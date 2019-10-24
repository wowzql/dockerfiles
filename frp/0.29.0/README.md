# FRP 0.29.0 Docker 镜像

**日志**

- 1.0
  - 更换软件安装源为国内阿里云镜像源
  - 修改时区为Asia/Shanghai
  - FRP版本V0.29.0

**构建**

```
./build.sh
```

**使用**

FRP_TYPE: frp的启动类型

*选项*
 - server 服务端
 - client 客户端

CONF: 配置文件，服务端配置文件名为frps.ini,客户端配置文件名为frpc.ini

```
docker run -it -e FRP_TYPE=server -v CONF:/usr/local/frp/frpc.ini ponycool/frp-0.29.0:1.0
```

**Links**

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool