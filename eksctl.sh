#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

run \
  $(docker_run) \
  --env-file <(env|grep ^AWS_) \
  $(docker_home_workdir) \
  $(docker_image eksctl) \
  "$@"
