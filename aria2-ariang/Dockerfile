FROM ponycool/alpine-3.9
LABEL maintainer="ARIA2 DOCKER MAINTAINER <pony@ponycool.com>"


RUN apk update && \
    apk add --no-cache --update bash && \
    # 项目目录
    ariaDir="/var/aria2" && \
    # 配置文件目录
    confDir="$ariaDir/conf" && \
    # 下载目录
    downloadDir="$ariaDir/downloads" && \
    mkdir -p $ariaDir && \
    mkdir -p $confDir && \
    mkdir -p $downloadDir && \
    mkdir -p $ariaDir/ariang && \
    mkdir -p $ariaDir/session && \
    # 会话文件
    touch $ariaDir/session/aria2.session && \
    apk add --no-cache --update aria2 && \
    apk add --no-cache git zip && \
    cd $ariaDir && \
    # 安装AriaNg
    wget https://github.com/mayswind/AriaNg/releases/download/1.0.1/AriaNg-1.0.1.zip && \
    unzip -d $ariaDir/ariang AriaNg-1.0.1.zip && \
    rm -rf $ariaDir/AriaNg-1.0.1.zip && \
    apk del git zip && \
    apk add --update darkhttpd

COPY conf/aria2.conf /var/aria2/conf/aria2.conf
COPY on-complete.sh /var/aria2/on-complete.sh
COPY start.sh /var/aria2/start.sh

RUN chmod +x /var/aria2/start.sh && \
    chmod +x /var/aria2/on-complete.sh

WORKDIR /var/aria2

VOLUME [ "/var/aria2/conf" ]
VOLUME [ "/var/aria2/downloads" ]

EXPOSE 80
EXPOSE 6800


CMD [ "/var/aria2/start.sh" ]