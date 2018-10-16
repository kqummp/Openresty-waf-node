#!/bin/sh

if [ ! -z "$SERVER_NAME" ]; then
    sed -i "56d" /usr/local/openresty/nginx/conf/nginx.conf;
    sed -i "55a\ \t    server_name $SERVER_NAME;" /usr/local/openresty/nginx/conf/nginx.conf;
    sed -i "72d" /usr/local/openresty/nginx/conf/nginx.conf;
    sed -i "71a\ \t    server_name $SERVER_NAME;" /usr/local/openresty/nginx/conf/nginx.conf;
fi

exec /usr/local/openresty/nginx/sbin/nginx -g "daemon off;"
