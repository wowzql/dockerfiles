FROM ponycool/alpine-3.10:1.0
LABEL maintainer="ETCD-V3.4.5 DOCKER MAINTAINER <pony@ponycool.com>"

ENV ETCD_VER=3.4.5

RUN buildDeps=" \
    tar \
    wget \
    " \
    runtimeDeps=" \
        bash \
    " \
    && apk update && apk upgrade \
    && apk add --no-cache $buildDeps \
    && apk add $runtimeDeps \
    && mkdir -p /var/etcd/ \
    && mkdir -p /var/lib/etcd/ \
    && wget https://github.com/etcd-io/etcd/releases/download/v${ETCD_VER}/etcd-v${ETCD_VER}-linux-amd64.tar.gz \
    && tar -zxvf etcd-v${ETCD_VER}-linux-amd64.tar.gz \
    && mv etcd-v${ETCD_VER}-linux-amd64/etcd /usr/local/bin/ \
    && mv etcd-v${ETCD_VER}-linux-amd64/etcdctl /usr/local/bin/ \
    && rm -rf etcd-v${ETCD_VER}-linux-amd64.tar.gz \
    && rm -rf etcd-v${ETCD_VER}-linux-amd64 \
    && rm -rf /var/cache/apk/* 

# Alpine Linux doesn't use pam, which means that there is no /etc/nsswitch.conf,
# but Golang relies on /etc/nsswitch.conf to check the order of DNS resolving
# (see https://github.com/golang/go/commit/9dee7771f561cf6aee081c0af6658cc81fac3918)
# To fix this we just create /etc/nsswitch.conf and add the following line:
RUN echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf

EXPOSE 2379 2380

# Define default command.
CMD ["/usr/local/bin/etcd"]