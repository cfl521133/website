#!/bin/sh
key_path="/etc/ky-edu/ssl/nginx/"

if [ -r "${key_path}512ks.crt" ]; then
	echo "Find ${key_path}512ks.crt"
else
	echo "ERROR:${key_path}512ks.crt not find"
	exit 1
fi

if [ -r "${key_path}512ks.key" ]; then
	echo "Find ${key_path}512ks.key"
else
	echo "ERROR:${key_path}512ks.key not find"
	exit 1
fi

echo "Start Nginx"
nginx -g "daemon off;"
