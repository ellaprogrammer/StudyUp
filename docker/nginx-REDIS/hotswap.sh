#! /bin/bash
read PARAM

sed -i "s/\($REDIS_HOST *:*\).*/\1$PARAM/" /etc/nginx/nginx.conf

exec /usr/sbin/nginx -s reload

echo "done"
