#!/bin/sh
# shellcheck disable=SC1091,SC2034
. shmod
import github.com/dockcmd/sh@v0.0.5 docker.sh

if [ "$1" ]; then
  ep="${ep-$1}"
  shift
else
  ti="${ti-sh}"
fi
t9t="$t9t"

docker_run busybox "$@"
