#!/bin/sh
#shellcheck disable=SC1091
. shmod
import github.com/dockcmd/sh@v0.0.5 docker.sh

ep="${ep-nginx}"
p="${p-8080:80}"
v="${v-$PWD:/usr/share/nginx/html:delegated}"

docker_run nginx -g 'daemon off;' "$@"
