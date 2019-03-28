#!/bin/sh
if [ $SECRET ]; then
	echo -e "\nrpc-secret=${SECRET}" >> /var/aria2/conf/aria2.conf
fi

darkhttpd /var/aria2/ariang --port 80 &

exec aria2c --conf-path=/var/aria2/conf/aria2.conf