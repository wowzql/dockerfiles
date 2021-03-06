FROM php:5.6-apache
LABEL maintainer="PHP5.6-APACHE DOCKER MAINTAINER <pony@ponycool.com>"

# 默认web根目录环境变量
ENV APACHE_DOCUMENT_ROOT /var/www
ENV TIMEZONE=Asia/Shanghai

# Install PHP extensions and PECL modules.
RUN buildDeps=" \
        default-libmysqlclient-dev \
        libbz2-dev \
        libmemcached-dev \
        libsasl2-dev \
        libmagickwand-dev \
        libmagickcore-dev \
        libicu-dev \
        g++ \
    " \
    runtimeDeps=" \
        curl \
        git \
        libfreetype6-dev \
        libicu-dev \
        libjpeg-dev \
        libldap2-dev \
        libmcrypt-dev \
        libmemcachedutil2 \
        libpng-dev \
        libpq-dev \
        libxml2-dev \
        libzip-dev \
        libmcrypt-dev \
        imagemagick \
        libssl-dev \
    " \
    && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y $buildDeps $runtimeDeps \
    && docker-php-ext-install bcmath bz2 calendar iconv intl mbstring mcrypt mysql mysqli opcache pdo_mysql pdo_pgsql pgsql soap zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ \
    && docker-php-ext-install ldap \
    && docker-php-ext-install exif \
    && docker-php-ext-install mcrypt \
    && pecl install mongodb \
    && pecl install imagick-3.4.3 \
    && pecl install memcached-2.2.0 redis \
    && docker-php-ext-enable memcached.so redis.so \
    && docker-php-ext-enable mcrypt \
    && docker-php-ext-enable mongodb \
    && docker-php-ext-enable imagick \
    && apt-get purge -y --auto-remove $buildDeps \
    && rm -r /var/lib/apt/lists/* \
    && a2enmod rewrite \
    # 设置系统时区
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    # 更改默认web根目录
    && mkdir -p ${APACHE_DOCUMENT_ROOT} \
    && sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
    && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf \
    # 拷贝配置文件php.ini
    && cp -p ${PHP_INI_DIR}/php.ini-production ${PHP_INI_DIR}/php.ini \
    && { \
        echo "upload_max_filesize = 25M"; \
        echo "post_max_size = 50M"; \ 
        echo "memory_limit = 256M"; \
    } >> ${PHP_INI_DIR}/php.ini \
    # 设置时区
    && sed -ri -e 's!^;date.timezone =!date.timezone = ${TIMEZONE}!g' ${PHP_INI_DIR}/php.ini \
    # 创建虚拟映射目录
    && mkdir ${APACHE_CONFDIR}/vhost \
    # 屏蔽默认虚拟映射配置
    && sed -ri -e 's!^IncludeOptional sites-enabled/\*.conf!# IncludeOptional sites-enabled/\*.conf!g' ${APACHE_CONFDIR}/apache2.conf \
    # 引入虚拟映射配置
    && { \
      echo '\n'; \
      echo '#include vhost config'; \
      echo 'IncludeOptional '${APACHE_CONFDIR}'/vhost/*.conf'; \
    } | tee -a ${APACHE_CONFDIR}/apache2.conf \
    # 开启gzip
    && { \
      echo '\n'; \
      echo '#gzip'; \
      echo '<IfModule deflate_module>'; \
      echo 'SetOutputFilter DEFLATE'; \
      echo 'SetEnvIfNoCase Request_URI .(?:gif|jpe?g|png)$ no-gzip dont-vary'; \
      echo 'SetEnvIfNoCase Request_URI .(?:exe|t?gz|zip|bz2|sit|rar)$ no-gizp dont-vary'; \
      echo 'SetEnvIfNoCase Request_URI .(?:pdf|mov|avi|mp3|mp4|rm)$ no-gzip dont-vary'; \
      echo 'AddOutputFilterByType DEFLATE text/*'; \
      echo 'AddOutputFilterByType DEFLATE application/ms* application/vnd* application/postscript application/javascript application/x-javascript'; \
      echo 'AddOutputFilterByType DEFLATE application/x-httpd-php application/x-httpd-fastphp'; \
      echo '</IfModule>'; \
    } | tee -a ${APACHE_CONFDIR}/apache2.conf \
    # 关闭Trace
    && { \
      echo '\n'; \
      echo '#close trace'; \
      echo 'TraceEnable off'; \
    } | tee -a ${APACHE_CONFDIR}/apache2.conf \
    # 隐藏服务器Apache版本信息
    && { \
      echo '\n'; \
      echo '#close apache signature info'; \
      echo 'ServerSignature Off'; \
      echo 'ServerTokens Prod'; \
    } | tee -a ${APACHE_CONFDIR}/apache2.conf 

# Install Composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && ln -s $(composer config --global home) /root/composer
ENV PATH=$PATH:/root/composer/vendor/bin COMPOSER_ALLOW_SUPERUSER=1

# 拷贝测试文件
COPY default.conf ${APACHE_CONFDIR}/vhost/
COPY info.php ${APACHE_DOCUMENT_ROOT}/html

# 设置工作目录
WORKDIR ${APACHE_DOCUMENT_ROOT}


EXPOSE 80
CMD ["apache2-foreground"]