##  ETCD 3.4.5 镜像

- 开放端口：
  1. TCP: 2379 客户端访问端口
  2. TCP: 2380 集群同步端口
- 目录：
  1. /var/etcd 数据目录




### 安装

将/DATA_DIR替换为数据保存目录，ETCDCTL_API设置命令工具版本，默认为V2

单节点运行以下命令

```
docker run -d \
--name etcd \
-p 2379:2379 \
-p 2380:2380 \
-v /DATA_DIR:/var/etcd \
-e ETCDCTL_API=3 \
ponycool/etcd-3.4.5:1.0 \
sh -c "/usr/local/bin/etcd -name etcd0 -data-dir /var/etcd"
```

### 构建

```
./build.sh
```

### Links

Blog: http://blog.ponycool.com

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool
