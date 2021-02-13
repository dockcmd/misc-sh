#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

run \
  $(ep=${ep-npm} docker_run) \
  $(docker_home_workdir) \
  $(docker_image node) \
  "$@"
