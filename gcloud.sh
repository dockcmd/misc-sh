#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

# gcloud call via docker
exec_or_dryrun \
  $(docker_run) \
  --env-file <(env|grep ^CLOUDSDK_) \
  --mount type=bind,source=$HOME/.kube,target=/root/.kube,consistency=delegated \
  --mount type=bind,source=$HOME/.config,target=/root/.config,consistency=delegated \
  --mount type=bind,source=$HOME/.docker,target=/root/.docker,consistency=delegated \
  $(docker_workdir) \
  $(docker_image gcr.io/cloud-builders/gcloud) \
  "$@"