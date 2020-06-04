#!/bin/sh
app_path="/var/webroot/app"
if [ ! -d "${app_path}" ]; then
	mkdir "${app_path}"
fi
cd "${app_path}"
darkhttpd "${app_path}" --port 8080
