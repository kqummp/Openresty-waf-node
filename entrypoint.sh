#!/bin/sh

if [ ! -z "$BACKEND_CONTAINER" ]; then
    sed -i "80d" /usr/local/openresty/nginx/conf/nginx.conf;
    sed -i "79a\ \t\t    http://$BACKEND_CONTAINER:8080;" /usr/local/openresty/nginx/conf/nginx.conf;
fi

exec /usr/local/openresty/nginx/sbin/nginx -g "daemon off;"
