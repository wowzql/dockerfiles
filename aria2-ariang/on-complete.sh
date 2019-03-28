#!/bin/sh
# 当下载完后aria2会给脚本传3个参数 $1 $2 $3分别为gid、文件数量、文件路径
echo [$(date)] $2, $3, $1 >> /var/aria2/download.log