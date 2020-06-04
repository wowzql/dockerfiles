FROM node:12.18.0-alpine3.11
LABEL maintainer="NODE DOCKER MAINTAINER <pony@ponycool.com>"

# npm全局依赖
ENV TIMEZONE=Asia/Shanghai
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# 换为国内阿里云镜像，以加速docker image的制作速度，非中国境内用户请注释掉下面一条
RUN echo 'https://mirrors.aliyun.com/alpine/v3.11/main' > /etc/apk/repositories \
    && echo '@community https://mirrors.aliyun.com/alpine/v3.11/community' >> /etc/apk/repositories \
    && echo '@testing https://mirrors.aliyun.com/alpine/edge/testing' >> /etc/apk/repositories \
    && apk update && apk upgrade \
    # 设置时区
    && apk add tzdata \
    && ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && echo ${TIMEZONE} > /etc/timezone \
    && apk add --no-cache bash \
    git \
    darkhttpd \
    && rm -rf /var/cache/apk/* \
    # 设置环境变量
    && echo "export PATH=${PATH}" >> /etc/profile \
    && source /etc/profile \
    # 安装CNPM
    && npm install -g cnpm --registry=https://registry.npm.taobao.org \
    && cnpm i yarn tyarn -g \
    && cnpm install -g typescript \
    && cnpm install -g less \
    && mkdir -p /var/webroot/app \
    && mkdir /var/darkhttpd

COPY run.sh /var/darkhttpd/run.sh

# 创建工作目录
WORKDIR /var/webroot/app

EXPOSE 8080

CMD [ "/var/darkhttpd/run.sh" ]