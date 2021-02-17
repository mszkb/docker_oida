#!/bin/sh
# set -eu
set -xeu : "${VUE_APP_SERVER?Need an environment variable called URL}"
envsubst '${VUE_APP_SERVER}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"

# This thing does not work with environment variables
# exec "$@"
