#!/bin/sh
# shellcheck disable=SC1091,SC2154
. shmod
import github.com/dockcmd/sh@v0.0.4 docker.sh

if [ "$1" ]; then
  ep="${ep-$1}"
  shift
else
  ti="${ti-ash}"
fi
t9t="$t9t"

docker_run alpine "$@"
