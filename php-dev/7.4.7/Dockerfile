FROM ponycool/php-7.4.7:latest
LABEL maintainer="PHP7.4.6-DEV DOCKER MAINTAINER <pony@ponycool.com>"

# Install XDebug
RUN pecl install xdebug \
    && echo "zend_extension=\"$(php-config --extension-dir)/xdebug.so\"" > $PHP_INI_DIR/conf.d/xdebug.ini