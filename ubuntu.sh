#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

if [ $1 ]; then
  ep=${ep-$1}
  shift
else
  ti=${ti-bash}
fi
t9t=

docker_run ubuntu "$@"
