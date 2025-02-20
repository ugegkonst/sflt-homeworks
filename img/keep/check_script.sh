#!/bin/bash

IP=192.168.12.238 # ip адрес VM
PORT=80 # порт nginx
HTML_FILE=/var/www/html/index.nginx-debian.html # файл для проверки

nc -z -w2 "$IP" "$PORT"
PORT_STATUS=$?

if [[ -f $HTML_FILE && $PORT_STATUS -eq 0 ]]; then
    exit 0
else
    exit 1
fi
