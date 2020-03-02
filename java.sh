#!/bin/sh

exec_or_dryrun \
  `docker_run` \
  --volume ${HOME}:/root \
  --mount type=bind,source=$PWD,target=/wd,consistency=delegated \
  --entrypoint java \
  --workdir /wd \
  `docker_image amazoncorretto` \
  "$@"
