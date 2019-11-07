FROM ponycool/alpine-3.10:1.0
LABEL maintainer="SCRAPY DOCKER MAINTAINER <pony@ponycool.com>"

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apk add --no-cache python3 \
        libxml2-dev \
		libxml2 \
		libxslt-dev \
		zlib-dev \
		libffi-dev \
    && apk add --no-cache --virtual .build-deps  \
        python3-dev \
    	gcc \
    	openssl-dev \
		openssl \
		libressl \
		libc-dev \
		linux-headers \
	&& pip3 install --default-timeout=100 --no-cache-dir --upgrade pip -r requirements.txt \
	&& apk del .build-deps

CMD [ "python3" ]