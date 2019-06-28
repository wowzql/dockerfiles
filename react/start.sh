#!/bin/sh
app="/var/webroot/app"
if [ ! -d "$app" ]; then
	mkdir "$app"
fi
cd "$app"
darkhttpd "$app" --port 8080