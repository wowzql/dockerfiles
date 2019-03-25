FROM alpine:3.9
LABEL maintainer="ALPINE DOCKER MAINTAINER <pony@ponycool.com>"

#换为国内阿里云镜像，以加速docker image的制作速度，非中国境内用户请注释掉下面一条
RUN echo 'https://mirrors.aliyun.com/alpine/v3.9/main' > /etc/apk/repositories \
    && echo '@community https://mirrors.aliyun.com/alpine/v3.9/community' >> /etc/apk/repositories \
    && echo '@testing https://mirrors.aliyun.com/alpine/edge/testing' >> /etc/apk/repositories \
    && apk update && apk upgrade

#设置时区
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata \
    && ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
    && echo ${TIMEZONE} > /etc/timezone

CMD [ "sh" ]