# JDK8  Docker 镜像

**日志**

- 1.0
  - 更换软件安装源为国内阿里云镜像源
  - 修改时区为Asia/Shanghai
  - alpine v3.10

**工作目录**

`/usr/local`


**构建**

```
./build.sh
```

**使用**

```
docker run -it --name jdk8 ponycool/jdk8:1.0
```

**Links**

Blog: https://www.mayanpeng.cn

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool