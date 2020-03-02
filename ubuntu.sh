#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

exec_or_dryrun \
  $(ti= docker_run) \
  $(docker_workdir) \
  $(docker_image ubuntu) \
  "$@"
