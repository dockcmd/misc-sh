#!/bin/sh


exec_or_dryrun \
  `docker_run` \
  --mount type=bind,source=$HOME/.kube,target=/root/.kube,consistency=delegated \
  `docker_workdir` \
  `docker_image kustomize` \
  "$@"
