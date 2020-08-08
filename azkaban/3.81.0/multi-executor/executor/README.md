# Azkaban-multi-executor  Docker 镜像

**日志**

- 1.0
  - 更换软件安装源为国内阿里云镜像源
  - 修改时区为Asia/Shanghai
  - alpine v3.10
  
**安装模块**

- openjdk8
- azkaban-exec-server-3.81.0

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

在运行容器前需要设置mysql及创建表，具体操作步骤可查看[官方文档][1]

```
docker run -it -v azkaban.properties:/usr/local/azkaban/conf/azkaban.properties  ponycool/azkaban-multi-executor-3.81.0:1.0
```
容器运行后，需要在容器内运行命令激活executor
```
curl -G "localhost:$(<./executor.port)/executor?action=activate" && echo
```

executor端需要web端配合使用，不能单独使用。executor端口默认是由程序生成，如果需要指定端口请在azkaban.properties文件中指定，例如：executor.port=12321


**Links**

Blog: https://www.mayanpeng.cn

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool


[1]: https://azkaban.readthedocs.io/en/latest/getStarted.html#getting-started-with-the-multi-executor-server