#!/bin/sh
. docker_util.sh

exec_or_dryrun \
  `docker_run` \
  --env AWS_ACCESS_KEY_ID \
  --env AWS_DEFAULT_REGION \
  --env AWS_SHARED_CREDENTIALS_FILE \
  --env AWS_SECRET_ACCESS_KEY \
  --env AWS_SECURITY_TOKEN \
  --env AWS_SESSION_TOKEN \
  --env AWS_REGION \
  --mount type=bind,source=$HOME/.aws,target=/root/.aws,consistency=delegated \
  --mount type=bind,source=$HOME/.kube,target=/root/.kube,consistency=delegated \
  --mount type=bind,source=$PWD,target=/wd,consistency=delegated \
  --workdir /wd \
  `docker_image eksctl` \
  "$@"
