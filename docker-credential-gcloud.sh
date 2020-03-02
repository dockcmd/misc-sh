#!/bin/bash

. util.sh
. docker_util.sh

ep=${ep-docker-credential-gcloud}

# gcloud call via docker
exec_or_dryrun \
  `ti= docker_run` \
  --env-file <(env|grep ^CLOUDSDK_) \
  --mount type=bind,source=$HOME/.kube,target=/root/.kube,consistency=delegated \
  --mount type=bind,source=$HOME/.config,target=/root/.config,consistency=delegated \
  --mount type=bind,source=$HOME/.docker,target=/root/.docker,consistency=delegated \
  `docker_workdir` \
  `docker_image gcr.io/cloud-builders/gcloud` \
  "$@"