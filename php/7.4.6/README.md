# PHP 7.4.6 Docker 镜像

### 说明

Web根目录：/var/webroot

### 运行

``` 
docker run -d \
--name php \
-p 80:80 \
ponycool/php-7.4.6
```

### 构建

``` 
./build.sh
```

或者

``` 
make docker
```

### 日志

* 20200605
  + 系统时区设置为Shanghai
  + 增加oniguruma
  + swoole
  + 开启gzip
  + 关闭Trace
  + 隐藏服务器Apache版本信息
  + 增加Composer
  + memcached 
  + redis
  + mcrypt-1.0.3
  + mongodb
  + imagick-3.4.4
  + mbstring
  + mysqli
  + pdo_mysql
  + pdo_pgsql
  + pgsql
  + soap
  + zip
  + bcmath
  + bz2
  + calendar
  + gd
  + ldap

### Links

Blog: https://www.mayanpeng.cn

Email: pony#ponycool.com(将#替换为@)

Git: https://github.com/PonyCool

DockerHub：https://hub.docker.com/u/ponycool
