#!/bin/bash

gcc -o server server.c -lfcgi
spawn-fcgi -p 8080 ./server
nginx -g 'daemon off;'