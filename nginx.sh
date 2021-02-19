#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

ep=${ep-nginx}
p=${p-8080:80}
v=${v-$PWD:/usr/share/nginx/html:delegated}

docker_run nginx -g "daemon off;" "$@"
