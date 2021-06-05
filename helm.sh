#!/bin/sh
# shellcheck disable=SC1091,SC2269
. shmod
import github.com/dockcmd/sh@v0.0.5 docker.sh

ti="$ti"
t9t="$t9t"

docker_run alpine/helm:3.5.4 "$@"
