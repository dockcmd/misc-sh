#!/bin/sh
. shmod
import dockcmd/sh@v0.0.4 docker.sh

e=${e-^CLOUDSDK_}
t9t=
ep=${ep-docker-credential-gcloud}

docker_run gcr.io/google.com/cloudsdktool/cloud-sdk "$@"
