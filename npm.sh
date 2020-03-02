#!/bin/sh
. shmod

include github.com/dockcmd/shmod util.sh

exec_or_dryrun \
  $(docker_run) \
  --volume ${HOME}:/root \
  --entrypoint npm \
  $(docker_workdir) \
  $(docker_image node) \
  "$@"
