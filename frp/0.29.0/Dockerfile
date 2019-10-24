FROM ponycool/alpine-3.10:1.0
LABEL maintainer="FRP DOCKER MAINTAINER <pony@ponycool.com>"

ENV FRP_VERSION=0.29.0
ENV FRP_TYPE=server

RUN apk update && \
    apk add --no-cache --update bash && \
    apk add --no-cache --update tar && \
    cd /usr/local && \
    wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
    tar xzvf frp_${FRP_VERSION}_linux_amd64.tar.gz  && \
    mv frp_${FRP_VERSION}_linux_amd64 frp && \
    rm -rf ./frp_${FRP_VERSION}_linux_amd64.tar.gz

COPY start.sh /usr/local/frp/start.sh

RUN chmod +x /usr/local/frp/start.sh

WORKDIR /usr/local/frp

VOLUME [ "/usr/local/frp" ]

EXPOSE 80
EXPOSE 7000

CMD [ "/usr/local/frp/start.sh" ]