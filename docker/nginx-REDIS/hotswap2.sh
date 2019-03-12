#!/usr/bin/env bash
set -e

sed -i'' "s/server .*:6379/server $1:6379/" /etc/nginx/nginx.conf
exec usr/sbin/nginx -s reload

exec "$@"
