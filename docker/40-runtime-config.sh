#!/bin/sh
set -eu
: "${API_BASE_URL:?Set API_BASE_URL to the deployed backend URL ending in /api}"
envsubst '${API_BASE_URL}' \
  < /etc/traveltales/config.js.template \
  > /usr/share/nginx/html/config.js
