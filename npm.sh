#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

ep=${ep-npm}

exec_or_dryrun \
  $(docker_run) \
  $(docker_publish) \
  --volume ${HOME}:/root \
  $(docker_workdir) \
  $(docker_image node 10.12.0-alpine) \
  "$@"
