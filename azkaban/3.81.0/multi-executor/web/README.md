# Azkaban-multi-web  Docker 镜像

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
docker run -it -v azkaban.properties:/usr/local/azkaban/conf/azkaban.properties -p 8081:8081  ponycool/azkaban-web-3.81.0:1.0
```
web端需要executor端配合使用，不能单独使用。web端口默认为8081，默认用户名和密码为azkaban，web需要在executor端启动后才能启动。

**Links**

Blog: https://www.mayanpeng.cn

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool