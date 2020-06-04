FROM nginx:1.19.0-alpine
LABEL maintainer="NGINX DOCKER MAINTAINER <pony@ponycool.com>"

ENV TIMEZONE=Asia/Shanghai
ENV VHOST_PATH=/etc/nginx/vhost

# 换为国内阿里云镜像，以加速docker image的制作速度，非中国境内用户请注释掉下面一条
RUN echo 'https://mirrors.aliyun.com/alpine/v3.11/main' > /etc/apk/repositories \
    && echo '@community https://mirrors.aliyun.com/alpine/v3.11/community' >> /etc/apk/repositories \
    && echo '@testing https://mirrors.aliyun.com/alpine/edge/testing' >> /etc/apk/repositories \
    && apk update && apk upgrade \
    # 设置时区
    && apk add tzdata \
    && ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && echo ${TIMEZONE} > /etc/timezone \
    # 新建虚拟目录，用于存放虚拟目录映射配置
    && mkdir -p ${VHOST_PATH} \
    # 数据存放目录
    && mkdir -p /var/webroot \
    && mkdir -p /usr/share/nginx/html \
    && echo '<h1> Hello PonyCool </h1>' > /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf ${VHOST_PATH}/default.conf

WORKDIR ${VHOST_PATH}

# 端口配置
EXPOSE 80

# 指定镜像的默认入口
CMD ["nginx", "-g", "daemon off;"]