FROM ponycool/node-10.16.0:1.0
LABEL maintainer="React DOCKER MAINTAINER <pony@ponycool.com>"

# npm全局依赖
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN apk update \
    && apk add --no-cache bash \
    git \
    darkhttpd \
    && rm -rf /var/cache/apk/* \
    # 设置环境变量
    && echo "export PATH=${PATH}" >> /etc/profile \
    && source /etc/profile \
    # 安装CNPM
    && npm install -g cnpm --registry=https://registry.npm.taobao.org \
    && cnpm install -g typescript \
    && mkdir -p /var/webroot/app \
    && mkdir /var/darkhttpd

COPY start.sh /var/darkhttpd/start.sh

# 创建工作目录
WORKDIR /var/webroot/app

EXPOSE 8080

CMD [ "/var/darkhttpd/start.sh" ]