FROM ponycool/php-5.6:4.0
LABEL maintainer="PHP5.6-DEV DOCKER MAINTAINER <pony@ponycool.com>"

# Install XDebug
RUN pecl install xdebug-2.5.5 \
    && echo "zend_extension=\"$(php-config --extension-dir)/xdebug.so\"" > $PHP_INI_DIR/conf.d/xdebug.ini