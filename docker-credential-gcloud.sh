#!/bin/bash
. shmod
import dockcmd/sh@v0.0.3 docker.sh

shmod_exec \
  $(ti= ep=${ep-docker-credential-gcloud} docker_run) \
  --env-file <(env|grep ^CLOUDSDK_) \
  $(docker_home_workdir) \
  $(docker_image gcr.io/cloud-builders/gcloud) \
  "$@"