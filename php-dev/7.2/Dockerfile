FROM ponycool/php-7.2:4.0
LABEL maintainer="PHP7.2-DEV DOCKER MAINTAINER <pony@ponycool.com>"

# Install XDebug
RUN pecl install xdebug \
    && echo "zend_extension=\"$(php-config --extension-dir)/xdebug.so\"" > $PHP_INI_DIR/conf.d/xdebug.ini