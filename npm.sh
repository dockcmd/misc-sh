#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

ep=${ep-npm}
p=${p-3000}
ti=
t9t=

docker_run node "$@"
