#!/bin/sh
# shellcheck disable=SC1091,SC2034,SC2269
. shmod
import dockcmd/sh@v0.0.4 docker.sh

t9t="$t9t"

docker_run alpine/git "$@"
